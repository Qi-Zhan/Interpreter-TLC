open Flags
open Core
open Ast

type outcome =
  | Step of Expr.t
  | Val

exception RuntimeError of string

let rec trystep (e : Expr.t) : outcome =
  match e with
  | (Expr.Lam _ | Expr.Num _ | Expr.True | Expr.False | Expr.Pair _ | Expr.Unit
    | Expr.Inject _ | Expr.TyLam _ | Expr.Export _ | Expr.Fold_ _) -> Val

  | Expr.Binop {binop; left; right} ->
    (left, fun left' -> Expr.Binop {left = left'; binop; right;}) |-> fun () ->
    (right, (fun right' -> Expr.Binop {right = right'; binop; left})) |-> fun () ->
    let (Expr.Num n1, Expr.Num n2) = (left, right) in
    let f = match binop with
      | Expr.Add -> (+)
      | Expr.Sub -> (-)
      | Expr.Mul -> ( * )
      | Expr.Div -> (/)
    in
    Step (Expr.Num (f n1 n2) )
  (* Add more cases here! *)    
  | Expr.Relop {relop; left; right} -> (
    (left, fun left' -> Expr.Relop {left = left'; relop; right;}) |-> fun () ->
    (right, (fun right' -> Expr.Relop {right = right'; relop; left})) |-> fun () ->    
    let (Expr.Num n1, Expr.Num n2) = (left, right) in
    let f = match relop with
      | Expr.Eq -> (=)
      | Expr.Gt -> (>)
      | Expr.Lt -> (<) 
    in
    match (f n1 n2) with
    | true -> Step (Expr.True)
    | false -> Step (Expr.False)
    )
  | Expr.If {cond ; then_;else_} -> (
    (cond, fun cond' -> Expr.If {cond = cond';then_;else_}) |-> fun()->
      match cond with 
      | Expr.True ->  Step then_
      | Expr.False -> Step else_
  )
  | Expr.And {left ; right}->(
    (left, fun left' -> Expr.And {left = left';  right;}) |-> fun () ->
    (right, (fun right' -> Expr.And {right = right';  left})) |-> fun () ->
    let (b1, b2) = (left, right) in
    match (b1, b2) with
      | Expr.False,_ -> Step Expr.False
      | _ ,Expr.False  -> Step Expr.False
      | _, _ -> Step Expr.True
  )
  | Expr.Or {left ; right}->(
    (left, fun left' -> Expr.Or{left = left';  right;}) |-> fun () ->
    (right, (fun right' -> Expr.Or {right = right';  left})) |-> fun () ->
    let (b1, b2) = (left, right) in
    match (b1, b2) with
      | Expr.True,_ -> Step Expr.True
      | _ ,Expr.True  -> Step Expr.True
      | _, _ -> Step Expr.False
  )




  | _ -> raise (RuntimeError (
    Printf.sprintf "Reached a stuck state at expression: %s" (Expr.to_string e)))

and (|->) ((e, hole) : Expr.t * (Expr.t -> Expr.t)) (next : unit -> outcome)
  : outcome =
  match trystep e with Step e' -> Step (hole e') | Val -> next ()

let rec eval e =
  match trystep e with
  | Step e' ->
    (if extra_verbose () then
       Printf.printf "Stepped:\n%s\n|->\n%s\n\n"
         (Expr.to_string e) (Expr.to_string e'));
    eval e'
  | Val -> Ok e

let inline_tests () =
  let p = Parser.parse_expr_exn in
  let e1 = p "2 + 3" in
  assert (trystep e1 = Step(Expr.Num 5));

  let e2 = p "(fun (x : num) -> x) 3" in
  assert (trystep e2 = Step(Expr.Num 3))

(* Uncomment the line below when you want to run the inline tests. *)
(* let () = inline_tests () *)