Section Eq.
Variable A:SType.
Definition eq : A->A->prop := fun x y:A => forall Q:A->A->prop, Q x y -> Q y x.
End Eq.
Infix = 502 := eq.
Section Ex.
Variable A:SType.
Definition ex : (A->prop)->prop := fun Q:A->prop => forall P:prop, (forall x:A, Q x -> P) -> P.
End Ex.
(* Unicode exists "2203" *)
Binder+ exists , := ex.
(* Parameter Eps_i "174b78e53fc239e8c2aab4ab5a996a27e3e5741e88070dad186e05fb13f275e5" *)
Parameter Eps_i : (set->prop)->set.
Parameter In:set->set->prop.
Parameter Empty : set.
(* Unicode Union "22C3" *)
Parameter Union : set->set.
(* Unicode Power "1D4AB" *)
Parameter Power : set->set.
Parameter Repl : set -> (set -> set) -> set.
Notation Repl Repl.
Parameter UnivOf : set->set.
Definition ChurchNum_3ary_proj_p : (((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set) -> prop :=
 (fun x0 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set => forall x1 : (((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set) -> prop, x1 (fun x2 x3 x4 : (set -> set) -> set -> set => x2) -> x1 (fun x2 x3 x4 : (set -> set) -> set -> set => x3) -> x1 (fun x2 x3 x4 : (set -> set) -> set -> set => x4) -> x1 x0).
Definition ChurchNum_8ary_proj_p : (((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set) -> prop :=
 (fun x0 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set => forall x1 : (((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set) -> prop, x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 : (set -> set) -> set -> set => x2) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 : (set -> set) -> set -> set => x3) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 : (set -> set) -> set -> set => x4) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 : (set -> set) -> set -> set => x5) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 : (set -> set) -> set -> set => x6) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 : (set -> set) -> set -> set => x7) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 : (set -> set) -> set -> set => x8) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 : (set -> set) -> set -> set => x9) -> x1 x0).
(* Parameter ordsucc "9db634daee7fc36315ddda5f5f694934869921e9c5f55e8b25c91c0a07c5cbec" "65d8837d7b0172ae830bed36c8407fcd41b7d875033d2284eb2df245b42295a6" *)
Parameter ordsucc : set -> set.
Notation Nat Empty ordsucc.
Definition ChurchNums_3x8_to_u24 : (((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set) -> (((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set) -> set :=
 (fun x0 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set => fun x1 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set => x0 (x1 (fun x2 : set -> set => fun x3 : set => x3) (fun x2 : set -> set => x2) (fun x2 : set -> set => fun x3 : set => x2 (x2 x3)) (fun x2 : set -> set => fun x3 : set => x2 (x2 (x2 x3))) (fun x2 : set -> set => fun x3 : set => x2 (x2 (x2 (x2 x3)))) (fun x2 : set -> set => fun x3 : set => x2 (x2 (x2 (x2 (x2 x3))))) (fun x2 : set -> set => fun x3 : set => x2 (x2 (x2 (x2 (x2 (x2 x3)))))) (fun x2 : set -> set => fun x3 : set => x2 (x2 (x2 (x2 (x2 (x2 (x2 x3)))))))) (fun x2 : set -> set => fun x3 : set => x2 (x2 (x2 (x2 (x2 (x2 (x2 (x2 (x1 (fun x4 : set -> set => fun x5 : set => x5) (fun x4 : set -> set => x4) (fun x4 : set -> set => fun x5 : set => x4 (x4 x5)) (fun x4 : set -> set => fun x5 : set => x4 (x4 (x4 x5))) (fun x4 : set -> set => fun x5 : set => x4 (x4 (x4 (x4 x5)))) (fun x4 : set -> set => fun x5 : set => x4 (x4 (x4 (x4 (x4 x5))))) (fun x4 : set -> set => fun x5 : set => x4 (x4 (x4 (x4 (x4 (x4 x5)))))) (fun x4 : set -> set => fun x5 : set => x4 (x4 (x4 (x4 (x4 (x4 (x4 x5))))))) x2 x3))))))))) (fun x2 : set -> set => fun x3 : set => x2 (x2 (x2 (x2 (x2 (x2 (x2 (x2 (x2 (x2 (x2 (x2 (x2 (x2 (x2 (x2 (x1 (fun x4 : set -> set => fun x5 : set => x5) (fun x4 : set -> set => x4) (fun x4 : set -> set => fun x5 : set => x4 (x4 x5)) (fun x4 : set -> set => fun x5 : set => x4 (x4 (x4 x5))) (fun x4 : set -> set => fun x5 : set => x4 (x4 (x4 (x4 x5)))) (fun x4 : set -> set => fun x5 : set => x4 (x4 (x4 (x4 (x4 x5))))) (fun x4 : set -> set => fun x5 : set => x4 (x4 (x4 (x4 (x4 (x4 x5)))))) (fun x4 : set -> set => fun x5 : set => x4 (x4 (x4 (x4 (x4 (x4 (x4 x5))))))) x2 x3))))))))))))))))) ordsucc 0).
Definition ChurchNums_8x3_to_3_lt6_id_ge6_rot2 : (((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set) -> (((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set :=
 (fun x0 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set => fun x1 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set => fun x2 x3 x4 : (set -> set) -> set -> set => x0 (x1 x2 x3 x4) (x1 x2 x3 x4) (x1 x2 x3 x4) (x1 x2 x3 x4) (x1 x2 x3 x4) (x1 x2 x3 x4) (x1 x3 x4 x2) (x1 x3 x4 x2)).
Definition ChurchNums_8_perm_2_3_4_5_6_7_0_1 : (((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set :=
 (fun x0 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set => fun x1 x2 x3 x4 x5 x6 x7 x8 : (set -> set) -> set -> set => x0 x3 x4 x5 x6 x7 x8 x1 x2).
Axiom missingprop_e1395c79bc0f440e16eb4bbcd69e6e2a2c60d5846fbb6295202df895741f05ca : (forall x0 x1 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set, forall x2 x3 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set, ChurchNum_3ary_proj_p x0 -> ChurchNum_8ary_proj_p x2 -> ChurchNum_3ary_proj_p x1 -> ChurchNum_8ary_proj_p x3 -> x0 = (fun x5 x6 x7 : (set -> set) -> set -> set => x1 x6 x7 x5) -> ChurchNums_3x8_to_u24 (ChurchNums_8x3_to_3_lt6_id_ge6_rot2 x2 x0) (ChurchNums_8_perm_2_3_4_5_6_7_0_1 x2) = ChurchNums_3x8_to_u24 x1 x3 -> (forall x4 : prop, x4)).
Definition TwoRamseyGraph_4_5_24_ChurchNums_3x8 : (((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set) -> (((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set) -> (((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set) -> (((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set) -> set -> set -> set :=
 (fun x0 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set => fun x1 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set => fun x2 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set => fun x3 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set => fun x4 : set => x0 (x1 (x2 (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5))) (x2 (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5))) (x2 (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6))) (x2 (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5))) (x2 (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6))) (x2 (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6))) (x2 (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6))) (x2 (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5)))) (x1 (x2 (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5))) (x2 (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6))) (x2 (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6))) (x2 (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6))) (x2 (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6))) (x2 (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6))) (x2 (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5))) (x2 (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5)))) (x1 (x2 (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6))) (x2 (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6))) (x2 (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6))) (x2 (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5))) (x2 (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6))) (x2 (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5))) (x2 (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5))) (x2 (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5)) (x3 (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => fun x6 : set => x6) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5) (fun x5 : set -> set => x5)))) (fun x5 : set => x4)).
