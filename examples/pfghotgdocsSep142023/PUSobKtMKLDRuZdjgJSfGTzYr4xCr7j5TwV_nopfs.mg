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
(* Parameter lam "93592da87a6f2da9f7eb0fbd449e0dc4730682572e0685b6a799ae16c236dcae" "8acbb2b5de4ab265344d713b111d82b0048c8a4bf732a67ad35f1054a4eb4642" *)
Parameter lam : set -> (set -> set) -> set.
(* Parameter ordsucc "9db634daee7fc36315ddda5f5f694934869921e9c5f55e8b25c91c0a07c5cbec" "65d8837d7b0172ae830bed36c8407fcd41b7d875033d2284eb2df245b42295a6" *)
Parameter ordsucc : set -> set.
Notation Nat Empty ordsucc.
(* Parameter If_i "8c8f550868df4fdc93407b979afa60092db4b1bb96087bc3c2f17fadf3f35cbf" "b8ff52f838d0ff97beb955ee0b26fad79602e1529f8a2854bda0ecd4193a8a3c" *)
Parameter If_i : prop -> set -> set -> set.
Definition pack_e : set -> set -> set :=
 (fun x0 x1 : set => lam 2 (fun x2 : set => If_i (x2 = 0) x0 x1)).
(* Parameter ap "58c1782da006f2fb2849c53d5d8425049fad551eb4f8025055d260f0c9e1fe40" "c7aaa670ef9b6f678b8cf10b13b2571e4dc1e6fde061d1f641a5fa6c30c09d46" *)
Parameter ap : set -> set -> set.
Axiom tuple_2_0_eq : (forall x0 x1, forall x2 : set -> set -> prop, x2 (ap (lam 2 (fun x3 : set => If_i (x3 = 0) x0 x1)) 0) x0 -> x2 x0 (ap (lam 2 (fun x3 : set => If_i (x3 = 0) x0 x1)) 0)).
Theorem pack_e_0_eq : (forall x0 x1 x2, x0 = pack_e x1 x2 -> x1 = ap x0 0).
admit.
Qed.
Theorem pack_e_0_eq2 : (forall x0 x1, forall x2 : set -> set -> prop, x2 x0 (ap (pack_e x0 x1) 0) -> x2 (ap (pack_e x0 x1) 0) x0).
admit.
Qed.
Axiom tuple_2_1_eq : (forall x0 x1, forall x2 : set -> set -> prop, x2 (ap (lam 2 (fun x3 : set => If_i (x3 = 0) x0 x1)) 1) x1 -> x2 x1 (ap (lam 2 (fun x3 : set => If_i (x3 = 0) x0 x1)) 1)).
Theorem pack_e_1_eq : (forall x0 x1 x2, x0 = pack_e x1 x2 -> x2 = ap x0 1).
admit.
Qed.
Theorem pack_e_1_eq2 : (forall x0 x1, forall x2 : set -> set -> prop, x2 x1 (ap (pack_e x0 x1) 1) -> x2 (ap (pack_e x0 x1) 1) x1).
admit.
Qed.
Definition and : prop -> prop -> prop :=
 (fun x0 x1 : prop => forall x2 : prop, (x0 -> x1 -> x2) -> x2).
Axiom andI : (forall x0 x1 : prop, x0 -> x1 -> and x0 x1).
Theorem pack_e_inj : (forall x0 x1 x2 x3, pack_e x0 x2 = pack_e x1 x3 -> and (x0 = x1) (x2 = x3)).
admit.
Qed.
Definition struct_e : set -> prop :=
 (fun x0 : set => forall x1 : set -> prop, (forall x2 x3, x3 :e x2 -> x1 (pack_e x2 x3)) -> x1 x0).
Theorem pack_struct_e_I : (forall x0 x1, x1 :e x0 -> struct_e (pack_e x0 x1)).
admit.
Qed.
Theorem pack_struct_e_E1 : (forall x0 x1, struct_e (pack_e x0 x1) -> x1 :e x0).
admit.
Qed.
Theorem struct_e_eta : (forall x0, struct_e x0 -> x0 = pack_e (ap x0 0) (ap x0 1)).
admit.
Qed.
Definition unpack_e_i : set -> (set -> set -> set) -> set :=
 (fun x0 : set => fun x1 : set -> set -> set => x1 (ap x0 0) (ap x0 1)).
