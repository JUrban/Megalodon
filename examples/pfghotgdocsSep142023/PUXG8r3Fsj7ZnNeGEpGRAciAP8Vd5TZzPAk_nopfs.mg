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
(* Parameter nat_p "25c483dc8509e17d4b6cf67c5b94c2b3f3902a45c3c34582da3e29ab1dc633ab" "458be3a74fef41541068991d6ed4034dc3b5e637179369954ba21f6dff4448e4" *)
Parameter nat_p : set -> prop.
(* Parameter ordsucc "9db634daee7fc36315ddda5f5f694934869921e9c5f55e8b25c91c0a07c5cbec" "65d8837d7b0172ae830bed36c8407fcd41b7d875033d2284eb2df245b42295a6" *)
Parameter ordsucc : set -> set.
Notation Nat Empty ordsucc.
Definition ChurchNum_ii_6 : ((set -> set) -> set -> set) -> (set -> set) -> set -> set :=
 (fun x0 : (set -> set) -> set -> set => fun x1 : set -> set => x0 (x0 (x0 (x0 (x0 (x0 x1)))))).
Definition ChurchNum2 : (set -> set) -> set -> set :=
 (fun x0 : set -> set => fun x1 : set => x0 (x0 x1)).
Axiom missingprop_15156acfaef83289041d2fede437e15a29e8b8de66c5ea43e1171f433b1a0acd : (forall x0 : set -> set, forall x1 : set -> prop, (forall x2, x1 x2 -> x1 (x0 x2)) -> (forall x2, x1 x2 -> x1 (ChurchNum_ii_6 ChurchNum2 x0 x2))).
Axiom nat_ordsucc : (forall x0, nat_p x0 -> nat_p (ordsucc x0)).
Definition ChurchNum_ii_4 : ((set -> set) -> set -> set) -> (set -> set) -> set -> set :=
 (fun x0 : (set -> set) -> set -> set => fun x1 : set -> set => x0 (x0 (x0 (x0 x1)))).
Axiom missingprop_e93a8c6aa6f443714903366c406c66ee5568ab35bb2d12e6033aa07bd1f73b7d : (forall x0 : set -> set, forall x1 : set -> prop, (forall x2, x1 x2 -> x1 (x0 x2)) -> (forall x2, x1 x2 -> x1 (ChurchNum_ii_4 ChurchNum2 x0 x2))).
Axiom nat_3 : nat_p 3.
Theorem missingprop_97adf820b20eeac6af845ba8e47a6fbaec6cf719d85196beb2a24f8a66ed4191 : nat_p 83.
admit.
Qed.
(* Parameter add_nat "e4d45122168d3fb3f5723ffffe4d368988a1be62792f272e949c6728cec97865" "afa8ae66d018824f39cfa44fb10fe583334a7b9375ac09f92d622a4833578d1a" *)
Parameter add_nat : set -> set -> set.
Axiom missingprop_1ecba3dd5eafa4f5c4681522469f6140788e091a78ad9f01e97cc0b6f2c0488f : (forall x0 : set -> set, forall x1 : set -> prop, forall x2 : set -> set, (forall x3, x1 x3 -> x1 (x0 x3)) -> (forall x3, x1 x3 -> x2 (x0 x3) = x0 (x2 x3)) -> (forall x3, x1 x3 -> x2 (ChurchNum_ii_6 ChurchNum2 x0 x3) = ChurchNum_ii_6 ChurchNum2 x0 (x2 x3))).
Axiom add_nat_SR : (forall x0 x1, nat_p x1 -> add_nat x0 (ordsucc x1) = ordsucc (add_nat x0 x1)).
Axiom nat_2 : nat_p 2.
Axiom nat_1 : nat_p 1.
Axiom nat_0 : nat_p 0.
Axiom add_nat_0R : (forall x0, forall x1 : set -> set -> prop, x1 (add_nat x0 0) x0 -> x1 x0 (add_nat x0 0)).
Theorem missingprop_6ec1a140d866846064cfd5c32674b693d943eda9dd3629a8fc81be59f6b279dd : add_nat 83 66 = 149.
admit.
Qed.
(* Parameter TwoRamseyProp "aab220c89625a268d769430a9bd1c5242495f378775d11b8e61bd9148d917e80" "c5d86cf97e40aa1fd6c7b0939b0974f704b1c792393b364c520e0e4558842cf6" *)
Parameter TwoRamseyProp : set -> set -> set -> prop.
(* Parameter TwoRamseyProp_atleastp "947fb9a2bd96c9c3a0cefb7f346e15d36deca0943732fc3ea9bc3a588c7ad8f8" "6d86bb255886d154fd0886829fc7d7f8411add3db54738041d14766df3b5c4fa" *)
Parameter TwoRamseyProp_atleastp : set -> set -> set -> prop.
Axiom missingprop_217e5145b65197888461a6aa126b20121c0d56dc8d69d44ac11b973377d98f71 : (forall x0 x1 x2 x3, nat_p x2 -> nat_p x3 -> TwoRamseyProp_atleastp (ordsucc x0) x1 x2 -> TwoRamseyProp_atleastp x0 (ordsucc x1) x3 -> TwoRamseyProp (ordsucc x0) (ordsucc x1) (ordsucc (add_nat x2 x3))).
Axiom missingprop_6835fef0321aada2a10e29b89496f6c2c6a188b5ca1009dba36441f00472af29 : nat_p 66.
(* Parameter atleastp "6f4d9bb1b2eaccdca0b575e1c5e5a35eca5ce1511aa156bebf7a824f08d1d69d" "9bb9c2b375cb29534fc7413011613fb9ae940d1603e3c4bebd1b23c164c0c6f7" *)
Parameter atleastp : set -> set -> prop.
Axiom TwoRamseyProp_atleastp_atleastp : (forall x0 x1 x2 x3 x4, TwoRamseyProp x0 x2 x4 -> atleastp x1 x0 -> atleastp x3 x2 -> TwoRamseyProp_atleastp x1 x3 x4).
Axiom TwoRamseyProp_5_5_83 : TwoRamseyProp 5 5 83.
Axiom atleastp_ref : (forall x0, atleastp x0 x0).
Axiom TwoRamseyProp_4_6_66 : TwoRamseyProp 4 6 66.
Theorem TwoRamseyProp_5_6_150 : TwoRamseyProp 5 6 150.
admit.
Qed.
Definition ChurchNum_ii_8 : ((set -> set) -> set -> set) -> (set -> set) -> set -> set :=
 (fun x0 : (set -> set) -> set -> set => fun x1 : set -> set => x0 (x0 (x0 (x0 (x0 (x0 (x0 (x0 x1)))))))).