Definition False : prop :=
 (forall x0 : prop, x0).
Axiom FalseE : False -> (forall x0 : prop, x0).
Definition u1 : set :=
 1.
Definition u2 : set :=
 ordsucc u1.
Definition u3 : set :=
 ordsucc u2.
Axiom neq_3_2 : u3 = u2 -> (forall x0 : prop, x0).
Definition u4 : set :=
 ordsucc u3.
Definition u5 : set :=
 ordsucc u4.
Axiom neq_5_2 : u5 = u2 -> (forall x0 : prop, x0).
Definition u6 : set :=
 ordsucc u5.
Axiom neq_6_2 : u6 = u2 -> (forall x0 : prop, x0).
Definition u7 : set :=
 ordsucc u6.
Axiom neq_7_2 : u7 = u2 -> (forall x0 : prop, x0).
Axiom neq_4_3 : u4 = u3 -> (forall x0 : prop, x0).
Axiom neq_6_3 : u6 = u3 -> (forall x0 : prop, x0).
Axiom neq_7_3 : u7 = u3 -> (forall x0 : prop, x0).
Axiom neq_5_4 : u5 = u4 -> (forall x0 : prop, x0).
Axiom neq_7_4 : u7 = u4 -> (forall x0 : prop, x0).
Axiom neq_5_0 : u5 = 0 -> (forall x0 : prop, x0).
Axiom neq_6_5 : u6 = u5 -> (forall x0 : prop, x0).
Axiom neq_6_1 : u6 = u1 -> (forall x0 : prop, x0).
Axiom neq_7_6 : u7 = u6 -> (forall x0 : prop, x0).
Axiom neq_7_0 : u7 = 0 -> (forall x0 : prop, x0).
Definition u8 : set :=
 ordsucc u7.
Axiom neq_8_0 : u8 = 0 -> (forall x0 : prop, x0).
Axiom neq_8_1 : u8 = u1 -> (forall x0 : prop, x0).
Axiom neq_8_3 : u8 = u3 -> (forall x0 : prop, x0).
Definition u9 : set :=
 ordsucc u8.
Axiom neq_9_0 : u9 = 0 -> (forall x0 : prop, x0).
Axiom neq_9_1 : u9 = u1 -> (forall x0 : prop, x0).
Axiom neq_9_2 : u9 = u2 -> (forall x0 : prop, x0).
Axiom neq_9_4 : u9 = u4 -> (forall x0 : prop, x0).
Definition u10 : set :=
 ordsucc u9.