Theorem unpack_e_i_eq : (forall x0 : set -> set -> set, forall x1 x2, forall x3 : set -> set -> prop, x3 (unpack_e_i (pack_e x1 x2) x0) (x0 x1 x2) -> x3 (x0 x1 x2) (unpack_e_i (pack_e x1 x2) x0)).
admit.
Qed.
Definition unpack_e_o : set -> (set -> set -> prop) -> prop :=
 (fun x0 : set => fun x1 : set -> set -> prop => x1 (ap x0 0) (ap x0 1)).
Theorem unpack_e_o_eq : (forall x0 : set -> set -> prop, forall x1 x2, forall x3 : prop -> prop -> prop, x3 (unpack_e_o (pack_e x1 x2) x0) (x0 x1 x2) -> x3 (x0 x1 x2) (unpack_e_o (pack_e x1 x2) x0)).
admit.
Qed.
Definition pack_u : set -> (set -> set) -> set :=
 (fun x0 : set => fun x1 : set -> set => lam 2 (fun x2 : set => If_i (x2 = 0) x0 (lam x0 x1))).
Theorem pack_u_0_eq : (forall x0 x1, forall x2 : set -> set, x0 = pack_u x1 x2 -> x1 = ap x0 0).
admit.
Qed.
Theorem pack_u_0_eq2 : (forall x0, forall x1 : set -> set, forall x2 : set -> set -> prop, x2 x0 (ap (pack_u x0 x1) 0) -> x2 (ap (pack_u x0 x1) 0) x0).
admit.
Qed.
Axiom beta : (forall x0, forall x1 : set -> set, forall x2, x2 :e x0 -> ap (lam x0 x1) x2 = x1 x2).
Theorem pack_u_1_eq : (forall x0 x1, forall x2 : set -> set, x0 = pack_u x1 x2 -> (forall x3, x3 :e x1 -> x2 x3 = ap (ap x0 1) x3)).
admit.
Qed.
Theorem pack_u_1_eq2 : (forall x0, forall x1 : set -> set, forall x2, x2 :e x0 -> x1 x2 = ap (ap (pack_u x0 x1) 1) x2).
admit.
Qed.
Theorem pack_u_inj : (forall x0 x1, forall x2 x3 : set -> set, pack_u x0 x2 = pack_u x1 x3 -> and (x0 = x1) (forall x4, x4 :e x0 -> x2 x4 = x3 x4)).
admit.
Qed.
Axiom encode_u_ext : (forall x0, forall x1 x2 : set -> set, (forall x3, x3 :e x0 -> x1 x3 = x2 x3) -> lam x0 x1 = lam x0 x2).
Theorem pack_u_ext : (forall x0, forall x1 x2 : set -> set, (forall x3, x3 :e x0 -> x1 x3 = x2 x3) -> pack_u x0 x1 = pack_u x0 x2).
admit.
Qed.
Definition struct_u : set -> prop :=
 (fun x0 : set => forall x1 : set -> prop, (forall x2, forall x3 : set -> set, (forall x4, x4 :e x2 -> x3 x4 :e x2) -> x1 (pack_u x2 x3)) -> x1 x0).
Theorem pack_struct_u_I : (forall x0, forall x1 : set -> set, (forall x2, x2 :e x0 -> x1 x2 :e x0) -> struct_u (pack_u x0 x1)).
admit.
Qed.
Theorem pack_struct_u_E1 : (forall x0, forall x1 : set -> set, struct_u (pack_u x0 x1) -> (forall x2, x2 :e x0 -> x1 x2 :e x0)).
admit.
Qed.
Theorem struct_u_eta : (forall x0, struct_u x0 -> x0 = pack_u (ap x0 0) (ap (ap x0 1))).
admit.
Qed.
Definition unpack_u_i : set -> (set -> (set -> set) -> set) -> set :=
 (fun x0 : set => fun x1 : set -> (set -> set) -> set => x1 (ap x0 0) (ap (ap x0 1))).
