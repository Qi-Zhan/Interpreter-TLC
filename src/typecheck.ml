open Flags
open Core
open Result.Monad_infix
open Ast

exception Unimplemented

let rec typecheck_expr (ctx : Type.t String.Map.t) (e : Expr.t)
  : (Type.t, string) Result.t =
  match e with
  | Expr.Num _ -> Ok Type.Num
  | Expr.Binop {left; right; _} ->
    typecheck_expr ctx left >>= fun tau_left ->
    typecheck_expr ctx right >>= fun tau_right ->
    (match (tau_left, tau_right) with
     | (Type.Num, Type.Num) -> Ok Type.Num
     | _ -> Error (
       Printf.sprintf
         "Binary operands have incompatible types: (%s : %s) and (%s : %s)"
         (Expr.to_string left) (Type.to_string tau_left)
         (Expr.to_string right) (Type.to_string tau_right)))
  (* Add more cases here! *)
  | Expr.True -> Ok Type.Bool
  | Expr.False -> Ok Type.Bool
  | Expr.Unit -> Ok Type.Unit
  | Expr.Relop {left;right;_} ->(
    typecheck_expr ctx left >>= fun tau_left ->
    typecheck_expr ctx right >>= fun tau_right ->
    (match (tau_left, tau_right) with
     | (Type.Num, Type.Num) -> Ok Type.Bool
     | _ -> Error (
       Printf.sprintf
         "Relation operands have incompatible types: (%s : %s) and (%s : %s)"
         (Expr.to_string left) (Type.to_string tau_left)
         (Expr.to_string right) (Type.to_string tau_right)))    
  )
  | Expr.And {left;right}->
    typecheck_expr ctx left >>= fun tau_left ->
    typecheck_expr ctx right >>= fun tau_right ->
    (match (tau_left, tau_right) with
     | (Type.Bool, Type.Bool) -> Ok Type.Bool
     | _ -> Error (
       Printf.sprintf
         "And have incompatible types: (%s : %s) and (%s : %s)"
         (Expr.to_string left) (Type.to_string tau_left)
         (Expr.to_string right) (Type.to_string tau_right))) 
  | Expr.Or {left;right}->
    typecheck_expr ctx left >>= fun tau_left ->
    typecheck_expr ctx right >>= fun tau_right ->
    (match (tau_left, tau_right) with
     | (Type.Bool, Type.Bool) -> Ok Type.Bool
     | _ -> Error (
       Printf.sprintf
         "Or have incompatible types: (%s : %s) and (%s : %s)"
         (Expr.to_string left) (Type.to_string tau_left)
         (Expr.to_string right) (Type.to_string tau_right)))          
  | Expr.If {cond;then_;else_}->(
    typecheck_expr ctx cond >>= fun tau_cond ->
    typecheck_expr ctx then_ >>= fun tau_then_ ->
    typecheck_expr ctx else_ >>= fun tau_else_ ->
      match tau_cond with 
      | Type.Bool ->(
        if Ast_util.Type.aequiv tau_else_ tau_then_ then (Ok tau_else_)
        else Error (
          Printf.sprintf
            "If branch have incompatible types: (%s : %s) and (%s : %s)"
            (Expr.to_string then_) (Type.to_string tau_then_)
            (Expr.to_string else_) (Type.to_string tau_else_))
        )
      | _ -> Error (
          Printf.sprintf
            "If cond have incompatible types: (%s : %s)"
            (Expr.to_string cond) (Type.to_string tau_cond))
    ) 
  | Expr.Var v -> (
    match String.Map.find ctx v with 
    | None -> Error (
          Printf.sprintf
            "Var %s have no types"
             v )
    | Some tau -> Ok(tau)
  )
  | Expr.Lam {x;tau;e} -> (
    (* Corresponding to \Tau x:arg|- e:ret  
                      ________________________________________
                        \Tau |- (\lambda (x:arg).e): arg->ret
    *)
    let new_ctx = String.Map.set ctx ~key:x ~data:tau in 
    typecheck_expr new_ctx e >>= fun tau_e ->    
    Ok(Type.Fn{arg = tau; ret = tau_e;})
  )
  | Expr.App {lam;arg;}-> (
    typecheck_expr ctx lam >>= fun tau_lam ->
    typecheck_expr ctx arg >>= fun tau_arg ->
    match tau_lam with 
    | Type.Fn {arg= lam_arg; ret = lam_ret} ->
    if Ast_util.Type.aequiv lam_arg tau_arg then Ok lam_ret
    else Error(Printf.sprintf
            "App have incompatible types: (%s : %s) and (%s : %s)"
            (Expr.to_string lam) (Type.to_string tau_lam)
            (Expr.to_string arg) (Type.to_string tau_arg))
    | _ -> Error(Printf.sprintf "Something strange")
  )
  | Expr.Pair {left ; right} -> (
    typecheck_expr ctx left >>= fun tau_left ->
    typecheck_expr ctx right >>= fun tau_right ->
      Ok (Type.Product{left = tau_left ; right = tau_right}) 
  )
  | Expr.Project {e ;d} -> (
    typecheck_expr ctx e >>= fun tau_e ->
    let Type.Product{left; right} = tau_e in
    match d with 
    | Left -> Ok left
    | Right -> Ok right
  )
  | Expr.Inject {e;d;tau}->(
    typecheck_expr ctx e >>= fun tau_e ->
    let Type.Sum{left;right} = tau in
    match d with
    | Left -> if (Ast_util.Type.aequiv left tau_e) then Ok(tau) else Error(Printf.sprintf
            "Inj left have incompatible types: (%s : %s and %s)"
            (Expr.to_string e) (Type.to_string tau_e)
             (Type.to_string left))
    | Right -> if (Ast_util.Type.aequiv right tau_e) then Ok(tau) else Error(Printf.sprintf
            "Inj right have incompatible types: (%s : %s and %s)"
            (Expr.to_string e) (Type.to_string tau_e)
             (Type.to_string right))
  )
  | Expr.Case {e;xleft;eleft;xright;eright}->(
    typecheck_expr ctx e >>= fun tau_e ->
    let Type.Sum{left;right} = tau_e in
    let new_ctx = String.Map.set ~key:xleft ~data:left ctx in
    let new_ctx = String.Map.set ~key:xright ~data:right new_ctx in
    typecheck_expr new_ctx eleft >>= fun tau_eleft ->
    typecheck_expr new_ctx eright >>= fun tau_eright ->
    if (Ast_util.Type.aequiv tau_eleft tau_eright) 
    then  Ok(tau_eleft)
    else Error(Printf.sprintf
            "Case1 have incompatible types: (%s : %s) and (%s : %s)"
            (Expr.to_string eleft) (Type.to_string tau_eleft)
            (Expr.to_string eright) (Type.to_string tau_eright))
  )
  | Expr.Fix{x;tau;e}->(
    let new_ctx = String.Map.set ~key:x ~data:tau ctx in  
    typecheck_expr new_ctx e >>= fun tau_e -> 
    if (Ast_util.Type.aequiv tau_e tau) then Ok(tau)
    else Error(Printf.sprintf
            "Fixpoint have incompatible types: (%s : %s) and (%s : %s)"
            (x) (Type.to_string tau)
            (Expr.to_string e) (Type.to_string tau_e))
  )
  | Expr.TyLam {a;e}->(
    typecheck_expr ctx e >>= fun tau_e -> 
    Ok(Type.Forall{a;tau = tau_e})
  )
  | Expr.TyApp {e;tau}->(
    typecheck_expr ctx e >>= fun tau_e -> 
    let Type.Forall{a ; tau = tau_body} = tau_e in 
    Ok(Ast_util.Type.substitute a tau tau_body)
  )
  | Expr.Fold_{e;tau}->(
    typecheck_expr ctx e >>= fun tau_e -> 
    let Type.Rec{a;tau = tau'} = tau in 
    let new_tau = Ast_util.Type.substitute a tau tau in
    if (Ast_util.Type.aequiv new_tau tau_e) then  Ok(tau)
      else Error(Printf.sprintf "Fold Error %s and %s and %s"(Type.to_string tau_e) (Type.to_string tau) (Type.to_string new_tau))
  )
  | Expr.Unfold(t) ->(
    typecheck_expr ctx t >>= fun t-> 
    let Type.Rec{a;tau} = t in
    Ok(Ast_util.Type.substitute a (Type.Rec{a;tau}) tau)
  )
  (* | Expr.Export{e;tau_adt;tau_mod}->(
    typecheck_expr ctx e >>= fun tau_e ->
    let new_tau = Ast_util.Type.substitute  
  )
  | Expr.Import{x;a;e_mod;e_body}->(

  ) *)
  | _ -> raise Unimplemented

let typecheck t = typecheck_expr String.Map.empty t

let inline_tests () =
  let p_ex = Parser.parse_expr_exn in
  let p_ty = Parser.parse_type_exn in
  let e1 = p_ex "fun (x : num) -> x" in
  assert (typecheck e1 = Ok(p_ty "num -> num"));

  let e2 = p_ex "fun (x : num) -> y" in
  assert (Result.is_error (typecheck e2));

  let t3 = p_ex "(fun (x : num) -> x) 3"in
  assert (typecheck t3 = Ok(p_ty "num"));

  let t4 = p_ex "((fun (x : num) -> x) 3) 3" in
  assert (Result.is_error (typecheck t4));

  let t5 = p_ex "0 + (fun (x : num) -> x)" in
  assert (Result.is_error (typecheck t5))

(* Uncomment the line below when you want to run the inline tests. *)
let () = inline_tests ()