Definition ChurchNum_ii_5 : ((set -> set) -> set -> set) -> (set -> set) -> set -> set :=
 (fun x0 : (set -> set) -> set -> set => fun x1 : set -> set => x0 (x0 (x0 (x0 (x0 x1))))).
Definition ChurchNum_ii_3 : ((set -> set) -> set -> set) -> (set -> set) -> set -> set :=
 (fun x0 : (set -> set) -> set -> set => fun x1 : set -> set => x0 (x0 (x0 x1))).
Axiom missingprop_44e0ba05d0717b02d304ea93cace392f852a965609b181bd83e00caede8a9540 : (forall x0 : set -> set, forall x1 : set -> set -> prop, (forall x2 x3, x1 x3 x2 -> x1 x3 (x0 x2)) -> (forall x2 x3, x1 x3 x2 -> x1 x3 (ChurchNum_ii_6 ChurchNum2 x0 x2))).
Definition Subq : set -> set -> prop :=
 (fun x0 x1 : set => forall x2, x2 :e x0 -> x2 :e x1).
Axiom ordsuccI1 : (forall x0, x0 c= ordsucc x0).
Axiom missingprop_af1ecdf9ce6b04278d3e4fc32870f99c200ac770476565e590e79cfb33806b67 : (forall x0 : set -> set, forall x1 : set -> set -> prop, (forall x2 x3, x1 x3 x2 -> x1 x3 (x0 x2)) -> (forall x2 x3, x1 x3 x2 -> x1 x3 (ChurchNum_ii_5 ChurchNum2 x0 x2))).
Axiom missingprop_0a70d2d43ea31863dc5afb5c5dd839dddd16f01bbe480459e9d6b2402dd27bce : (forall x0 : set -> set, forall x1 : set -> set -> prop, (forall x2 x3, x1 x3 x2 -> x1 x3 (x0 x2)) -> (forall x2 x3, x1 x3 x2 -> x1 x3 (ChurchNum_ii_3 ChurchNum2 x0 x2))).
Axiom ordsuccI2 : (forall x0, x0 :e ordsucc x0).
Theorem missingprop_352839fae6b3260e14c368cdee78d6817328ff3d2ca3ea2351872812b1d63d38 : 150 :e ChurchNum_ii_8 ChurchNum2 ordsucc 0.
admit.
Qed.
Axiom missingprop_aae4e03000d6619cc34e5a66244db6980d668b70bdfc22610af1046fd13449ea : (forall x0 x1 x2 x3, atleastp x2 x3 -> TwoRamseyProp x0 x1 x2 -> TwoRamseyProp x0 x1 x3).
(* Parameter exp_nat "4ce015b98f266293ef85ef9898e1d8f66f4d9664bd9601197410d96354105016" "37c5310c8da5c9f9db9152285b742d487f1a5b1bd7c73a4207d40bcd4f4d13fb" *)
Parameter exp_nat : set -> set -> set.
Axiom atleastp_tra : (forall x0 x1 x2, atleastp x0 x1 -> atleastp x1 x2 -> atleastp x0 x2).
Axiom missingprop_53a54314c9a6a892295b2ded3eab37435879a00813e71bc2836df12be576e7ac : exp_nat 2 8 = ChurchNum_ii_8 ChurchNum2 ordsucc 0.
Axiom nat_In_atleastp : (forall x0, nat_p x0 -> (forall x1, x1 :e x0 -> atleastp x1 x0)).
Axiom missingprop_c39f4091a15f1ff7b3dd65d38fd37d060cdcbceda205863f5e715a04f6271f28 : nat_p 256.
(* Parameter equip "5719b3150f582144388b11e7da6c992f73c9f410c816893fdc1019f1b12097e0" "eb44199255e899126f4cd0bbf8cf2f5222a90aa4da547822cd6d81c671587877" *)
Parameter equip : set -> set -> prop.
Axiom equip_atleastp : (forall x0 x1, equip x0 x1 -> atleastp x0 x1).
Axiom equip_sym : (forall x0 x1, equip x0 x1 -> equip x1 x0).
Axiom missingprop_f5822e9d5891900b4c653eab5e89c5bb71543e61fe2c332750489ecd340604eb : (forall x0, nat_p x0 -> equip (Power x0) (exp_nat 2 x0)).
Axiom nat_8 : nat_p 8.
Theorem TwoRamseyProp_5_6_Power_8 : TwoRamseyProp 5 6 (Power 8).
admit.
Qed.