Theorem unpack_u_i_eq : (forall x0 : set -> (set -> set) -> set, forall x1, forall x2 : set -> set, (forall x3 : set -> set, (forall x4, x4 :e x1 -> x2 x4 = x3 x4) -> x0 x1 x3 = x0 x1 x2) -> unpack_u_i (pack_u x1 x2) x0 = x0 x1 x2).
admit.
Qed.
Definition unpack_u_o : set -> (set -> (set -> set) -> prop) -> prop :=
 (fun x0 : set => fun x1 : set -> (set -> set) -> prop => x1 (ap x0 0) (ap (ap x0 1))).
Theorem unpack_u_o_eq : (forall x0 : set -> (set -> set) -> prop, forall x1, forall x2 : set -> set, (forall x3 : set -> set, (forall x4, x4 :e x1 -> x2 x4 = x3 x4) -> x0 x1 x3 = x0 x1 x2) -> unpack_u_o (pack_u x1 x2) x0 = x0 x1 x2).
admit.
Qed.
(* Parameter encode_b "21324eab171ba1d7a41ca9f7ad87272b72d2982da5848b0cef9a7fe7653388ad" "4c89a6c736b15453d749c576f63559855d72931c3c7513c44e12ce14882d2fa7" *)
Parameter encode_b : set -> (set -> set -> set) -> set.
Definition pack_b : set -> (set -> set -> set) -> set :=
 (fun x0 : set => fun x1 : set -> set -> set => lam 2 (fun x2 : set => If_i (x2 = 0) x0 (encode_b x0 x1))).
Theorem pack_b_0_eq : (forall x0 x1, forall x2 : set -> set -> set, x0 = pack_b x1 x2 -> x1 = ap x0 0).
admit.
Qed.
Theorem pack_b_0_eq2 : (forall x0, forall x1 : set -> set -> set, forall x2 : set -> set -> prop, x2 x0 (ap (pack_b x0 x1) 0) -> x2 (ap (pack_b x0 x1) 0) x0).
admit.
Qed.
(* Parameter decode_b "86e649daaa54cc94337666c48155bcb9c8d8f416ab6625b9c91601b52ce66901" "1024fb6c1c39aaae4a36f455b998b6ed0405d12e967bf5eae211141970ffa4fa" *)
Parameter decode_b : set -> set -> set -> set.
Axiom decode_encode_b : (forall x0, forall x1 : set -> set -> set, forall x2, x2 :e x0 -> (forall x3, x3 :e x0 -> decode_b (encode_b x0 x1) x2 x3 = x1 x2 x3)).
Theorem pack_b_1_eq : (forall x0 x1, forall x2 : set -> set -> set, x0 = pack_b x1 x2 -> (forall x3, x3 :e x1 -> (forall x4, x4 :e x1 -> x2 x3 x4 = decode_b (ap x0 1) x3 x4))).
admit.
Qed.
Theorem pack_b_1_eq2 : (forall x0, forall x1 : set -> set -> set, forall x2, x2 :e x0 -> (forall x3, x3 :e x0 -> x1 x2 x3 = decode_b (ap (pack_b x0 x1) 1) x2 x3)).
admit.
Qed.
Theorem pack_b_inj : (forall x0 x1, forall x2 x3 : set -> set -> set, pack_b x0 x2 = pack_b x1 x3 -> and (x0 = x1) (forall x4, x4 :e x0 -> (forall x5, x5 :e x0 -> x2 x4 x5 = x3 x4 x5))).
admit.
Qed.
Axiom encode_b_ext : (forall x0, forall x1 x2 : set -> set -> set, (forall x3, x3 :e x0 -> (forall x4, x4 :e x0 -> x1 x3 x4 = x2 x3 x4)) -> encode_b x0 x1 = encode_b x0 x2).
Theorem pack_b_ext : (forall x0, forall x1 x2 : set -> set -> set, (forall x3, x3 :e x0 -> (forall x4, x4 :e x0 -> x1 x3 x4 = x2 x3 x4)) -> pack_b x0 x1 = pack_b x0 x2).
admit.
Qed.
Definition struct_b : set -> prop :=
 (fun x0 : set => forall x1 : set -> prop, (forall x2, forall x3 : set -> set -> set, (forall x4, x4 :e x2 -> (forall x5, x5 :e x2 -> x3 x4 x5 :e x2)) -> x1 (pack_b x2 x3)) -> x1 x0).