Axiom missingprop_5f3179724a6e8ef693da33b4da734e3c0d8d3295b89093b2f129371490f35854 : u10 = u2 -> (forall x0 : prop, x0).
Definition u11 : set :=
 ordsucc u10.
Axiom missingprop_93bd155ae66f9293399dab321235e159c709aa50be6b4209e260d5c571069bc3 : u11 = u2 -> (forall x0 : prop, x0).
Definition u12 : set :=
 ordsucc u11.
Axiom missingprop_9925a94179f9b96e15bb2f5f3151446cc17d0f38ddaec97b207a42442fb0efed : u12 = u2 -> (forall x0 : prop, x0).
Definition u13 : set :=
 ordsucc u12.
Axiom missingprop_0563767a7ae8cf0f38a2ce998f4f61c0f4d5f10bd129b2c62e0e73969f860e28 : u13 = u2 -> (forall x0 : prop, x0).
Definition u14 : set :=
 ordsucc u13.
Axiom missingprop_2451f846ade20c2c83b68d6ca07174f7098b4b15fe1ab38e4417b5ec5afc3945 : u14 = u2 -> (forall x0 : prop, x0).
Axiom missingprop_6c307483f1e9d79cbd1be8f99cb0623b215d2a96dd7ca22776b1132e2b377d33 : u11 = u3 -> (forall x0 : prop, x0).
Axiom missingprop_21d350f752803e70816c84c0f32485027c6c1878657f7263a7ebfa87995c9b6a : u12 = u3 -> (forall x0 : prop, x0).
Axiom missingprop_f23c647528c9edaac83020c9ff5a3f2c5a7a4a9b995a628c2a71b9eb6cd8e669 : u13 = u3 -> (forall x0 : prop, x0).
Axiom missingprop_8d07e49985de556386320c4394a4f81f882951458280531346f93de382828ccf : u14 = u3 -> (forall x0 : prop, x0).
Definition u15 : set :=
 ordsucc u14.
