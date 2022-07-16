
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WITHOUT
    | VAR of (
# 5 "src/grammar.mly"
       (string)
# 16 "src/grammar.ml"
  )
    | UNFOLD
    | TY_UNIT
    | TY_NUM
    | TY_BOOL
    | TRUE
    | THEN
    | TFN
    | SUB
    | RPAREN
    | RIGHT
    | REC
    | RBRACKET
    | RBRACE
    | PLUS
    | OR
    | NUM of (
# 53 "src/grammar.mly"
       (int)
# 36 "src/grammar.ml"
  )
    | MUL
    | LT
    | LPAREN
    | LETREC
    | LET
    | LEFT
    | LBRACKET
    | LBRACE
    | INJECT
    | IN
    | IMPORT
    | IF
    | GT
    | FORALL
    | FOLD
    | FN
    | FALSE
    | EXPORT
    | EXISTS
    | EQ
    | EOF
    | ELSE
    | DOT
    | DIV
    | COMMA
    | COLON
    | CASE
    | BAR
    | AS
    | ARROW
    | AND
  
end

include MenhirBasics

# 1 "src/grammar.mly"
  
  open Ast

# 78 "src/grammar.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_expr_toplevel) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: expr_toplevel. *)

  | MenhirState002 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_UNFOLD, _menhir_box_expr_toplevel) _menhir_state
    (** State 002.
        Stack shape : UNFOLD.
        Start symbol: expr_toplevel. *)

  | MenhirState006 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_TFN _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_state
    (** State 006.
        Stack shape : TFN VAR.
        Start symbol: expr_toplevel. *)

  | MenhirState008 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_LPAREN, _menhir_box_expr_toplevel) _menhir_state
    (** State 008.
        Stack shape : LPAREN.
        Start symbol: expr_toplevel. *)

  | MenhirState012 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_LETREC _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_state
    (** State 012.
        Stack shape : LETREC VAR.
        Start symbol: expr_toplevel. *)

  | MenhirState019 : (('s, 'r) _menhir_cell1_REC _menhir_cell0_VAR, 'r) _menhir_state
    (** State 019.
        Stack shape : REC VAR.
        Start symbol: <undetermined>. *)

  | MenhirState020 : (('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 020.
        Stack shape : LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState023 : (('s, 'r) _menhir_cell1_FORALL _menhir_cell0_VAR, 'r) _menhir_state
    (** State 023.
        Stack shape : FORALL VAR.
        Start symbol: <undetermined>. *)

  | MenhirState026 : (('s, 'r) _menhir_cell1_EXISTS _menhir_cell0_VAR, 'r) _menhir_state
    (** State 026.
        Stack shape : EXISTS VAR.
        Start symbol: <undetermined>. *)

  | MenhirState028 : (('s, 'r) _menhir_cell1_ty2, 'r) _menhir_state
    (** State 028.
        Stack shape : ty2.
        Start symbol: <undetermined>. *)

  | MenhirState030 : (('s, 'r) _menhir_cell1_ty2, 'r) _menhir_state
    (** State 030.
        Stack shape : ty2.
        Start symbol: <undetermined>. *)

  | MenhirState032 : (('s, 'r) _menhir_cell1_ty2, 'r) _menhir_state
    (** State 032.
        Stack shape : ty2.
        Start symbol: <undetermined>. *)

  | MenhirState040 : ((('s, _menhir_box_expr_toplevel) _menhir_cell1_LETREC _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_ty, _menhir_box_expr_toplevel) _menhir_state
    (** State 040.
        Stack shape : LETREC VAR ty.
        Start symbol: expr_toplevel. *)

  | MenhirState043 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_LET _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_state
    (** State 043.
        Stack shape : LET VAR.
        Start symbol: expr_toplevel. *)

  | MenhirState045 : ((('s, _menhir_box_expr_toplevel) _menhir_cell1_LET _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_ty, _menhir_box_expr_toplevel) _menhir_state
    (** State 045.
        Stack shape : LET VAR ty.
        Start symbol: expr_toplevel. *)

  | MenhirState046 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_INJECT, _menhir_box_expr_toplevel) _menhir_state
    (** State 046.
        Stack shape : INJECT.
        Start symbol: expr_toplevel. *)

  | MenhirState053 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_IMPORT _menhir_cell0_VAR _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_state
    (** State 053.
        Stack shape : IMPORT VAR VAR.
        Start symbol: expr_toplevel. *)

  | MenhirState054 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_IF, _menhir_box_expr_toplevel) _menhir_state
    (** State 054.
        Stack shape : IF.
        Start symbol: expr_toplevel. *)

  | MenhirState055 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_FOLD, _menhir_box_expr_toplevel) _menhir_state
    (** State 055.
        Stack shape : FOLD.
        Start symbol: expr_toplevel. *)

  | MenhirState059 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_FN _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_state
    (** State 059.
        Stack shape : FN VAR.
        Start symbol: expr_toplevel. *)

  | MenhirState062 : ((('s, _menhir_box_expr_toplevel) _menhir_cell1_FN _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_ty, _menhir_box_expr_toplevel) _menhir_state
    (** State 062.
        Stack shape : FN VAR ty.
        Start symbol: expr_toplevel. *)

  | MenhirState064 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_EXPORT, _menhir_box_expr_toplevel) _menhir_state
    (** State 064.
        Stack shape : EXPORT.
        Start symbol: expr_toplevel. *)

  | MenhirState065 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_CASE, _menhir_box_expr_toplevel) _menhir_state
    (** State 065.
        Stack shape : CASE.
        Start symbol: expr_toplevel. *)

  | MenhirState067 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 067.
        Stack shape : expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState069 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 069.
        Stack shape : expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState071 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 071.
        Stack shape : expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState074 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 074.
        Stack shape : expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState078 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 078.
        Stack shape : expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState080 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 080.
        Stack shape : expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState082 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 082.
        Stack shape : expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState084 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 084.
        Stack shape : expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState086 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 086.
        Stack shape : expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState088 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 088.
        Stack shape : expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState095 : ((('s, _menhir_box_expr_toplevel) _menhir_cell1_CASE, _menhir_box_expr_toplevel) _menhir_cell1_expr2 _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_state
    (** State 095.
        Stack shape : CASE expr2 VAR.
        Start symbol: expr_toplevel. *)

  | MenhirState102 : (((('s, _menhir_box_expr_toplevel) _menhir_cell1_CASE, _menhir_box_expr_toplevel) _menhir_cell1_expr2 _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_expr2 _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_state
    (** State 102.
        Stack shape : CASE expr2 VAR expr2 VAR.
        Start symbol: expr_toplevel. *)

  | MenhirState105 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 105.
        Stack shape : expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState108 : ((('s, _menhir_box_expr_toplevel) _menhir_cell1_EXPORT, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 108.
        Stack shape : EXPORT expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState110 : (((('s, _menhir_box_expr_toplevel) _menhir_cell1_EXPORT, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_cell1_ty, _menhir_box_expr_toplevel) _menhir_state
    (** State 110.
        Stack shape : EXPORT expr2 ty.
        Start symbol: expr_toplevel. *)

  | MenhirState113 : (((('s, _menhir_box_expr_toplevel) _menhir_cell1_FN _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_ty, _menhir_box_expr_toplevel) _menhir_cell1_expr, _menhir_box_expr_toplevel) _menhir_state
    (** State 113.
        Stack shape : FN VAR ty expr.
        Start symbol: expr_toplevel. *)

  | MenhirState116 : ((('s, _menhir_box_expr_toplevel) _menhir_cell1_FOLD, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 116.
        Stack shape : FOLD expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState119 : ((('s, _menhir_box_expr_toplevel) _menhir_cell1_IF, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 119.
        Stack shape : IF expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState121 : (((('s, _menhir_box_expr_toplevel) _menhir_cell1_IF, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 121.
        Stack shape : IF expr2 expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState124 : ((('s, _menhir_box_expr_toplevel) _menhir_cell1_IMPORT _menhir_cell0_VAR _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 124.
        Stack shape : IMPORT VAR VAR expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState127 : ((('s, _menhir_box_expr_toplevel) _menhir_cell1_INJECT, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 127.
        Stack shape : INJECT expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState129 : (((('s, _menhir_box_expr_toplevel) _menhir_cell1_INJECT, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_cell1_dir, _menhir_box_expr_toplevel) _menhir_state
    (** State 129.
        Stack shape : INJECT expr2 dir.
        Start symbol: expr_toplevel. *)

  | MenhirState132 : (((('s, _menhir_box_expr_toplevel) _menhir_cell1_LET _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_ty, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 132.
        Stack shape : LET VAR ty expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState135 : (((('s, _menhir_box_expr_toplevel) _menhir_cell1_LETREC _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_ty, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 135.
        Stack shape : LETREC VAR ty expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState138 : ((('s, _menhir_box_expr_toplevel) _menhir_cell1_LPAREN, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_state
    (** State 138.
        Stack shape : LPAREN expr2.
        Start symbol: expr_toplevel. *)

  | MenhirState141 : ((('s, _menhir_box_expr_toplevel) _menhir_cell1_LPAREN, _menhir_box_expr_toplevel) _menhir_cell1_expr, _menhir_box_expr_toplevel) _menhir_state
    (** State 141.
        Stack shape : LPAREN expr.
        Start symbol: expr_toplevel. *)

  | MenhirState146 : (('s, _menhir_box_expr_toplevel) _menhir_cell1_expr, _menhir_box_expr_toplevel) _menhir_state
    (** State 146.
        Stack shape : expr.
        Start symbol: expr_toplevel. *)

  | MenhirState148 : ('s, _menhir_box_type_toplevel) _menhir_state
    (** State 148.
        Stack shape : .
        Start symbol: type_toplevel. *)


and ('s, 'r) _menhir_cell1_dir = 
  | MenhirCell1_dir of 's * ('s, 'r) _menhir_state * (Ast.Expr.direction)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast.Expr.t)

and ('s, 'r) _menhir_cell1_expr2 = 
  | MenhirCell1_expr2 of 's * ('s, 'r) _menhir_state * (Ast.Expr.t)

and ('s, 'r) _menhir_cell1_ty = 
  | MenhirCell1_ty of 's * ('s, 'r) _menhir_state * (Ast.Type.t)

and ('s, 'r) _menhir_cell1_ty2 = 
  | MenhirCell1_ty2 of 's * ('s, 'r) _menhir_state * (Ast.Type.t)

and ('s, 'r) _menhir_cell1_CASE = 
  | MenhirCell1_CASE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_EXISTS = 
  | MenhirCell1_EXISTS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_EXPORT = 
  | MenhirCell1_EXPORT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FN = 
  | MenhirCell1_FN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FOLD = 
  | MenhirCell1_FOLD of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FORALL = 
  | MenhirCell1_FORALL of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IMPORT = 
  | MenhirCell1_IMPORT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_INJECT = 
  | MenhirCell1_INJECT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LET = 
  | MenhirCell1_LET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LETREC = 
  | MenhirCell1_LETREC of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAREN = 
  | MenhirCell1_LPAREN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_REC = 
  | MenhirCell1_REC of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TFN = 
  | MenhirCell1_TFN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_UNFOLD = 
  | MenhirCell1_UNFOLD of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_VAR = 
  | MenhirCell0_VAR of 's * (
# 5 "src/grammar.mly"
       (string)
# 401 "src/grammar.ml"
)

and _menhir_box_type_toplevel = 
  | MenhirBox_type_toplevel of (Ast.Type.t) [@@unboxed]

and _menhir_box_expr_toplevel = 
  | MenhirBox_expr_toplevel of (Ast.Expr.t) [@@unboxed]

let _menhir_action_02 =
  fun () ->
    (
# 144 "src/grammar.mly"
       (Expr.Left)
# 415 "src/grammar.ml"
     : (Ast.Expr.direction))

let _menhir_action_03 =
  fun () ->
    (
# 145 "src/grammar.mly"
        (Expr.Right)
# 423 "src/grammar.ml"
     : (Ast.Expr.direction))

let _menhir_action_04 =
  fun arg lam ->
    (
# 77 "src/grammar.mly"
                         ( Expr.App { lam ; arg } )
# 431 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_05 =
  fun e ->
    (
# 78 "src/grammar.mly"
            ( e )
# 439 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_06 =
  fun left right ->
    let binop = 
# 117 "src/grammar.mly"
       ( Expr.Add )
# 447 "src/grammar.ml"
     in
    (
# 82 "src/grammar.mly"
  ( Expr.Binop { binop ; left ; right } )
# 452 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_07 =
  fun left right ->
    let binop = 
# 118 "src/grammar.mly"
      ( Expr.Sub )
# 460 "src/grammar.ml"
     in
    (
# 82 "src/grammar.mly"
  ( Expr.Binop { binop ; left ; right } )
# 465 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_08 =
  fun left right ->
    let binop = 
# 119 "src/grammar.mly"
      ( Expr.Mul )
# 473 "src/grammar.ml"
     in
    (
# 82 "src/grammar.mly"
  ( Expr.Binop { binop ; left ; right } )
# 478 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_09 =
  fun left right ->
    let binop = 
# 120 "src/grammar.mly"
      ( Expr.Div )
# 486 "src/grammar.ml"
     in
    (
# 82 "src/grammar.mly"
  ( Expr.Binop { binop ; left ; right } )
# 491 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_10 =
  fun left right ->
    let relop = 
# 123 "src/grammar.mly"
     ( Expr.Eq )
# 499 "src/grammar.ml"
     in
    (
# 84 "src/grammar.mly"
  ( Expr.Relop { relop ; left ; right }  )
# 504 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_11 =
  fun left right ->
    let relop = 
# 124 "src/grammar.mly"
     ( Expr.Gt )
# 512 "src/grammar.ml"
     in
    (
# 84 "src/grammar.mly"
  ( Expr.Relop { relop ; left ; right }  )
# 517 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_12 =
  fun left right ->
    let relop = 
# 125 "src/grammar.mly"
     ( Expr.Lt )
# 525 "src/grammar.ml"
     in
    (
# 84 "src/grammar.mly"
  ( Expr.Relop { relop ; left ; right }  )
# 530 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_13 =
  fun left right ->
    (
# 85 "src/grammar.mly"
                                 ( Expr.And { left ; right } )
# 538 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_14 =
  fun left right ->
    (
# 86 "src/grammar.mly"
                                ( Expr.Or { left ; right } )
# 546 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_15 =
  fun e tau x ->
    (
# 88 "src/grammar.mly"
  ( Expr.Lam { x ; tau ; e } )
# 554 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_16 =
  fun n ->
    (
# 89 "src/grammar.mly"
          ( Expr.Num(n) )
# 562 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_17 =
  fun v ->
    (
# 90 "src/grammar.mly"
          ( Expr.Var(v) )
# 570 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_18 =
  fun () ->
    (
# 91 "src/grammar.mly"
       ( Expr.True )
# 578 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_19 =
  fun () ->
    (
# 92 "src/grammar.mly"
        ( Expr.False )
# 586 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_20 =
  fun left right ->
    (
# 93 "src/grammar.mly"
                                                 ( Expr.Pair { left ; right } )
# 594 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_21 =
  fun d e ->
    (
# 94 "src/grammar.mly"
                        ( Expr.Project { e ; d } )
# 602 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_22 =
  fun d e tau ->
    (
# 95 "src/grammar.mly"
                                          ( Expr.Inject { e ; d ; tau } )
# 610 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_23 =
  fun e eleft eright xleft xright ->
    (
# 97 "src/grammar.mly"
  ( Expr.Case { e ; xleft; eleft; xright; eright } )
# 618 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_24 =
  fun cond else_ then_ ->
    (
# 99 "src/grammar.mly"
  ( Expr.If { cond; then_; else_ } )
# 626 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_25 =
  fun ebody evar tau x ->
    (
# 101 "src/grammar.mly"
  ( Expr.App { lam = Expr.Lam { x ; tau ; e = ebody } ; arg = evar } )
# 634 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_26 =
  fun ebody evar tau x ->
    (
# 103 "src/grammar.mly"
  ( Expr.App { lam = Expr.Lam {x ; tau ; e = ebody} ;
               arg = Expr.Fix { x ; tau ; e = evar } } )
# 643 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_27 =
  fun a e ->
    (
# 105 "src/grammar.mly"
                              ( Expr.TyLam { a ; e } )
# 651 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_28 =
  fun e tau ->
    (
# 106 "src/grammar.mly"
                                       ( Expr.TyApp { e ; tau } )
# 659 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_29 =
  fun e tau ->
    (
# 107 "src/grammar.mly"
                             ( Expr.Fold_ { e; tau } )
# 667 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_30 =
  fun e ->
    (
# 108 "src/grammar.mly"
                   ( Expr.Unfold e )
# 675 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_31 =
  fun e tau_adt tau_mod ->
    (
# 110 "src/grammar.mly"
  ( Expr.Export { e; tau_adt; tau_mod } )
# 683 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_32 =
  fun a e_body e_mod x ->
    (
# 112 "src/grammar.mly"
  ( Expr.Import { x; a; e_mod; e_body } )
# 691 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_33 =
  fun () ->
    (
# 113 "src/grammar.mly"
                ( Expr.Unit )
# 699 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_34 =
  fun e ->
    (
# 114 "src/grammar.mly"
                         ( e )
# 707 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_35 =
  fun e ->
    (
# 71 "src/grammar.mly"
               ( e )
# 715 "src/grammar.ml"
     : (Ast.Expr.t))

let _menhir_action_36 =
  fun a tau ->
    (
# 128 "src/grammar.mly"
                           ( Type.Rec { a; tau } )
# 723 "src/grammar.ml"
     : (Ast.Type.t))

let _menhir_action_37 =
  fun a tau ->
    (
# 129 "src/grammar.mly"
                              ( Type.Forall { a; tau } )
# 731 "src/grammar.ml"
     : (Ast.Type.t))

let _menhir_action_38 =
  fun a tau ->
    (
# 130 "src/grammar.mly"
                              ( Type.Exists { a; tau } )
# 739 "src/grammar.ml"
     : (Ast.Type.t))

let _menhir_action_39 =
  fun t ->
    (
# 131 "src/grammar.mly"
          ( t )
# 747 "src/grammar.ml"
     : (Ast.Type.t))

let _menhir_action_40 =
  fun () ->
    (
# 134 "src/grammar.mly"
         ( Type.Num )
# 755 "src/grammar.ml"
     : (Ast.Type.t))

let _menhir_action_41 =
  fun () ->
    (
# 135 "src/grammar.mly"
          ( Type.Bool )
# 763 "src/grammar.ml"
     : (Ast.Type.t))

let _menhir_action_42 =
  fun () ->
    (
# 136 "src/grammar.mly"
          ( Type.Unit )
# 771 "src/grammar.ml"
     : (Ast.Type.t))

let _menhir_action_43 =
  fun a ->
    (
# 137 "src/grammar.mly"
          ( Type.Var a )
# 779 "src/grammar.ml"
     : (Ast.Type.t))

let _menhir_action_44 =
  fun left right ->
    (
# 138 "src/grammar.mly"
                              ( Type.Sum { left; right } )
# 787 "src/grammar.ml"
     : (Ast.Type.t))

let _menhir_action_45 =
  fun left right ->
    (
# 139 "src/grammar.mly"
                             ( Type.Product { left; right } )
# 795 "src/grammar.ml"
     : (Ast.Type.t))

let _menhir_action_46 =
  fun arg ret ->
    (
# 140 "src/grammar.mly"
                            ( Type.Fn { arg; ret } )
# 803 "src/grammar.ml"
     : (Ast.Type.t))

let _menhir_action_47 =
  fun t ->
    (
# 141 "src/grammar.mly"
                       ( t )
# 811 "src/grammar.ml"
     : (Ast.Type.t))

let _menhir_action_48 =
  fun t ->
    (
# 74 "src/grammar.mly"
             ( t )
# 819 "src/grammar.ml"
     : (Ast.Type.t))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AND ->
        "AND"
    | ARROW ->
        "ARROW"
    | AS ->
        "AS"
    | BAR ->
        "BAR"
    | CASE ->
        "CASE"
    | COLON ->
        "COLON"
    | COMMA ->
        "COMMA"
    | DIV ->
        "DIV"
    | DOT ->
        "DOT"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | EQ ->
        "EQ"
    | EXISTS ->
        "EXISTS"
    | EXPORT ->
        "EXPORT"
    | FALSE ->
        "FALSE"
    | FN ->
        "FN"
    | FOLD ->
        "FOLD"
    | FORALL ->
        "FORALL"
    | GT ->
        "GT"
    | IF ->
        "IF"
    | IMPORT ->
        "IMPORT"
    | IN ->
        "IN"
    | INJECT ->
        "INJECT"
    | LBRACE ->
        "LBRACE"
    | LBRACKET ->
        "LBRACKET"
    | LEFT ->
        "LEFT"
    | LET ->
        "LET"
    | LETREC ->
        "LETREC"
    | LPAREN ->
        "LPAREN"
    | LT ->
        "LT"
    | MUL ->
        "MUL"
    | NUM _ ->
        "NUM"
    | OR ->
        "OR"
    | PLUS ->
        "PLUS"
    | RBRACE ->
        "RBRACE"
    | RBRACKET ->
        "RBRACKET"
    | REC ->
        "REC"
    | RIGHT ->
        "RIGHT"
    | RPAREN ->
        "RPAREN"
    | SUB ->
        "SUB"
    | TFN ->
        "TFN"
    | THEN ->
        "THEN"
    | TRUE ->
        "TRUE"
    | TY_BOOL ->
        "TY_BOOL"
    | TY_NUM ->
        "TY_NUM"
    | TY_UNIT ->
        "TY_UNIT"
    | UNFOLD ->
        "UNFOLD"
    | VAR _ ->
        "VAR"
    | WITHOUT ->
        "WITHOUT"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_150 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_type_toplevel =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let t = _v in
          let _v = _menhir_action_48 t in
          MenhirBox_type_toplevel _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_112 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AS | BAR | CASE | COMMA | ELSE | EOF | EXPORT | FALSE | FN | FOLD | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | NUM _ | RBRACE | RPAREN | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let e = _v in
          let _v = _menhir_action_05 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack. (ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | AS | BAR | CASE | COMMA | ELSE | EOF | EQ | EXPORT | FALSE | FN | FOLD | GT | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | LT | NUM _ | OR | PLUS | RBRACE | RPAREN | SUB | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_expr2 (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_07 left right in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. (ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | AS | BAR | CASE | COMMA | DIV | ELSE | EOF | EQ | EXPORT | FALSE | FN | FOLD | GT | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | LT | MUL | NUM _ | OR | PLUS | RBRACE | RPAREN | SUB | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_expr2 (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_08 left right in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack. (ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let a = _v in
          let _v = _menhir_action_43 a in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState071 _tok
      | TY_UNIT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_42 () in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState071 _tok
      | TY_NUM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_40 () in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState071 _tok
      | TY_BOOL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_41 () in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState071 _tok
      | REC ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | FORALL ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | EXISTS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | _ ->
          _eRR ()
  
  and _menhir_run_027 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUS ->
          let _menhir_stack = MenhirCell1_ty2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_ty2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | ARROW ->
          let _menhir_stack = MenhirCell1_ty2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | AS | BAR | CASE | COMMA | DIV | DOT | ELSE | EOF | EQ | EXPORT | FALSE | FN | FOLD | GT | IF | IMPORT | IN | INJECT | LBRACE | LBRACKET | LET | LETREC | LPAREN | LT | NUM _ | OR | RBRACE | RBRACKET | RPAREN | SUB | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let t = _v in
          let _v = _menhir_action_39 t in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_028 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_ty2 -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let a = _v in
          let _v = _menhir_action_43 a in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState028 _tok
      | TY_UNIT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_42 () in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState028 _tok
      | TY_NUM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_40 () in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState028 _tok
      | TY_BOOL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_41 () in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState028 _tok
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState028
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_ty2 as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUS ->
          let _menhir_stack = MenhirCell1_ty2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_ty2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | ARROW ->
          let _menhir_stack = MenhirCell1_ty2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | AS | BAR | CASE | COMMA | DIV | DOT | ELSE | EOF | EQ | EXPORT | FALSE | FN | FOLD | GT | IF | IMPORT | IN | INJECT | LBRACE | LBRACKET | LET | LETREC | LPAREN | LT | NUM _ | OR | RBRACE | RBRACKET | RPAREN | SUB | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_ty2 (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_44 left right in
          _menhir_goto_ty2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_030 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_ty2 -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let a = _v in
          let _v = _menhir_action_43 a in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState030 _tok
      | TY_UNIT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_42 () in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState030 _tok
      | TY_NUM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_40 () in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState030 _tok
      | TY_BOOL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_41 () in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState030 _tok
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | _ ->
          _eRR ()
  
  and _menhir_run_031 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_ty2 as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUS ->
          let _menhir_stack = MenhirCell1_ty2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_ty2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | ARROW ->
          let _menhir_stack = MenhirCell1_ty2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | AS | BAR | CASE | COMMA | DIV | DOT | ELSE | EOF | EQ | EXPORT | FALSE | FN | FOLD | GT | IF | IMPORT | IN | INJECT | LBRACE | LBRACKET | LET | LETREC | LPAREN | LT | NUM _ | OR | RBRACE | RBRACKET | RPAREN | SUB | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_ty2 (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_45 left right in
          _menhir_goto_ty2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_ty2 -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let a = _v in
          let _v = _menhir_action_43 a in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | TY_UNIT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_42 () in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | TY_NUM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_40 () in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | TY_BOOL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_41 () in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_ty2 as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUS ->
          let _menhir_stack = MenhirCell1_ty2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_ty2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | ARROW ->
          let _menhir_stack = MenhirCell1_ty2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | AS | BAR | CASE | COMMA | DIV | DOT | ELSE | EOF | EQ | EXPORT | FALSE | FN | FOLD | GT | IF | IMPORT | IN | INJECT | LBRACE | LBRACKET | LET | LETREC | LPAREN | LT | NUM _ | OR | RBRACE | RBRACKET | RPAREN | SUB | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_ty2 (_menhir_stack, _menhir_s, arg) = _menhir_stack in
          let ret = _v in
          let _v = _menhir_action_46 arg ret in
          _menhir_goto_ty2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_ty2 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState032 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState030 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState028 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState148 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState129 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState116 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState108 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState071 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState012 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState020 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_020 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let a = _v in
          let _v = _menhir_action_43 a in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState020 _tok
      | TY_UNIT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_42 () in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState020 _tok
      | TY_NUM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_40 () in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState020 _tok
      | TY_BOOL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_41 () in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState020 _tok
      | REC ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | FORALL ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | EXISTS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | _ ->
          _eRR ()
  
  and _menhir_run_017 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_REC (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _menhir_stack = MenhirCell0_VAR (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | DOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VAR _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let a = _v_0 in
                  let _v = _menhir_action_43 a in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
              | TY_UNIT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_42 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
              | TY_NUM ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_40 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
              | TY_BOOL ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_41 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
              | REC ->
                  _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
              | LPAREN ->
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
              | FORALL ->
                  _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
              | EXISTS ->
                  _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_021 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FORALL (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _menhir_stack = MenhirCell0_VAR (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | DOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VAR _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let a = _v_0 in
                  let _v = _menhir_action_43 a in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023 _tok
              | TY_UNIT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_42 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023 _tok
              | TY_NUM ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_40 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023 _tok
              | TY_BOOL ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_41 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState023 _tok
              | REC ->
                  _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
              | LPAREN ->
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
              | FORALL ->
                  _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
              | EXISTS ->
                  _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_024 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EXISTS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _menhir_stack = MenhirCell0_VAR (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | DOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VAR _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let a = _v_0 in
                  let _v = _menhir_action_43 a in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
              | TY_UNIT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_42 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
              | TY_NUM ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_40 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
              | TY_BOOL ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_41 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
              | REC ->
                  _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
              | LPAREN ->
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
              | FORALL ->
                  _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
              | EXISTS ->
                  _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_ty : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState148 ->
          _menhir_run_150 _menhir_stack _v _tok
      | MenhirState129 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState116 ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState110 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState108 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState071 ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState059 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState012 ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState020 ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState023 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState026 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_130 : type  ttv_stack. (((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_INJECT, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_cell1_dir -> _ -> _ -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_dir (_menhir_stack, _, d) = _menhir_stack in
      let MenhirCell1_expr2 (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_INJECT (_menhir_stack, _menhir_s) = _menhir_stack in
      let tau = _v in
      let _v = _menhir_action_22 d e tau in
      _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr2 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState002 ->
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState006 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState138 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState124 ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState121 ->
          _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState119 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState146 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState141 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState113 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState105 ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState127 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState078 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState069 ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_144 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_UNFOLD as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AS | BAR | CASE | COMMA | ELSE | EOF | EXPORT | FALSE | FN | FOLD | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | NUM _ | RBRACE | RPAREN | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_UNFOLD (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_30 e in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_080 : type  ttv_stack. (ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState080 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState080 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState080 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState080 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | AS | BAR | CASE | COMMA | ELSE | EOF | EQ | EXPORT | FALSE | FN | FOLD | GT | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | LT | NUM _ | OR | PLUS | RBRACE | RPAREN | SUB | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_expr2 (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_06 left right in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_074 : type  ttv_stack. (ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RIGHT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_03 () in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LEFT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_02 () in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. (ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 -> _ -> _ -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr2 (_menhir_stack, _menhir_s, e) = _menhir_stack in
      let d = _v in
      let _v = _menhir_action_21 d e in
      _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_078 : type  ttv_stack. (ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState078 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState078 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState078 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState078 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | AS | BAR | CASE | COMMA | DIV | ELSE | EOF | EQ | EXPORT | FALSE | FN | FOLD | GT | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | LT | MUL | NUM _ | OR | PLUS | RBRACE | RPAREN | SUB | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_expr2 (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_09 left right in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_002 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_UNFOLD (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState002 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState002 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState002 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState002 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | _ ->
          _eRR ()
  
  and _menhir_run_004 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TFN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _menhir_stack = MenhirCell0_VAR (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ARROW ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VAR _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let v = _v_0 in
                  let _v = _menhir_action_17 v in
                  _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState006 _tok
              | UNFOLD ->
                  _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | TRUE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_18 () in
                  _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState006 _tok
              | TFN ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | NUM _v_3 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let n = _v_3 in
                  let _v = _menhir_action_16 n in
                  _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState006 _tok
              | LPAREN ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | LETREC ->
                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | LET ->
                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | INJECT ->
                  _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | IMPORT ->
                  _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | IF ->
                  _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | FOLD ->
                  _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | FN ->
                  _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | FALSE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_19 () in
                  _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState006 _tok
              | EXPORT ->
                  _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | CASE ->
                  _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState006
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_143 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_TFN _menhir_cell0_VAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AS | BAR | CASE | COMMA | ELSE | EOF | EXPORT | FALSE | FN | FOLD | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | NUM _ | RBRACE | RPAREN | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell0_VAR (_menhir_stack, a) = _menhir_stack in
          let MenhirCell1_TFN (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_27 a e in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_082 : type  ttv_stack. (ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | AS | BAR | CASE | COMMA | ELSE | EOF | EXPORT | FALSE | FN | FOLD | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | NUM _ | OR | RBRACE | RPAREN | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_expr2 (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_14 left right in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_084 : type  ttv_stack. (ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | AS | BAR | CASE | COMMA | ELSE | EOF | EQ | EXPORT | FALSE | FN | FOLD | GT | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | LT | NUM _ | OR | RBRACE | RPAREN | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_expr2 (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_12 left right in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
      | UNFOLD ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | TRUE ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
      | TFN ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_33 () in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | NUM _v ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
      | LPAREN ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | LETREC ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | LET ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | INJECT ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | IMPORT ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | IF ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | FOLD ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | FN ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | FALSE ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
      | EXPORT ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | CASE ->
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | _ ->
          _eRR ()
  
  and _menhir_run_137 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let v = _v_0 in
              let _v = _menhir_action_17 v in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState138 _tok
          | UNFOLD ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_18 () in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState138 _tok
          | TFN ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | NUM _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_16 n in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState138 _tok
          | LPAREN ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | LETREC ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | LET ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | INJECT ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | IMPORT ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | IF ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | FOLD ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | FN ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_19 () in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState138 _tok
          | EXPORT ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | CASE ->
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | _ ->
              _eRR ())
      | AND ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CASE | EXPORT | FALSE | FN | FOLD | IF | IMPORT | INJECT | LET | LETREC | LPAREN | NUM _ | RPAREN | TFN | TRUE | UNFOLD | VAR _ ->
          let e = _v in
          let _v = _menhir_action_05 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_086 : type  ttv_stack. (ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | AS | BAR | CASE | COMMA | ELSE | EOF | EQ | EXPORT | FALSE | FN | FOLD | GT | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | LT | NUM _ | OR | RBRACE | RPAREN | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_expr2 (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_11 left right in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_010 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LETREC (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _menhir_stack = MenhirCell0_VAR (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | COLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VAR _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let a = _v_0 in
                  let _v = _menhir_action_43 a in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
              | TY_UNIT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_42 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
              | TY_NUM ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_40 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
              | TY_BOOL ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_41 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
              | REC ->
                  _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
              | LPAREN ->
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
              | FORALL ->
                  _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
              | EXISTS ->
                  _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _menhir_stack = MenhirCell0_VAR (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | COLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VAR _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let a = _v_0 in
                  let _v = _menhir_action_43 a in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
              | TY_UNIT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_42 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
              | TY_NUM ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_40 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
              | TY_BOOL ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_41 () in
                  _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
              | REC ->
                  _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
              | LPAREN ->
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
              | FORALL ->
                  _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
              | EXISTS ->
                  _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_INJECT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | _ ->
          _eRR ()
  
  and _menhir_run_126 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_INJECT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SUB ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let v = _v_0 in
              let _v = _menhir_action_17 v in
              _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState127 _tok
          | UNFOLD ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_18 () in
              _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState127 _tok
          | TFN ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
          | RIGHT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_03 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState127 _tok
          | NUM _v_4 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_4 in
              let _v = _menhir_action_16 n in
              _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState127 _tok
          | LPAREN ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
          | LETREC ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
          | LET ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
          | LEFT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_02 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState127 _tok
          | INJECT ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
          | IMPORT ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
          | IF ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
          | FOLD ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
          | FN ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_19 () in
              _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState127 _tok
          | EXPORT ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
          | CASE ->
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
          | _ ->
              _eRR ())
      | DOT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_089 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | AS | BAR | CASE | COMMA | ELSE | EOF | EQ | EXPORT | FALSE | FN | FOLD | GT | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | LT | NUM _ | OR | RBRACE | RPAREN | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_expr2 (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_10 left right in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_128 : type  ttv_stack. (((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_INJECT, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_dir (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | AS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let a = _v_0 in
              let _v = _menhir_action_43 a in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState129 _tok
          | TY_UNIT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_42 () in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState129 _tok
          | TY_NUM ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_40 () in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState129 _tok
          | TY_BOOL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_41 () in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState129 _tok
          | REC ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
          | LPAREN ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
          | FORALL ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
          | EXISTS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IMPORT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              let _menhir_stack = MenhirCell0_VAR (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | COMMA ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | VAR _v_0 ->
                      let _menhir_stack = MenhirCell0_VAR (_menhir_stack, _v_0) in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RPAREN ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | EQ ->
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              (match (_tok : MenhirBasics.token) with
                              | VAR _v_1 ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  let v = _v_1 in
                                  let _v = _menhir_action_17 v in
                                  _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState053 _tok
                              | UNFOLD ->
                                  _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
                              | TRUE ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  let _v = _menhir_action_18 () in
                                  _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState053 _tok
                              | TFN ->
                                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
                              | NUM _v_4 ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  let n = _v_4 in
                                  let _v = _menhir_action_16 n in
                                  _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState053 _tok
                              | LPAREN ->
                                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
                              | LETREC ->
                                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
                              | LET ->
                                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
                              | INJECT ->
                                  _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
                              | IMPORT ->
                                  _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
                              | IF ->
                                  _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
                              | FOLD ->
                                  _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
                              | FN ->
                                  _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
                              | FALSE ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  let _v = _menhir_action_19 () in
                                  _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState053 _tok
                              | EXPORT ->
                                  _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
                              | CASE ->
                                  _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
                              | _ ->
                                  _eRR ())
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_123 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_IMPORT _menhir_cell0_VAR _menhir_cell0_VAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SUB ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | IN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let v = _v_0 in
              let _v = _menhir_action_17 v in
              _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState124 _tok
          | UNFOLD ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_18 () in
              _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState124 _tok
          | TFN ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
          | NUM _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_16 n in
              _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState124 _tok
          | LPAREN ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
          | LETREC ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
          | LET ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
          | INJECT ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
          | IMPORT ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
          | IF ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
          | FOLD ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
          | FN ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_19 () in
              _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState124 _tok
          | EXPORT ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
          | CASE ->
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
          | _ ->
              _eRR ())
      | GT ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_125 : type  ttv_stack. (((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_IMPORT _menhir_cell0_VAR _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AS | BAR | CASE | COMMA | ELSE | EOF | EXPORT | FALSE | FN | FOLD | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | NUM _ | RBRACE | RPAREN | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_expr2 (_menhir_stack, _, e_mod) = _menhir_stack in
          let MenhirCell0_VAR (_menhir_stack, a) = _menhir_stack in
          let MenhirCell0_VAR (_menhir_stack, x) = _menhir_stack in
          let MenhirCell1_IMPORT (_menhir_stack, _menhir_s) = _menhir_stack in
          let e_body = _v in
          let _v = _menhir_action_32 a e_body e_mod x in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_088 : type  ttv_stack. (ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState088 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | _ ->
          _eRR ()
  
  and _menhir_run_118 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | THEN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let v = _v_0 in
              let _v = _menhir_action_17 v in
              _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState119 _tok
          | UNFOLD ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_18 () in
              _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState119 _tok
          | TFN ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | NUM _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_16 n in
              _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState119 _tok
          | LPAREN ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | LETREC ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | LET ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | INJECT ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | IMPORT ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | IF ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | FOLD ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | FN ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_19 () in
              _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState119 _tok
          | EXPORT ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | CASE ->
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | _ ->
              _eRR ())
      | SUB ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_120 : type  ttv_stack. (((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_IF, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SUB ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | ELSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let v = _v_0 in
              let _v = _menhir_action_17 v in
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState121 _tok
          | UNFOLD ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_18 () in
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState121 _tok
          | TFN ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | NUM _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_16 n in
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState121 _tok
          | LPAREN ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | LETREC ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | LET ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | INJECT ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | IMPORT ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | IF ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | FOLD ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | FN ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_19 () in
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState121 _tok
          | EXPORT ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | CASE ->
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | _ ->
              _eRR ())
      | DOT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_122 : type  ttv_stack. ((((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_IF, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AS | BAR | CASE | COMMA | ELSE | EOF | EXPORT | FALSE | FN | FOLD | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | NUM _ | RBRACE | RPAREN | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_expr2 (_menhir_stack, _, then_) = _menhir_stack in
          let MenhirCell1_expr2 (_menhir_stack, _, cond) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let else_ = _v in
          let _v = _menhir_action_24 cond else_ then_ in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_105 : type  ttv_stack. (ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState105 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState105 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState105 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState105 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | _ ->
          _eRR ()
  
  and _menhir_run_106 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | AS | BAR | CASE | COMMA | ELSE | EOF | EXPORT | FALSE | FN | FOLD | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | NUM _ | OR | RBRACE | RPAREN | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_expr2 (_menhir_stack, _menhir_s, left) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_13 left right in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FOLD (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | _ ->
          _eRR ()
  
  and _menhir_run_115 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_FOLD as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SUB ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let a = _v_0 in
              let _v = _menhir_action_43 a in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState116 _tok
          | TY_UNIT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_42 () in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState116 _tok
          | TY_NUM ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_40 () in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState116 _tok
          | TY_BOOL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_41 () in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState116 _tok
          | REC ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
          | LPAREN ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
          | FORALL ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
          | EXISTS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
          | _ ->
              _eRR ())
      | AND ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v ->
              let _menhir_stack = MenhirCell0_VAR (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | COLON ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | VAR _v_0 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let a = _v_0 in
                      let _v = _menhir_action_43 a in
                      _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState059 _tok
                  | TY_UNIT ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _v = _menhir_action_42 () in
                      _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState059 _tok
                  | TY_NUM ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _v = _menhir_action_40 () in
                      _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState059 _tok
                  | TY_BOOL ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _v = _menhir_action_41 () in
                      _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState059 _tok
                  | REC ->
                      _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
                  | LPAREN ->
                      _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
                  | FORALL ->
                      _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
                  | EXISTS ->
                      _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EXPORT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | _ ->
          _eRR ()
  
  and _menhir_run_107 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_EXPORT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WITHOUT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let a = _v_0 in
              let _v = _menhir_action_43 a in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
          | TY_UNIT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_42 () in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
          | TY_NUM ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_40 () in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
          | TY_BOOL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_41 () in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
          | REC ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
          | LPAREN ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
          | FORALL ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
          | EXISTS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
          | _ ->
              _eRR ())
      | SUB ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CASE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState065 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState065 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState065 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState065 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_CASE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SUB ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | VAR _v_0 ->
                      let _menhir_stack = MenhirCell0_VAR (_menhir_stack, _v_0) in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RPAREN ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | ARROW ->
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              (match (_tok : MenhirBasics.token) with
                              | VAR _v_1 ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  let v = _v_1 in
                                  let _v = _menhir_action_17 v in
                                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState095 _tok
                              | UNFOLD ->
                                  _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
                              | TRUE ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  let _v = _menhir_action_18 () in
                                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState095 _tok
                              | TFN ->
                                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
                              | NUM _v_4 ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  let n = _v_4 in
                                  let _v = _menhir_action_16 n in
                                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState095 _tok
                              | LPAREN ->
                                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
                              | LETREC ->
                                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
                              | LET ->
                                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
                              | INJECT ->
                                  _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
                              | IMPORT ->
                                  _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
                              | IF ->
                                  _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
                              | FOLD ->
                                  _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
                              | FN ->
                                  _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
                              | FALSE ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  let _v = _menhir_action_19 () in
                                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState095 _tok
                              | EXPORT ->
                                  _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
                              | CASE ->
                                  _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
                              | _ ->
                                  _eRR ())
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | GT ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_096 : type  ttv_stack. (((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_CASE, _menhir_box_expr_toplevel) _menhir_cell1_expr2 _menhir_cell0_VAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SUB ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RIGHT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | VAR _v_0 ->
                      let _menhir_stack = MenhirCell0_VAR (_menhir_stack, _v_0) in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RPAREN ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | ARROW ->
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              (match (_tok : MenhirBasics.token) with
                              | VAR _v_1 ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  let v = _v_1 in
                                  let _v = _menhir_action_17 v in
                                  _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
                              | UNFOLD ->
                                  _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
                              | TRUE ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  let _v = _menhir_action_18 () in
                                  _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
                              | TFN ->
                                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
                              | NUM _v_4 ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  let n = _v_4 in
                                  let _v = _menhir_action_16 n in
                                  _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
                              | LPAREN ->
                                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
                              | LETREC ->
                                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
                              | LET ->
                                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
                              | INJECT ->
                                  _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
                              | IMPORT ->
                                  _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
                              | IF ->
                                  _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
                              | FOLD ->
                                  _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
                              | FN ->
                                  _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
                              | FALSE ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  let _v = _menhir_action_19 () in
                                  _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
                              | EXPORT ->
                                  _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
                              | CASE ->
                                  _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
                              | _ ->
                                  _eRR ())
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | AND ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_103 : type  ttv_stack. ((((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_CASE, _menhir_box_expr_toplevel) _menhir_cell1_expr2 _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_expr2 _menhir_cell0_VAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_VAR (_menhir_stack, xright) = _menhir_stack in
          let MenhirCell1_expr2 (_menhir_stack, _, eleft) = _menhir_stack in
          let MenhirCell0_VAR (_menhir_stack, xleft) = _menhir_stack in
          let MenhirCell1_expr2 (_menhir_stack, _, e) = _menhir_stack in
          let MenhirCell1_CASE (_menhir_stack, _menhir_s) = _menhir_stack in
          let eright = _v in
          let _v = _menhir_action_23 e eleft eright xleft xright in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_139 : type  ttv_stack. (((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_LPAREN, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_expr2 (_menhir_stack, _, left) = _menhir_stack in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let right = _v in
          let _v = _menhir_action_20 left right in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_146 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VAR _v_0 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v_0 in
          let _v = _menhir_action_17 v in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState146 _tok
      | UNFOLD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | TRUE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState146 _tok
      | TFN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | NUM _v_3 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v_3 in
          let _v = _menhir_action_16 n in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState146 _tok
      | LPAREN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | LETREC ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | LET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | INJECT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | IMPORT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | IF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | FOLD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | FN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | FALSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState146 _tok
      | EXPORT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | EOF ->
          let e = _v in
          let _v = _menhir_action_35 e in
          MenhirBox_expr_toplevel _v
      | CASE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | _ ->
          _eRR ()
  
  and _menhir_run_114 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AS | BAR | CASE | COMMA | ELSE | EOF | EXPORT | FALSE | FN | FOLD | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | NUM _ | RBRACE | RPAREN | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, lam) = _menhir_stack in
          let arg = _v in
          let _v = _menhir_action_04 arg lam in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_141 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VAR _v_0 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v_0 in
          let _v = _menhir_action_17 v in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState141 _tok
      | UNFOLD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | TRUE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState141 _tok
      | TFN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_34 e in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | NUM _v_3 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v_3 in
          let _v = _menhir_action_16 n in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState141 _tok
      | LPAREN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | LETREC ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | LET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | INJECT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | IMPORT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | IF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | FOLD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | FN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | FALSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState141 _tok
      | EXPORT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | CASE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | _ ->
          _eRR ()
  
  and _menhir_run_113 : type  ttv_stack. (((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_FN _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_ty as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VAR _v_0 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v_0 in
          let _v = _menhir_action_17 v in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState113 _tok
      | UNFOLD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | TRUE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState113 _tok
      | TFN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | NUM _v_3 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v_3 in
          let _v = _menhir_action_16 n in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState113 _tok
      | LPAREN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | LETREC ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | LET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | INJECT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | IMPORT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | IF ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | FOLD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | FN ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | FALSE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState113 _tok
      | EXPORT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | CASE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | AND | AS | BAR | COMMA | DIV | DOT | ELSE | EOF | EQ | GT | IN | LBRACE | LBRACKET | LT | MUL | OR | PLUS | RBRACE | RPAREN | SUB | THEN | WITHOUT ->
          let MenhirCell1_ty (_menhir_stack, _, tau) = _menhir_stack in
          let MenhirCell0_VAR (_menhir_stack, x) = _menhir_stack in
          let MenhirCell1_FN (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_15 e tau x in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_136 : type  ttv_stack. ((((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_LETREC _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_ty, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AS | BAR | CASE | COMMA | ELSE | EOF | EXPORT | FALSE | FN | FOLD | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | NUM _ | RBRACE | RPAREN | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_expr2 (_menhir_stack, _, evar) = _menhir_stack in
          let MenhirCell1_ty (_menhir_stack, _, tau) = _menhir_stack in
          let MenhirCell0_VAR (_menhir_stack, x) = _menhir_stack in
          let MenhirCell1_LETREC (_menhir_stack, _menhir_s) = _menhir_stack in
          let ebody = _v in
          let _v = _menhir_action_26 ebody evar tau x in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_134 : type  ttv_stack. (((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_LETREC _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_ty as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SUB ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | IN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let v = _v_0 in
              let _v = _menhir_action_17 v in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
          | UNFOLD ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_18 () in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
          | TFN ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | NUM _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_16 n in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
          | LPAREN ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | LETREC ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | LET ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | INJECT ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | IMPORT ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | IF ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | FOLD ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | FN ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_19 () in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
          | EXPORT ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | CASE ->
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | _ ->
              _eRR ())
      | GT ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_133 : type  ttv_stack. ((((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_LET _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_ty, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AS | BAR | CASE | COMMA | ELSE | EOF | EXPORT | FALSE | FN | FOLD | IF | IMPORT | IN | INJECT | LBRACE | LET | LETREC | LPAREN | NUM _ | RBRACE | RPAREN | TFN | THEN | TRUE | UNFOLD | VAR _ | WITHOUT ->
          let MenhirCell1_expr2 (_menhir_stack, _, evar) = _menhir_stack in
          let MenhirCell1_ty (_menhir_stack, _, tau) = _menhir_stack in
          let MenhirCell0_VAR (_menhir_stack, x) = _menhir_stack in
          let MenhirCell1_LET (_menhir_stack, _menhir_s) = _menhir_stack in
          let ebody = _v in
          let _v = _menhir_action_25 ebody evar tau x in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_131 : type  ttv_stack. (((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_LET _menhir_cell0_VAR, _menhir_box_expr_toplevel) _menhir_cell1_ty as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr2 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SUB ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MUL ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | IN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let v = _v_0 in
              let _v = _menhir_action_17 v in
              _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
          | UNFOLD ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_18 () in
              _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
          | TFN ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | NUM _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_16 n in
              _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
          | LPAREN ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | LETREC ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | LET ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | INJECT ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | IMPORT ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | IF ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | FOLD ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | FN ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_19 () in
              _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState132 _tok
          | EXPORT ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | CASE ->
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | _ ->
              _eRR ())
      | GT ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOT ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_117 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_FOLD, _menhir_box_expr_toplevel) _menhir_cell1_expr2 -> _ -> _ -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr2 (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_FOLD (_menhir_stack, _menhir_s) = _menhir_stack in
      let tau = _v in
      let _v = _menhir_action_29 e tau in
      _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_111 : type  ttv_stack. (((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_EXPORT, _menhir_box_expr_toplevel) _menhir_cell1_expr2, _menhir_box_expr_toplevel) _menhir_cell1_ty -> _ -> _ -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ty (_menhir_stack, _, tau_adt) = _menhir_stack in
      let MenhirCell1_expr2 (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_EXPORT (_menhir_stack, _menhir_s) = _menhir_stack in
      let tau_mod = _v in
      let _v = _menhir_action_31 e tau_adt tau_mod in
      _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_109 : type  ttv_stack. (((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_EXPORT, _menhir_box_expr_toplevel) _menhir_cell1_expr2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | AS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let a = _v_0 in
              let _v = _menhir_action_43 a in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState110 _tok
          | TY_UNIT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_42 () in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState110 _tok
          | TY_NUM ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_40 () in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState110 _tok
          | TY_BOOL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_41 () in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState110 _tok
          | REC ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | LPAREN ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | FORALL ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | EXISTS ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack. (ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_expr2 -> _ -> _ -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_expr2 (_menhir_stack, _menhir_s, e) = _menhir_stack in
          let tau = _v in
          let _v = _menhir_action_28 e tau in
          _menhir_goto_expr2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_FN _menhir_cell0_VAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ARROW ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VAR _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let v = _v_0 in
                  let _v = _menhir_action_17 v in
                  _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
              | UNFOLD ->
                  _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
              | TRUE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_18 () in
                  _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
              | TFN ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
              | NUM _v_3 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let n = _v_3 in
                  let _v = _menhir_action_16 n in
                  _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
              | LPAREN ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
              | LETREC ->
                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
              | LET ->
                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
              | INJECT ->
                  _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
              | IMPORT ->
                  _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
              | IF ->
                  _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
              | FOLD ->
                  _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
              | FN ->
                  _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
              | FALSE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_19 () in
                  _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
              | EXPORT ->
                  _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
              | CASE ->
                  _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_LET _menhir_cell0_VAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | EQ ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let v = _v_0 in
              let _v = _menhir_action_17 v in
              _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
          | UNFOLD ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_18 () in
              _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
          | TFN ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
          | NUM _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_16 n in
              _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
          | LPAREN ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
          | LETREC ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
          | LET ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
          | INJECT ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
          | IMPORT ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
          | IF ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
          | FOLD ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
          | FN ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_19 () in
              _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
          | EXPORT ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
          | CASE ->
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack. ((ttv_stack, _menhir_box_expr_toplevel) _menhir_cell1_LETREC _menhir_cell0_VAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_expr_toplevel) _menhir_state -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | EQ ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let v = _v_0 in
              let _v = _menhir_action_17 v in
              _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040 _tok
          | UNFOLD ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_18 () in
              _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040 _tok
          | TFN ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
          | NUM _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let n = _v_3 in
              let _v = _menhir_action_16 n in
              _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040 _tok
          | LPAREN ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
          | LETREC ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
          | LET ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
          | INJECT ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
          | IMPORT ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
          | IF ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
          | FOLD ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
          | FN ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_19 () in
              _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState040 _tok
          | EXPORT ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
          | CASE ->
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_REC _menhir_cell0_VAR -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_VAR (_menhir_stack, a) = _menhir_stack in
      let MenhirCell1_REC (_menhir_stack, _menhir_s) = _menhir_stack in
      let tau = _v in
      let _v = _menhir_action_36 a tau in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_036 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_47 t in
          _menhir_goto_ty2 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_FORALL _menhir_cell0_VAR -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_VAR (_menhir_stack, a) = _menhir_stack in
      let MenhirCell1_FORALL (_menhir_stack, _menhir_s) = _menhir_stack in
      let tau = _v in
      let _v = _menhir_action_37 a tau in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_034 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_EXISTS _menhir_cell0_VAR -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_VAR (_menhir_stack, a) = _menhir_stack in
      let MenhirCell1_EXISTS (_menhir_stack, _menhir_s) = _menhir_stack in
      let tau = _v in
      let _v = _menhir_action_38 a tau in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_expr_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_17 v in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | UNFOLD ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_18 () in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | TFN ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | NUM _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let n = _v in
          let _v = _menhir_action_16 n in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | LPAREN ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | LETREC ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | LET ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | INJECT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | IMPORT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | IF ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | FOLD ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | FN ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_19 () in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | EXPORT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | CASE ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | _ ->
          _eRR ()
  
  let rec _menhir_run_148 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_type_toplevel =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VAR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let a = _v in
          let _v = _menhir_action_43 a in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState148 _tok
      | TY_UNIT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_42 () in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState148 _tok
      | TY_NUM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_40 () in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState148 _tok
      | TY_BOOL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_41 () in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState148 _tok
      | REC ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | FORALL ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | EXISTS ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | _ ->
          _eRR ()
  
end

let type_toplevel =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_type_toplevel v = _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let expr_toplevel =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_expr_toplevel v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