Theorem pack_struct_b_I : (forall x0, forall x1 : set -> set -> set, (forall x2, x2 :e x0 -> (forall x3, x3 :e x0 -> x1 x2 x3 :e x0)) -> struct_b (pack_b x0 x1)).
admit.
Qed.
Theorem pack_struct_b_E1 : (forall x0, forall x1 : set -> set -> set, struct_b (pack_b x0 x1) -> (forall x2, x2 :e x0 -> (forall x3, x3 :e x0 -> x1 x2 x3 :e x0))).
admit.
Qed.
Theorem struct_b_eta : (forall x0, struct_b x0 -> x0 = pack_b (ap x0 0) (decode_b (ap x0 1))).
admit.
Qed.
Definition unpack_b_i : set -> (set -> (set -> set -> set) -> set) -> set :=
 (fun x0 : set => fun x1 : set -> (set -> set -> set) -> set => x1 (ap x0 0) (decode_b (ap x0 1))).
Theorem unpack_b_i_eq : (forall x0 : set -> (set -> set -> set) -> set, forall x1, forall x2 : set -> set -> set, (forall x3 : set -> set -> set, (forall x4, x4 :e x1 -> (forall x5, x5 :e x1 -> x2 x4 x5 = x3 x4 x5)) -> x0 x1 x3 = x0 x1 x2) -> unpack_b_i (pack_b x1 x2) x0 = x0 x1 x2).
admit.
Qed.
Definition unpack_b_o : set -> (set -> (set -> set -> set) -> prop) -> prop :=
 (fun x0 : set => fun x1 : set -> (set -> set -> set) -> prop => x1 (ap x0 0) (decode_b (ap x0 1))).
Theorem unpack_b_o_eq : (forall x0 : set -> (set -> set -> set) -> prop, forall x1, forall x2 : set -> set -> set, (forall x3 : set -> set -> set, (forall x4, x4 :e x1 -> (forall x5, x5 :e x1 -> x2 x4 x5 = x3 x4 x5)) -> x0 x1 x3 = x0 x1 x2) -> unpack_b_o (pack_b x1 x2) x0 = x0 x1 x2).
admit.
Qed.
(* Parameter Sep "f7e63d81e8f98ac9bc7864e0b01f93952ef3b0cbf9777abab27bcbd743b6b079" "f336a4ec8d55185095e45a638507748bac5384e04e0c48d008e4f6a9653e9c44" *)
Parameter Sep : set -> (set -> prop) -> set.
Definition pack_p : set -> (set -> prop) -> set :=
 (fun x0 : set => fun x1 : set -> prop => lam 2 (fun x2 : set => If_i (x2 = 0) x0 (Sep x0 x1))).
Theorem pack_p_0_eq : (forall x0 x1, forall x2 : set -> prop, x0 = pack_p x1 x2 -> x1 = ap x0 0).
admit.
Qed.
Theorem pack_p_0_eq2 : (forall x0, forall x1 : set -> prop, forall x2 : set -> set -> prop, x2 x0 (ap (pack_p x0 x1) 0) -> x2 (ap (pack_p x0 x1) 0) x0).
admit.
Qed.
(* Parameter decode_p "0bdf234a937a0270a819b1abf81040a3cc263b2f1071023dfbe2d9271ad618af" "02231a320843b92b212e53844c7e20e84a5114f2609e0ccf1fe173603ec3af98" *)
Parameter decode_p : set -> set -> prop.
Axiom decode_encode_p : (forall x0, forall x1 : set -> prop, forall x2, x2 :e x0 -> decode_p (Sep x0 x1) x2 = x1 x2).
Theorem pack_p_1_eq : (forall x0 x1, forall x2 : set -> prop, x0 = pack_p x1 x2 -> (forall x3, x3 :e x1 -> x2 x3 = decode_p (ap x0 1) x3)).
admit.
Qed.
Theorem pack_p_1_eq2 : (forall x0, forall x1 : set -> prop, forall x2, x2 :e x0 -> x1 x2 = decode_p (ap (pack_p x0 x1) 1) x2).
admit.
Qed.
Theorem pack_p_inj : (forall x0 x1, forall x2 x3 : set -> prop, pack_p x0 x2 = pack_p x1 x3 -> and (x0 = x1) (forall x4, x4 :e x0 -> x2 x4 = x3 x4)).
admit.
Qed.
(* Parameter iff "9c60bab687728bc4482e12da2b08b8dbc10f5d71f5cab91acec3c00a79b335a3" "98aaaf225067eca7b3f9af03e4905bbbf48fc0ccbe2b4777422caed3e8d4dfb9" *)
Parameter iff : prop -> prop -> prop.
Axiom encode_p_ext : (forall x0, forall x1 x2 : set -> prop, (forall x3, x3 :e x0 -> iff (x1 x3) (x2 x3)) -> Sep x0 x1 = Sep x0 x2).
Theorem pack_p_ext : (forall x0, forall x1 x2 : set -> prop, (forall x3, x3 :e x0 -> iff (x1 x3) (x2 x3)) -> pack_p x0 x1 = pack_p x0 x2).
admit.
Qed.
Definition struct_p : set -> prop :=
 (fun x0 : set => forall x1 : set -> prop, (forall x2, forall x3 : set -> prop, x1 (pack_p x2 x3)) -> x1 x0).