Axiom missingprop_c966e250c9e0036300c545a4c37f99c2c56d590f24ba184faeb741ac623ddc71 : u15 = u3 -> (forall x0 : prop, x0).
Axiom neq_8_4 : u8 = u4 -> (forall x0 : prop, x0).
Axiom missingprop_0aa1897333a9220b7c647af2a5a102d331686166cd7d81d697467978bffb14b8 : u12 = u4 -> (forall x0 : prop, x0).
Axiom missingprop_0b3e3e45ef080c7b7a49c00c4067713ad08b47ab8b0713e5aaab56e6d7a5b982 : u13 = u4 -> (forall x0 : prop, x0).
Axiom missingprop_5c17fff000510475687b445d243a8658952ee19ef7f469feb3e238dfb5022180 : u14 = u4 -> (forall x0 : prop, x0).
Axiom missingprop_a504807aba1f063c619c47c7790e6a97b78d6221a696d3a06eab792e3bc4d832 : u15 = u4 -> (forall x0 : prop, x0).
Axiom neq_8_5 : u8 = u5 -> (forall x0 : prop, x0).
Axiom neq_9_5 : u9 = u5 -> (forall x0 : prop, x0).
Axiom missingprop_1a168a095e76e59ad83d93a60c30f2a4b23a38b25f72b379498ed6c0a6728b15 : u10 = u5 -> (forall x0 : prop, x0).
Axiom missingprop_708a12eb026e4d3c08fc829f55688c54d28c54b0af95cbb973e74a0d726eddda : u13 = u5 -> (forall x0 : prop, x0).
Axiom missingprop_8e078aa58d96c679c691026d3dbd3c5ddf82d7052472d7ebfc54e4b027091692 : u14 = u5 -> (forall x0 : prop, x0).
Axiom missingprop_6be75df4f14c9bfa3abf6ed370fc5224c8cd92769e2571dbc7f3e2b0899c3f2a : u15 = u5 -> (forall x0 : prop, x0).
Axiom neq_9_6 : u9 = u6 -> (forall x0 : prop, x0).
Axiom missingprop_1caafcfab421a8bbf73edb3267db1f6908bd5029c181663700c5c637b54bb883 : u10 = u6 -> (forall x0 : prop, x0).
Axiom missingprop_a218356df980789875659155b1ed2b3563be2916e1184b396ad2583b0b523a18 : u11 = u6 -> (forall x0 : prop, x0).
Axiom missingprop_521d57c2f7a8a26330ae69c04fff1b24cc86e4837a4836a4fefa73fad1a725cc : u14 = u6 -> (forall x0 : prop, x0).
Axiom missingprop_6163c724a9d7981c89b6bf365a0bebe9efec08b9eff4bb6184424f2ae3577228 : u15 = u6 -> (forall x0 : prop, x0).
Axiom neq_8_7 : u8 = u7 -> (forall x0 : prop, x0).
Axiom missingprop_f90d6a14135c76785343d196a602714aaebc8f848035cb3fc7d99e4a8069fa52 : u10 = u7 -> (forall x0 : prop, x0).
Axiom missingprop_10a35d241244d98b266514a8fe38926cbcc9f4c51c46fbe5923bab64f9db063e : u11 = u7 -> (forall x0 : prop, x0).
Axiom missingprop_944319b563f360f8276cf6ed579bfd97549280496ef3a59878dc7367e0289497 : u12 = u7 -> (forall x0 : prop, x0).
Axiom missingprop_03bfa5a110b404de8380cbf91407efa16bc92e74bb78c456f8556ff689d59c2c : u15 = u7 -> (forall x0 : prop, x0).
Axiom neq_9_8 : u9 = u8 -> (forall x0 : prop, x0).
Axiom missingprop_e3e7876f64d57e7b4aae114d87715d9a64fc4129a1a28df53f278ae0d8499348 : u11 = u8 -> (forall x0 : prop, x0).
Axiom missingprop_405ba169154d9d42445b73345355e3c1ff4a4c35ee248b0842bd8e1a26057bf4 : u12 = u8 -> (forall x0 : prop, x0).
Axiom missingprop_e20a3f49533352fe1b05bebbb2ae624ad084f8a027d8217543b43ae55b811240 : u13 = u8 -> (forall x0 : prop, x0).
Axiom missingprop_36b306548a78300032c69ad94745ff48aa8608e8a430eca548c144b9c231bda4 : u10 = u9 -> (forall x0 : prop, x0).
Axiom missingprop_e9452875caa538a193e13eb1accc0d1d2221ffa1eb64478ef4b831d0c7fb8587 : u12 = u9 -> (forall x0 : prop, x0).
Axiom missingprop_2f6e5b1338db3ff412e38a1ecfa4d466e2517777a8bbed02c867df317c357933 : u13 = u9 -> (forall x0 : prop, x0).
Axiom missingprop_16378467aced8215056140af611424a7d8477e41af2c1f3af8bef49b9f0df0b7 : u14 = u9 -> (forall x0 : prop, x0).
Axiom missingprop_b3205a5f97a9b7efdf9cf8b544efa479d104ae9763ca62a574fc2597b5138348 : ChurchNum_3ary_proj_p (fun x0 x1 x2 : (set -> set) -> set -> set => x0).
Axiom missingprop_f3fbe0dcd7af60cbd2c45144c1a80d31889ed8fd9e1689678c35da17d6e44ed6 : ChurchNum_3ary_proj_p (fun x0 x1 x2 : (set -> set) -> set -> set => x2).
Axiom missingprop_e6edcda273718db468f4cfbb333cc08373d8662c42f27ca851ee375409a4b89e : ChurchNum_3ary_proj_p (fun x0 x1 x2 : (set -> set) -> set -> set => x1).
Axiom missingprop_4ab2aef55b95fb08a1edd1a27d2fff79c4fc64f365bf3591ff27be743265541f : u11 = u10 -> (forall x0 : prop, x0).
Axiom missingprop_611c167b8d8d5c2c171ede951fd79aafcb1fd16fb816a3f0e5c0edff9bd7addf : u13 = u10 -> (forall x0 : prop, x0).
Axiom missingprop_3e7054688acb8ba4a0f18423b649f383cf90ecfc4f6200e2e049d580ebc2dc1f : u14 = u10 -> (forall x0 : prop, x0).
Axiom missingprop_c2d8fac90c753ba98b910dfebba93313752c3581721985e0c507115f57afbe2d : u15 = u10 -> (forall x0 : prop, x0).
Axiom missingprop_dd600363d78f5191d99ddf5f03f668be69bef6f49770dc87b299c981791e709b : u12 = u11 -> (forall x0 : prop, x0).
Axiom missingprop_00afc3423aeef527fa52daa0e685caaf0adcec70a4145f09454ed0ecaf166b37 : u14 = u11 -> (forall x0 : prop, x0).
Axiom missingprop_ee5d720135ac2a1e6675f04fc296d39836826d1754aace8d3d88db80c3a9bf7b : u15 = u11 -> (forall x0 : prop, x0).
Axiom missingprop_f4e278a6bf4004a90230a7ce4599c33df3b13afc88036ef1d8ff3a4ef834b193 : u13 = u12 -> (forall x0 : prop, x0).
Axiom missingprop_b71ad64ae5ee6739b72b7cf6202281008bcc9edc7ad98b81f40c22a64711fdc6 : u15 = u12 -> (forall x0 : prop, x0).
Axiom missingprop_ccf4a5c6b3a6e4954a14109684a2ab83b52a2425e80e3019435c7a784c78b93f : u14 = u13 -> (forall x0 : prop, x0).
Axiom missingprop_9052a17aeb56f0baa5bd35ac678f9db733e32e563a9d0a61b0417ed4592a2293 : u15 = u14 -> (forall x0 : prop, x0).
Axiom missingprop_85105fca2bacc886dc8c29d2893d8d6f48bf2df156b5c5ec0c4e6b02418bc580 : u15 = u8 -> (forall x0 : prop, x0).
Definition u16 : set :=
 ordsucc u15.
