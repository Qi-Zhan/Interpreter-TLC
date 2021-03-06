open Flags
open Core
open Ast

exception Unimplemented

let fresh s = s ^ "'"

module Type = struct
  open Ast.Type

  let rec substitute_map (rename : t String.Map.t) (tau : t) : t =
    match tau with
    | Num -> Num
    (* Add more cases here! *)
    | Bool -> Bool
    | Unit -> Unit
    | Var v -> (
      match String.Map.find rename v with
      | Some t -> t
      | None -> Var v
    )
    | Fn{arg;ret}-> Fn{ arg = substitute_map rename arg; ret = substitute_map rename ret}
    | Product{left;right}-> Product{left = substitute_map rename left; right = substitute_map rename right}
    | Sum {left ; right} -> Sum{left = substitute_map rename left; right = substitute_map rename right}
    | Forall{a;tau}-> (
      let new_name = String.Map.set rename ~key:a ~data:(Var(fresh a)) in
      Forall {a = fresh a; tau = substitute_map new_name tau}
    )
    | Rec {a ; tau}-> (
      Rec{a ; tau =  substitute_map rename tau}
    )
    | Exists {a; tau} -> (
      let new_name = String.Map.set rename ~key:a ~data:(Var(fresh a)) in
      Exists {a = fresh a; tau = substitute_map new_name tau}
    )
    | _ -> raise Unimplemented

  let substitute (x : string) (tau' : t) (tau : t) : t =
    substitute_map (String.Map.singleton x tau') tau

  let rec to_debruijn (tau : t) : t =
    let rec aux (depth : int String.Map.t) (tau : t) : t =
      match tau with
      | Num -> Num
      (* Add more cases here! *)
      | Bool -> Bool
      | Unit -> Unit
      | Var v -> (match String.Map.find depth v with
                | Some i -> Var(Int.to_string i) 
                | None -> Var v)
      | Fn {arg ; ret} -> Fn{arg = aux depth arg; ret = aux depth ret}
      | Product {left ; right} -> Product {left = aux depth left ; right = aux depth right}
      | Sum {left;right} -> Sum{left = aux depth left; right = aux depth right}
      | Forall{a ; tau} ->(
        let new_depth = String.Map.map depth ~f:(fun d -> (+1)) in
        let new_depth = String.Map.set new_depth  ~key:a ~data:0 in
        Forall {a;tau = aux new_depth tau}) 
      | Rec{a;tau}->(
        let new_depth = String.Map.map depth ~f:(fun d -> (+1)) in
        let new_depth = String.Map.set new_depth  ~key:a ~data:0 in
        Rec {a = "_";tau = aux new_depth tau})         
      | Exists{a;tau}->(
        let new_depth = String.Map.map depth ~f:(fun d -> (+1)) in
        let new_depth = String.Map.set new_depth  ~key:a ~data:0 in
        Exists {a ="_";tau = aux new_depth tau}
      )
      | _ -> raise Unimplemented
    in
    aux String.Map.empty tau

  let rec aequiv (tau1 : t) (tau2 : t) : bool =
    let rec aux (tau1 : t) (tau2 : t) : bool =
      match (tau1, tau2) with
      | (Num, Num) -> true
      | (Bool, Bool) | (Unit, Unit) -> true
      | (Var x, Var y) -> x = y
      | (Fn x, Fn y) -> aux x.arg y.arg && aux x.ret y.ret
      | (Sum x, Sum y) -> aux x.left y.left && aux x.right y.right
      | (Product x, Product y) -> aux x.left y.left && aux x.right y.right
      | (Rec x, Rec y) -> aux x.tau y.tau
      | (Forall x, Forall y) -> aux x.tau y.tau
      | (Exists x, Exists y) -> aux x.tau y.tau
      | _ -> false
    in
    aux (to_debruijn tau1) (to_debruijn tau2)

  let inline_tests () =
    let p = Parser.parse_type_exn in

    assert (
      aequiv
        (substitute "a" (p "num") (p "forall b . a"))
        (p "forall a . num"));
    assert (
      aequiv
        (substitute "a" (p "b") (p "forall b . a"))
        (p "forall c . b"));
    assert (
      not (aequiv
        (substitute "a" (p "b") (p "forall b . a"))
        (p "forall b . b")));
    assert (
      aequiv
        (substitute "a" (p "b") (p "forall b . forall b . a"))
        (p "forall q . forall c . b"));
    assert (
      not (aequiv
        (substitute "a" (p "b") (p "forall b . forall b . a"))
        (p "forall a . forall b . a")));

    assert (aequiv (p "forall a . a") (p "forall b . b"));
    assert (not (aequiv (p "forall a . a") (p "forall b . num")));
    assert (aequiv
              (p "forall a . forall b . a -> b")
              (p "forall x . forall y . x -> y"))

  (* Uncomment the line below when you want to run the inline tests. *)
  let () = inline_tests ()
end

module Expr = struct
  open Ast.Expr

  let rec substitute_map (rename : t String.Map.t) (e : t) : t =
    match e with
    | Num _ -> e
    | Binop {binop; left; right} -> Binop {
      binop;
      left = substitute_map rename left;
      right = substitute_map rename right
      }
    (* Put more cases here! *)
    | True -> True
    | False -> False
    | Unit -> Unit
    | And {left;right} -> And{
      left = substitute_map rename left;
      right = substitute_map rename right
    }
    | Or {left;right} -> Or{
      left = substitute_map rename left;
      right = substitute_map rename right
    }
    | Relop {relop; left; right} -> Relop {
      relop;
      left = substitute_map rename left;
      right = substitute_map rename right}
    | If {cond ; then_;else_} -> If{
      cond = substitute_map rename cond;
      then_ = substitute_map rename then_;
      else_ = substitute_map rename else_ }
    | Var v -> (
      match String.Map.find rename v with 
      | Some new_v -> new_v
      | None -> Var v 
    )
    | Lam {x;tau;e}->(
      let new_map = String.Map.set rename x (Var (fresh x)) in
      Lam {
        x = fresh x;
        tau;
        e = substitute_map new_map e;
      }
    )
    | App {lam ; arg}->(
      App {lam = substitute_map rename lam; arg = substitute_map rename arg}
    )
    | Pair {left;right}->(
      Pair {left = substitute_map rename left ; right = substitute_map rename right}
    )
    | Project {e ; d}-> (
      Project{e = substitute_map rename e; d}
    )
    | Inject { e ;d ; tau ; }->(
      Inject {e = substitute_map rename e;d;tau}
    )
    | Case {e;xleft;xright;eleft;eright}->(
      let new_map = String.Map.set rename xleft (Var (fresh xleft)) in
      let new_map = String.Map.set new_map xright (Var (fresh xright)) in
      Case {e =substitute_map rename e; xleft = fresh xleft;xright = fresh xright; 
      eleft = substitute_map new_map eleft; eright = substitute_map new_map eright}
      )
    | Fix{x;tau;e}->(
      let new_map = String.Map.set rename x (Var (fresh x)) in
      Fix{x = fresh x;tau; e = substitute_map new_map e;}
    )
    | TyLam{a;e}->(
      TyLam{a;e = substitute_map rename e;}
    )
    | TyApp {e;tau}->(
      TyApp{e = substitute_map rename e; tau}
    )
    | Fold_ {e;tau}->(
      Fold_{e = substitute_map rename e; tau}
    )
    | Unfold(t)->(
      Unfold(substitute_map rename t)
    )
    | Export  { e ; tau_adt ; tau_mod; }-> Export {e = substitute_map rename e; tau_adt;tau_mod}
    | Import  { x ; a ; e_mod ;e_body ;}->(
      let new_map = String.Map.set rename x (Var (fresh x)) in
      Import {x = fresh x; a; e_mod = substitute_map new_map e_mod; e_body = substitute_map new_map e_body}
    )
    | _ -> raise Unimplemented

  let substitute (x : string) (e' : t) (e : t) : t =
    substitute_map (String.Map.singleton x e') e

  let rec to_debruijn (e : t) : t =
    let rec aux (depth : int String.Map.t) (e : t) : t =
      match e with
      | Num _ -> e
      | Binop {binop; left; right} -> Binop {
        binop; left = aux depth left; right = aux depth right}
      (* Add more cases here! *)
      | Unit -> Unit
      | True -> True
      | False -> False
      | Relop {relop; left; right} -> Relop {
        relop; left = aux depth left; right = aux depth right}      
      | If {cond ; then_;else_} -> If{
        cond = aux depth cond;
        then_ = aux depth then_;
        else_ = aux depth else_   }      
      | And {left ; right} -> And {left = aux depth left; right = aux depth right }
      | Or {left ; right} -> Or{left = aux depth left; right = aux depth right}
      | Var v -> (
        match String.Map.find depth v with 
        | None -> Var v
        | Some s -> Var (Int.to_string s) 
      ) 
      | Lam {x; tau;e;} -> (
        let new_depth = String.Map.map depth ~f:(fun d -> (+1)) in
        let new_depth = String.Map.set new_depth  ~key:x ~data:0 in
        Lam {x="_"; tau =  Var "_"; e = aux new_depth e})
      | App {arg; lam} -> App { arg = aux depth arg;lam = aux depth lam;}
      | Pair { left ; right  }-> Pair {left = aux depth left; right = aux depth right}
      | Project  { e ; d ; } -> Project {e = aux depth e; d}
      | Inject {e;d;tau}->Inject {e = aux depth e;d;tau = Var "_"}
      | Case {e;xleft;xright;eleft;eright}->(
        let new_depth = String.Map.set depth  ~key:xleft ~data:0 in
        let new_depth = String.Map.set new_depth  ~key:xright ~data:0 in
        Case {e = aux depth e;xleft = "_";xright = "_";eleft = aux new_depth eleft; eright = aux new_depth eright}
      )
      | Fix{x;tau;e} ->(
        let new_depth = String.Map.map depth ~f:(fun d -> (+1)) in
        let new_depth = String.Map.set new_depth  ~key:x ~data:0 in
        Fix {x="_"; tau =  Var "_"; e = aux new_depth e})        
      | TyLam {a;e}->(
        (* TBD *)
        let new_depth = String.Map.map depth ~f:(fun d -> (+1)) in
        let new_depth = String.Map.set new_depth  ~key:a ~data:0 in
        TyLam{a  = "_" ; e = aux new_depth e}
      )
      | TyApp {e;tau}->(
        TyApp{e = aux depth e;tau = Var("_")}
      )
      | Fold_ {e;tau}->(
        let new_depth = String.Map.map depth ~f:(fun d -> (+1)) in
        Fold_{e = aux new_depth e; tau = Var("_")}
      )
      | Unfold(t)-> Unfold(aux depth t)
      | Export {e ;tau_adt ; tau_mod }-> Export{e=aux depth e; tau_adt = Var("_") ; tau_mod =  Var("_") }
      | Import {x ; a ; e_mod; e_body} ->         
        (* let new_depth = String.Map.map depth ~f:(fun d -> (+1)) in *)
        let new_depth = String.Map.set depth  ~key:x ~data:0 in
        Import{x="_";a="_";e_mod = aux new_depth e_mod; e_body = aux new_depth e_body}
      | _ -> raise Unimplemented
    in
    aux String.Map.empty e

  let aequiv (e1 : t) (e2 : t) : bool =
    let rec aux (e1 : t) (e2 : t) : bool =
      match (e1, e2) with
      | (Num n1, Num n2) -> n1 = n2
      | (Var x, Var y) -> x = y
      | (Binop l, Binop r) ->
        l.binop = r.binop && aux l.left r.left && aux l.right r.right
      | (True, True) | (False, False) -> true
      | (If l, If r) ->
        aux l.cond r.cond && aux l.then_ r.then_ && aux l.else_ r.else_
      | (Relop l, Relop r) ->
        l.relop = r.relop && aux l.left r.left && aux l.right r.right
      | (And l, And r) ->
        aux l.left r.left && aux l.right r.right
      | (Or l, Or r) ->
        aux l.left r.left && aux l.right r.right
      | (Lam l, Lam r) ->
        aux l.e r.e
      | (App l, App r) ->
        aux l.lam r.lam && aux l.arg r.arg
      | (Unit, Unit) -> true
      | (Pair l, Pair r) ->
        aux l.left r.left && aux l.right r.right
      | (Project l, Project r) ->
        aux l.e r.e && l.d = r.d
      | (Inject l, Inject r) ->
        aux l.e r.e && l.d = r.d
      | (Case l, Case r) ->
        aux l.e r.e && aux l.eleft r.eleft && aux l.eright r.eright
      | (Fix l, Fix r) -> aux l.e r.e
      | (TyLam l, TyLam r) ->
        aux l.e r.e
      | (TyApp l, TyApp r) -> aux l.e r.e
      | (Fold_ l, Fold_ r) -> aux l.e r.e
      | (Unfold l, Unfold r) -> aux l r
      | (Export l, Export r) -> aux l.e r.e
      | (Import l, Import r) -> aux l.e_mod r.e_mod && aux l.e_body r.e_body
      | _ -> false
    in
    aux (to_debruijn e1) (to_debruijn e2)

  let inline_tests () =
    let p = Parser.parse_expr_exn in
    let t1 = p "(fun (x : num) -> x) y" in
    (* let tzq = p "(fun (x: num)-> fun (y:num)->x+y) z" in *)
    assert (aequiv (substitute "x" (Num 0) t1) t1);
    (* Printf.printf "%s" (Ast.Expr.to_string(to_debruijn tzq))  ; *)
    assert (aequiv (substitute "y" (Num 0) t1)
              (p "(fun (x : num) -> x) 0"));

    let t2 = p "x + (fun (x : num) -> y)" in
    assert (aequiv
              (substitute "x" (Num 0) t2)
              (p "0 + (fun (x : num) -> y)"));
    assert (aequiv (substitute "y" (Num 0) t2)
              (p "x + (fun (x : num) -> 0)"));

    assert (aequiv (p "fun (x : num) -> x") (p "fun (y : num) -> y"));

    assert (not (aequiv (p "fun (x : num) -> fun (x : num) -> x + x")
                   (p "fun (x : num) -> fun (y : num) -> y + x")));

    assert (
      aequiv
        (p "tyfun a -> fun (x : a) -> x")
        (p "tyfun b -> fun (x : b) -> x"));

    ()

  (* Uncomment the line below when you want to run the inline tests. *)
  let () = inline_tests ()
end