Theorem pack_struct_p_I : (forall x0, forall x1 : set -> prop, struct_p (pack_p x0 x1)).
admit.
Qed.
Axiom iff_refl : (forall x0 : prop, iff x0 x0).
Theorem struct_p_eta : (forall x0, struct_p x0 -> x0 = pack_p (ap x0 0) (decode_p (ap x0 1))).
admit.
Qed.
Definition unpack_p_i : set -> (set -> (set -> prop) -> set) -> set :=
 (fun x0 : set => fun x1 : set -> (set -> prop) -> set => x1 (ap x0 0) (decode_p (ap x0 1))).
Theorem unpack_p_i_eq : (forall x0 : set -> (set -> prop) -> set, forall x1, forall x2 : set -> prop, (forall x3 : set -> prop, (forall x4, x4 :e x1 -> iff (x2 x4) (x3 x4)) -> x0 x1 x3 = x0 x1 x2) -> unpack_p_i (pack_p x1 x2) x0 = x0 x1 x2).
admit.
Qed.
Definition unpack_p_o : set -> (set -> (set -> prop) -> prop) -> prop :=
 (fun x0 : set => fun x1 : set -> (set -> prop) -> prop => x1 (ap x0 0) (decode_p (ap x0 1))).
Theorem unpack_p_o_eq : (forall x0 : set -> (set -> prop) -> prop, forall x1, forall x2 : set -> prop, (forall x3 : set -> prop, (forall x4, x4 :e x1 -> iff (x2 x4) (x3 x4)) -> x0 x1 x3 = x0 x1 x2) -> unpack_p_o (pack_p x1 x2) x0 = x0 x1 x2).
admit.
Qed.
(* Parameter encode_r "b1fb9de059c4e510b136e3f2b3833e9b6a459da341bf14d8c0591abe625c04aa" "17bc9f7081d26ba5939127ec0eef23162cf5bbe34ceeb18f41b091639dd2d108" *)
Parameter encode_r : set -> (set -> set -> prop) -> set.
Definition pack_r : set -> (set -> set -> prop) -> set :=
 (fun x0 : set => fun x1 : set -> set -> prop => lam 2 (fun x2 : set => If_i (x2 = 0) x0 (encode_r x0 x1))).