Axiom missingprop_14e13a8771031ad5c0fbcddcde043936c377ce19df59c8a5042720afd8292b32 : u16 = u8 -> (forall x0 : prop, x0).
Axiom missingprop_ce4f8ce5934f96e0a92d8234aa49fd2e8ec60a5807531af02b0c19b05dffb12a : u16 = u9 -> (forall x0 : prop, x0).
Axiom missingprop_47b0549db93ebcad72e3d90923d72379e5655902a485807edad02af70ddd3445 : u16 = u11 -> (forall x0 : prop, x0).
Definition u17 : set :=
 ordsucc u16.
Axiom missingprop_027e16179ffa873e39aef19aef614c18046cbcf4d3543939e625bd021d996281 : u17 = u8 -> (forall x0 : prop, x0).
Axiom missingprop_b4b3a0dfa06748759f5a505b09d8dd0c2a7429c04dab53e0f6653afd1b6dfda2 : u17 = u9 -> (forall x0 : prop, x0).
Axiom missingprop_188cfa634d7792bd8dc29273791ddd9c2cc6f62f72e402ad8af062f1bf4a9fe0 : u17 = u10 -> (forall x0 : prop, x0).
Axiom missingprop_8eaa93cc7c4bcbcbb1f07d443104b205adf3348852d4ec8f16651f667e0e3468 : u17 = u12 -> (forall x0 : prop, x0).
Definition u18 : set :=
 ordsucc u17.
Axiom missingprop_06cb0ea543f1131f3e8888a6c830beba57dd4d090b172cbec554e85157657538 : u18 = u10 -> (forall x0 : prop, x0).
Definition u19 : set :=
 ordsucc u18.
Axiom missingprop_b8f9d436cada92bb5706d58b3abdb2fdd8828ac9348fb88bbc431043cd38f19b : u19 = u10 -> (forall x0 : prop, x0).
Definition u20 : set :=
 ordsucc u19.
Axiom missingprop_4c44e9910de1ccdd79adf74018ddb18e905f381c61d9473af47382c1483f4394 : u20 = u10 -> (forall x0 : prop, x0).
Definition u21 : set :=
 ordsucc u20.
Axiom missingprop_4e08fb9268e7317e322f86bd0dde127d3b7b95da8719753d5c104a6982cc063e : u21 = u10 -> (forall x0 : prop, x0).
Definition u22 : set :=
 ordsucc u21.
Axiom missingprop_db48afe6d81cca8de5f9f48fe0446680943dac9826858fd3cbbf5e4280bafdcf : u22 = u10 -> (forall x0 : prop, x0).
Axiom missingprop_154a30b1ba8ed32508f5174ba5885dce8daae06cb35a638aeda5f521f1a436ed : u19 = u11 -> (forall x0 : prop, x0).
Axiom missingprop_79d2fca345eda4af691531ad5682523df90b5c0b299e09c9d4285223605ce63c : u20 = u11 -> (forall x0 : prop, x0).
Axiom missingprop_c6f79178ace284c233acbca2f2bfe44b665a0e85286917e8a76d1fb24d2247cb : u21 = u11 -> (forall x0 : prop, x0).
Axiom missingprop_84eafe0d1b390e2c8ff6926ca29d0a2cfa95e4e3cceeadff53b06e532c7ee510 : u22 = u11 -> (forall x0 : prop, x0).
Definition u23 : set :=
 ordsucc u22.