Theorem pack_r_0_eq : (forall x0 x1, forall x2 : set -> set -> prop, x0 = pack_r x1 x2 -> x1 = ap x0 0).
admit.
Qed.
Theorem pack_r_0_eq2 : (forall x0, forall x1 x2 : set -> set -> prop, x2 x0 (ap (pack_r x0 x1) 0) -> x2 (ap (pack_r x0 x1) 0) x0).
admit.
Qed.
(* Parameter decode_r "e25e4327c67053c3d99245dbaf92fdb3e5247e754bd6d8291f39ac34b6d57820" "f2f91589fb6488dd2bad3cebb9f65a57b7d7f3818091dcc789edd28f5d0ef2af" *)
Parameter decode_r : set -> set -> set -> prop.
Axiom decode_encode_r : (forall x0, forall x1 : set -> set -> prop, forall x2, x2 :e x0 -> (forall x3, x3 :e x0 -> decode_r (encode_r x0 x1) x2 x3 = x1 x2 x3)).
Theorem pack_r_1_eq : (forall x0 x1, forall x2 : set -> set -> prop, x0 = pack_r x1 x2 -> (forall x3, x3 :e x1 -> (forall x4, x4 :e x1 -> x2 x3 x4 = decode_r (ap x0 1) x3 x4))).
admit.
Qed.
Theorem pack_r_1_eq2 : (forall x0, forall x1 : set -> set -> prop, forall x2, x2 :e x0 -> (forall x3, x3 :e x0 -> x1 x2 x3 = decode_r (ap (pack_r x0 x1) 1) x2 x3)).
admit.
Qed.
Theorem pack_r_inj : (forall x0 x1, forall x2 x3 : set -> set -> prop, pack_r x0 x2 = pack_r x1 x3 -> and (x0 = x1) (forall x4, x4 :e x0 -> (forall x5, x5 :e x0 -> x2 x4 x5 = x3 x4 x5))).
admit.
Qed.
Axiom encode_r_ext : (forall x0, forall x1 x2 : set -> set -> prop, (forall x3, x3 :e x0 -> (forall x4, x4 :e x0 -> iff (x1 x3 x4) (x2 x3 x4))) -> encode_r x0 x1 = encode_r x0 x2).
Theorem pack_r_ext : (forall x0, forall x1 x2 : set -> set -> prop, (forall x3, x3 :e x0 -> (forall x4, x4 :e x0 -> iff (x1 x3 x4) (x2 x3 x4))) -> pack_r x0 x1 = pack_r x0 x2).
admit.
Qed.
Definition struct_r : set -> prop :=
 (fun x0 : set => forall x1 : set -> prop, (forall x2, forall x3 : set -> set -> prop, x1 (pack_r x2 x3)) -> x1 x0).
Theorem pack_struct_r_I : (forall x0, forall x1 : set -> set -> prop, struct_r (pack_r x0 x1)).
admit.
Qed.
Theorem struct_r_eta : (forall x0, struct_r x0 -> x0 = pack_r (ap x0 0) (decode_r (ap x0 1))).
admit.
Qed.
Definition unpack_r_i : set -> (set -> (set -> set -> prop) -> set) -> set :=
 (fun x0 : set => fun x1 : set -> (set -> set -> prop) -> set => x1 (ap x0 0) (decode_r (ap x0 1))).
Theorem unpack_r_i_eq : (forall x0 : set -> (set -> set -> prop) -> set, forall x1, forall x2 : set -> set -> prop, (forall x3 : set -> set -> prop, (forall x4, x4 :e x1 -> (forall x5, x5 :e x1 -> iff (x2 x4 x5) (x3 x4 x5))) -> x0 x1 x3 = x0 x1 x2) -> unpack_r_i (pack_r x1 x2) x0 = x0 x1 x2).
admit.
Qed.
Definition unpack_r_o : set -> (set -> (set -> set -> prop) -> prop) -> prop :=
 (fun x0 : set => fun x1 : set -> (set -> set -> prop) -> prop => x1 (ap x0 0) (decode_r (ap x0 1))).
Theorem unpack_r_o_eq : (forall x0 : set -> (set -> set -> prop) -> prop, forall x1, forall x2 : set -> set -> prop, (forall x3 : set -> set -> prop, (forall x4, x4 :e x1 -> (forall x5, x5 :e x1 -> iff (x2 x4 x5) (x3 x4 x5))) -> x0 x1 x3 = x0 x1 x2) -> unpack_r_o (pack_r x1 x2) x0 = x0 x1 x2).
admit.
Qed.
(* Parameter encode_c "fbf1e367dd7bcf308e6386d84b0be4638eb2a000229a92ad9993ce40104edbe7" "02824c8d211e3e78d6ae93d4f25c198a734a5de114367ff490b2821787a620fc" *)
Parameter encode_c : set -> ((set -> prop) -> prop) -> set.
Definition pack_c : set -> ((set -> prop) -> prop) -> set :=
 (fun x0 : set => fun x1 : (set -> prop) -> prop => lam 2 (fun x2 : set => If_i (x2 = 0) x0 (encode_c x0 x1))).