Axiom missingprop_edc90758b6bceec12cd2852605ab6c0cf318cd2093fdeb237fe64673c166de16 : u23 = u11 -> (forall x0 : prop, x0).
Axiom missingprop_0c2339ef07f9be63916ba4ed21f5ed3d1c0fc25d2883650f1a08db958e637e32 : u16 = u12 -> (forall x0 : prop, x0).
Axiom missingprop_4eeb91a845b6b9854e48c0871432d0561dea9e45a9f24a85d7c8d3788f407651 : u20 = u12 -> (forall x0 : prop, x0).
Axiom missingprop_b966820c7aa93ffebe633e360c4479000585c1fd468b8e479371445e5051ff71 : u21 = u12 -> (forall x0 : prop, x0).
Axiom missingprop_7e8a63e62facb395416e18e6390ddb6e54414ca309ab080ad6c05b1cba7169d6 : u22 = u12 -> (forall x0 : prop, x0).
Axiom missingprop_f3350d540e6867a7972a4724037660c5998ce0128ad87813a498c55bf9b5e591 : u23 = u12 -> (forall x0 : prop, x0).
Axiom missingprop_4e5614ee6c60ca75b34344cfddfbe4840c89f999d594b201761970f40f5f2255 : u16 = u13 -> (forall x0 : prop, x0).
Axiom missingprop_ec9593399259670f4eff77c972d13de69785d35423977aacd7e0e7a77e866b61 : u17 = u13 -> (forall x0 : prop, x0).
Axiom missingprop_7a7799a9fec173b362f0323fa1cd53f8e2240349c54f9f849ff0506280ed3fdd : u18 = u13 -> (forall x0 : prop, x0).
Axiom missingprop_7bff456dcf0c6179c7c7c0cb5bf08d4b612cd3ffda36c7c8e882abbc5bab0d88 : u21 = u13 -> (forall x0 : prop, x0).
Axiom missingprop_4bda510fa59565c972daf3b7894de1634e3beb70c17fd84fc8f96681845e717c : u22 = u13 -> (forall x0 : prop, x0).
Axiom missingprop_8b2525a889d10b2b37df4af1f93109cc5d7cb5f1147f3d65577292744da4c69f : u23 = u13 -> (forall x0 : prop, x0).
Axiom missingprop_4867b3ce4fe1d0a1c8ff8d2e2bc0717758c4ccc013cbbaaf26121557137d2316 : u17 = u14 -> (forall x0 : prop, x0).
Axiom missingprop_95a48bd166473dd69fbd1d6c212b33b8b186a59fa5f64873a57a406abcd861d7 : u18 = u14 -> (forall x0 : prop, x0).
Axiom missingprop_3346d99f6d06c90cda72f58c2f46939ea074b3d5a031da53d39ffce163945e71 : u19 = u14 -> (forall x0 : prop, x0).
Axiom missingprop_1f3ba6ce64d22904fe3f03c25b93125cef371fad4d06cee0d696df58b78120b4 : u22 = u14 -> (forall x0 : prop, x0).
Axiom missingprop_d82e765d00a8799463c324ef9ec7c7c436edcee826c7fc1ed50b0c5cd110e221 : u23 = u14 -> (forall x0 : prop, x0).
Axiom missingprop_5f312c1824a4beefed581d01c6269bf8f1701f7ed4c65d144b4397173c0fe00c : u16 = u15 -> (forall x0 : prop, x0).
Axiom missingprop_fc69b4f24fa74882a934d6a846b06596684e5849597d21231c600ed2d7a43c70 : u18 = u15 -> (forall x0 : prop, x0).
Axiom missingprop_6d740d9c9b188e805405e2d34ec9986e71b10c02400c25af6128c2cd7b43204a : u19 = u15 -> (forall x0 : prop, x0).
Axiom missingprop_5245e3a3c3ee6620a813736bf4eb5de53c89de5d8d032cfe0debc9762d766677 : u20 = u15 -> (forall x0 : prop, x0).
Axiom missingprop_bb52478d225379f7724a33bf76ceb0cd21e2b61279405cff8ab60082cbd3a678 : u23 = u15 -> (forall x0 : prop, x0).
Axiom missingprop_48ad08e3fcea446c4edb5e27702cf310c322bf29128458b86d14b643f3111333 : u17 = u16 -> (forall x0 : prop, x0).
Axiom missingprop_f4eab5da6a90e1d04224584391affbc6b18c42542dd60d5730fe3dc72ad0cd62 : u19 = u16 -> (forall x0 : prop, x0).
Axiom missingprop_e5a105866bd0ded6c3644380e06b833d4aba44e9391e3fab11d8053b9f135f2f : u20 = u16 -> (forall x0 : prop, x0).
Axiom missingprop_27b04c6ef66b613766daae2a56f7236acc35ce71d168daa18f380fbaac44960e : u21 = u16 -> (forall x0 : prop, x0).
Axiom missingprop_73b9cd20f7c68e88e2ea426419ccd36b4d3b28c76cc72d670d7f8ae953c13bf1 : u18 = u17 -> (forall x0 : prop, x0).
Axiom missingprop_e875d4259eccd00196f9a81452eacf721af588c7e9269dc84035cecf04073b0a : u20 = u17 -> (forall x0 : prop, x0).
Axiom missingprop_5d7ae603d28081618c996edf9b87bde4055fc620b70ee849067dc72a1770788c : u21 = u17 -> (forall x0 : prop, x0).
Axiom missingprop_3a4b2ea3c1b4ee0aa42dcb331f55f73218e466e32c5d0492d914d096e2590144 : u22 = u17 -> (forall x0 : prop, x0).
Axiom missingprop_efa1d73733dbc5a8ae5a619684c14c29ddbe77bafcb128cb54636ceeb244a607 : u18 = u2 -> (forall x0 : prop, x0).
Axiom missingprop_3a7b934d7ddbd20a9e0903f2e32b7a26618ef93ffbea28de94535c59de69b9d2 : u18 = u3 -> (forall x0 : prop, x0).
Axiom missingprop_7a2a7d79f58f1a8ab2a9c85b1353d3c76c2bde99aca8f458ec796bdb22fd6792 : u18 = u4 -> (forall x0 : prop, x0).
Axiom missingprop_d83dad648efc18d38402e1c2bed2c4218fb94161d6f09d73e65dd826ebcdade1 : u18 = u5 -> (forall x0 : prop, x0).
Axiom missingprop_bfa78384ac30acdfb4ec29b6c82e28746fbf661532a214abaa8063172ead9db8 : u18 = u6 -> (forall x0 : prop, x0).
Axiom missingprop_d7cf3bd48dcbe76e88e96e7372dc0dbc5c8fe92cd35e3d83899abc89d027d482 : u19 = 0 -> (forall x0 : prop, x0).
Axiom missingprop_07e454a581ae12456411a99180327bb4cb9a5e9e31166fb37c99add73f8af102 : u19 = u3 -> (forall x0 : prop, x0).
Axiom missingprop_7cef4da175a1a28f6d93e755ff21bf5c4f572cedc33b9a9449f114cf5e596796 : u19 = u4 -> (forall x0 : prop, x0).
Axiom missingprop_0dd50f4d116b52218f20eed44696e4dc1eb1af8c398cff0ede31c8f12b1df7cb : u19 = u5 -> (forall x0 : prop, x0).
Axiom missingprop_597c22e2aab3a6e2ffbdc7fe889a854131926294e9275de243b6522178c570b6 : u19 = u6 -> (forall x0 : prop, x0).
Axiom missingprop_16ed18176d2f3b371c0649663a9aa610541baf2b5992183b45e2862c0cca0895 : u19 = u7 -> (forall x0 : prop, x0).
Axiom missingprop_961499f8542074f8c18d781755f9f77c78ed32eb1a4f15b1f06614982543eb0b : u20 = 0 -> (forall x0 : prop, x0).
Axiom missingprop_075fbc5555641f368438a928699946cc662737ebfb4f586118b363c54cf55c49 : u20 = u1 -> (forall x0 : prop, x0).
Axiom missingprop_617ded5945d02521c4f1fa7542987fa17505128e7afceb8852fff1bc6624651f : u20 = u4 -> (forall x0 : prop, x0).
Axiom missingprop_16d3859a968c41b5d7a6a72b19fbdd2fc41293fd397b17f2f0d866514da73a4d : u20 = u5 -> (forall x0 : prop, x0).
Axiom missingprop_8e0ae80abde104b2158032c1bd706d90d9be4907040682846c5ec08e754649e9 : u20 = u6 -> (forall x0 : prop, x0).
Axiom missingprop_1da364b9799c552ea62d37691fe41f39149eeb259e0f35cf2ce732f0b9a775c4 : u20 = u7 -> (forall x0 : prop, x0).
Axiom missingprop_172f2affd770fc4865199fceeb6667b9418cbfb12988961b0522b9fcaefa561f : u21 = 0 -> (forall x0 : prop, x0).
Axiom missingprop_0a793590be20ff8e25a7a7b0c0297235ca4eaab6a5fd8d4f3d05cd6dc9695d58 : u21 = u1 -> (forall x0 : prop, x0).
Axiom missingprop_9ebddbd7f6b0131adbbf7082558fbe3f772cf04d0df387b98020255a49ffa38c : u21 = u2 -> (forall x0 : prop, x0).
Axiom missingprop_474678d10c6651308785c425ec0f4ec4fae0ba2b89c92c45cc5b34f72aa4bcfa : u21 = u5 -> (forall x0 : prop, x0).
Axiom missingprop_b0b253a23221775c0895b3df81870aa85de69fe16667385e39307bb1011c4b25 : u21 = u6 -> (forall x0 : prop, x0).
Axiom missingprop_dde3231b90d94ea6cf99454dc2e9899d7655e810c32260432b6ef45d9b585e7d : u21 = u7 -> (forall x0 : prop, x0).
Axiom missingprop_45a64368e1c57028abfd9fa6ed583fc783c2b40be93475c6caa3fd23bbae3d49 : u22 = u1 -> (forall x0 : prop, x0).
Axiom missingprop_28a93ac24d94b617505eb1b786cd962b918d2929cbc8be70154d9c3a16656a4b : u22 = u2 -> (forall x0 : prop, x0).
Axiom missingprop_f08af6917dfd5a6de427d953dfa23f578150954942b1e4b2d0a6aca2a1b6af41 : u22 = u3 -> (forall x0 : prop, x0).
Axiom missingprop_b998e83fd732a075c67f08f28f38284301bacc47da5d14e18c44e74250b8af33 : u22 = u6 -> (forall x0 : prop, x0).
Axiom missingprop_a2542908abdf53f904b6e5f9152b60e61b8a2f2253a62977330437aba06869fc : u22 = u7 -> (forall x0 : prop, x0).
Axiom missingprop_979c189cc637d3afe72473e9489dd77c5b5f6c5dc0c5c0189cecdbcf7fe064e4 : u23 = 0 -> (forall x0 : prop, x0).
Axiom missingprop_ddac1988a2199344800a986643397dbf7b977152e2795c780f668d66763c7142 : u23 = u2 -> (forall x0 : prop, x0).
Axiom missingprop_30b4a643cd067cfd4a20b14b81dfdf6822c9b14e9e7bb4190f2b11f7f27ef255 : u23 = u3 -> (forall x0 : prop, x0).
Axiom missingprop_94d90abb2e4f8def35ed3e9c49d7f5a2823da9f3a93b02b69864d66cdd4e562f : u23 = u4 -> (forall x0 : prop, x0).
Axiom missingprop_65b2d9f8447f26f98a13ecedfc75c7bfeb12f78009a508fb3b6f9195edc138fd : u23 = u7 -> (forall x0 : prop, x0).
Axiom neq_1_0 : u1 = 0 -> (forall x0 : prop, x0).
Axiom neq_3_0 : u3 = 0 -> (forall x0 : prop, x0).
Axiom neq_4_0 : u4 = 0 -> (forall x0 : prop, x0).
Axiom neq_2_1 : u2 = u1 -> (forall x0 : prop, x0).
Axiom neq_4_1 : u4 = u1 -> (forall x0 : prop, x0).
Axiom neq_5_1 : u5 = u1 -> (forall x0 : prop, x0).
Axiom missingprop_fa5098b34d383bdca73a3b8d5098cb7d610846f369975f1b68176e99916d56fc : u19 = u18 -> (forall x0 : prop, x0).
Axiom missingprop_116e7cbd999186ad5cfa2811a7b1efe9808f1d43fddc92f1fecc1f6d9298b665 : u21 = u18 -> (forall x0 : prop, x0).
Axiom missingprop_4249317584a93eea4ea9a17155e60b737afb0c5091a7dcfe593f93235e696685 : u22 = u18 -> (forall x0 : prop, x0).
Axiom missingprop_2ec03848b048379ca0069dd1adb70ea27ec2dc12b75b099de37936b16b04af66 : u23 = u18 -> (forall x0 : prop, x0).
Axiom missingprop_9d0b3600c1008810e1dcd2f5d5b69567f51704fcc4b0f5a23b2c520b26cc4e6b : u20 = u19 -> (forall x0 : prop, x0).
Axiom missingprop_1a53f970fcf4ee84e2f9d30498e0319f427d029bd6cae83309f9f5e645439192 : u22 = u19 -> (forall x0 : prop, x0).
Axiom missingprop_9701b8a5483a090b78796eef708de261df3f2545c5ce3af5a81f0a4ee00037bd : u23 = u19 -> (forall x0 : prop, x0).
Axiom missingprop_9752f8aae07d669b1096f135020ecbab317a167588504754f80d88b4c92adaa6 : u21 = u20 -> (forall x0 : prop, x0).
Axiom missingprop_e046300dbabcb6879d5ee7b7a3484aad1e616228ce77872869131b66bd674d3c : u23 = u20 -> (forall x0 : prop, x0).
Axiom missingprop_3d71b5e2b64bf76b23712115efcf8b7f94af2176c7117e30436385825be79563 : u22 = u21 -> (forall x0 : prop, x0).
Axiom missingprop_5c1235178ee676092509be5f997555e0c264359c0246b8769d05b358696c7223 : u23 = u22 -> (forall x0 : prop, x0).
Axiom missingprop_3d25ef54f895cf3695807c8f92ea140325d7c1ae464bbeff3ea915feb94176c2 : u23 = u16 -> (forall x0 : prop, x0).
Axiom missingprop_60f83cb2d5e8fad8ed3c2af8b6c5009dbe5ca939fa34d10ed5528a8ef488fb1c : u16 = 0 -> (forall x0 : prop, x0).
Axiom missingprop_c10ffc842b1feac4011c0a612b866401499a0aa675807f68696735695362f834 : u17 = 0 -> (forall x0 : prop, x0).
Axiom missingprop_dd20a269eccc8405cd94f4653428a5da7b33d3be25fb8510f632ef3230f1eaee : u16 = u1 -> (forall x0 : prop, x0).
Axiom missingprop_b50d58026fa33219aaaeb728c67b0b8c499309c16668e3e93aafc6ea809d6263 : u17 = u1 -> (forall x0 : prop, x0).
Axiom missingprop_bfc47753cc6814de196bab2dfc7b00ef059e8fcc866c0bdc69a80fa88efd67fc : u18 = u1 -> (forall x0 : prop, x0).
Axiom missingprop_1019f796b5519c5beeeef55b1daae2de48848a97e75d217687db0a2449fd5208 : (fun x1 x2 : set => x2) = (fun x1 x2 : set => x1) -> (forall x0 : prop, x0).
Theorem missingprop_f5200a50e8f432c8ec0808615e2346c0b22cfe0966e0d242c8c861417040ee39 : (forall x0 x1 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set, forall x2 x3 : ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> ((set -> set) -> set -> set) -> (set -> set) -> set -> set, ChurchNum_3ary_proj_p x0 -> ChurchNum_8ary_proj_p x2 -> ChurchNum_3ary_proj_p x1 -> ChurchNum_8ary_proj_p x3 -> TwoRamseyGraph_4_5_24_ChurchNums_3x8 x0 x2 x1 x3 = (fun x5 x6 : set => x6) -> ChurchNums_3x8_to_u24 (ChurchNums_8x3_to_3_lt6_id_ge6_rot2 x2 x0) (ChurchNums_8_perm_2_3_4_5_6_7_0_1 x2) = ChurchNums_3x8_to_u24 x1 x3 -> False).
admit.
Qed.