Theorem pack_c_0_eq : (forall x0 x1, forall x2 : (set -> prop) -> prop, x0 = pack_c x1 x2 -> x1 = ap x0 0).
admit.
Qed.
Theorem pack_c_0_eq2 : (forall x0, forall x1 : (set -> prop) -> prop, forall x2 : set -> set -> prop, x2 x0 (ap (pack_c x0 x1) 0) -> x2 (ap (pack_c x0 x1) 0) x0).
admit.
Qed.
(* Parameter decode_c "0ba7fb67bc84cc62e2c8c6fbe525891c5ba5b449d1d79661cc48ec090122f3cf" "47a1eff65bbadf7400d8f2532141a437990ed7a8581fea1db023c7edd06be32c" *)
Parameter decode_c : set -> (set -> prop) -> prop.
Axiom decode_encode_c : (forall x0, forall x1 : (set -> prop) -> prop, forall x2 : set -> prop, (forall x3, x2 x3 -> x3 :e x0) -> decode_c (encode_c x0 x1) x2 = x1 x2).
Theorem pack_c_1_eq : (forall x0 x1, forall x2 : (set -> prop) -> prop, x0 = pack_c x1 x2 -> (forall x3 : set -> prop, (forall x4, x3 x4 -> x4 :e x1) -> x2 x3 = decode_c (ap x0 1) x3)).
admit.
Qed.
Theorem pack_c_1_eq2 : (forall x0, forall x1 : (set -> prop) -> prop, forall x2 : set -> prop, (forall x3, x2 x3 -> x3 :e x0) -> x1 x2 = decode_c (ap (pack_c x0 x1) 1) x2).
admit.
Qed.
Theorem pack_c_inj : (forall x0 x1, forall x2 x3 : (set -> prop) -> prop, pack_c x0 x2 = pack_c x1 x3 -> and (x0 = x1) (forall x4 : set -> prop, (forall x5, x4 x5 -> x5 :e x0) -> x2 x4 = x3 x4)).
admit.
Qed.
Axiom encode_c_ext : (forall x0, forall x1 x2 : (set -> prop) -> prop, (forall x3 : set -> prop, (forall x4, x3 x4 -> x4 :e x0) -> iff (x1 x3) (x2 x3)) -> encode_c x0 x1 = encode_c x0 x2).
Theorem pack_c_ext : (forall x0, forall x1 x2 : (set -> prop) -> prop, (forall x3 : set -> prop, (forall x4, x3 x4 -> x4 :e x0) -> iff (x1 x3) (x2 x3)) -> pack_c x0 x1 = pack_c x0 x2).
admit.
Qed.
Definition struct_c : set -> prop :=
 (fun x0 : set => forall x1 : set -> prop, (forall x2, forall x3 : (set -> prop) -> prop, x1 (pack_c x2 x3)) -> x1 x0).
Theorem pack_struct_c_I : (forall x0, forall x1 : (set -> prop) -> prop, struct_c (pack_c x0 x1)).
admit.
Qed.
Theorem struct_c_eta : (forall x0, struct_c x0 -> x0 = pack_c (ap x0 0) (decode_c (ap x0 1))).
admit.
Qed.
Definition unpack_c_i : set -> (set -> ((set -> prop) -> prop) -> set) -> set :=
 (fun x0 : set => fun x1 : set -> ((set -> prop) -> prop) -> set => x1 (ap x0 0) (decode_c (ap x0 1))).
Theorem unpack_c_i_eq : (forall x0 : set -> ((set -> prop) -> prop) -> set, forall x1, forall x2 : (set -> prop) -> prop, (forall x3 : (set -> prop) -> prop, (forall x4 : set -> prop, (forall x5, x4 x5 -> x5 :e x1) -> iff (x2 x4) (x3 x4)) -> x0 x1 x3 = x0 x1 x2) -> unpack_c_i (pack_c x1 x2) x0 = x0 x1 x2).
admit.
Qed.
Definition unpack_c_o : set -> (set -> ((set -> prop) -> prop) -> prop) -> prop :=
 (fun x0 : set => fun x1 : set -> ((set -> prop) -> prop) -> prop => x1 (ap x0 0) (decode_c (ap x0 1))).
Theorem unpack_c_o_eq : (forall x0 : set -> ((set -> prop) -> prop) -> prop, forall x1, forall x2 : (set -> prop) -> prop, (forall x3 : (set -> prop) -> prop, (forall x4 : set -> prop, (forall x5, x4 x5 -> x5 :e x1) -> iff (x2 x4) (x3 x4)) -> x0 x1 x3 = x0 x1 x2) -> unpack_c_o (pack_c x1 x2) x0 = x0 x1 x2).
admit.
Qed.