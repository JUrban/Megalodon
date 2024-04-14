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
(* Parameter u1 "338dd245674671b9ed7925015246c4c4be0e334151ccd1c7d5a3567f5c4461a5" "8170ad5e6535f2661f0d055afe32d84d876773f4e8519ce018687f54b2ba9159" *)
Parameter u1 : set.
(* Parameter u2 "e6513b6b7dacfb379ee35c71b72ff5e0713f783ff08590c7fabcc4c48daf9f2e" "3bd7f72ec38573ff1d3910239a4aa349e3832908ab08202cf114451bffd7d17d" *)
Parameter u2 : set.
(* Parameter u3 "e803b40f939f4fe15fb61b29ded3bee1206757349f3b808c5103467101bdab9a" "1da7b5b024a841d0694168c01df8b0cada113e9c4616f1555b257b978dff46cc" *)
Parameter u3 : set.
(* Parameter u4 "7a516cda4555ee314bd599299eac983d7d569296583a629b47918e19d4a0f71f" "66241e5ccfbbd32429c1f14526f03d9d37590fe4ddf66171a76fae8bb5f8b113" *)
Parameter u4 : set.
(* Parameter u5 "2a783d5aa30540222437cf12bcd2250d09379447bbcfb2424ca047f449bf06b4" "81fa4107fe53377c8e9932359ab17b6be1f49b6646daa701ee0c5525e8489bca" *)
Parameter u5 : set.
(* Parameter u6 "fa055287e35da0dbdfea4eda00e6036e98d3ddf3a436e0535f56582c21372e8e" "a7eb4561b2cb31701ce7ec9226931f7d9eae8f8b49a5a52f5987c7cac14cdcb3" *)
Parameter u6 : set.
(* Parameter u7 "af2de1d69c59ef5054cf8b6dce9a93a630001f055010b2d9b5c0f0945e37d127" "3cbeb3771776e1d1a12e3cb64dcc555d3ff2cc4de57d951cb6799fd09f57d004" *)
Parameter u7 : set.
(* Parameter u8 "4d5ccc56a929ac0c8f71c494d50309dfb6da04c7178c3bc993cde3ebf042a891" "ce0f39eb54c9fcc3c8025cbe688bc7bd697a0c77e023c724aa4ea22edcdfaa0f" *)
Parameter u8 : set.
(* Parameter u9 "09c26abdb88570cbb608edfbe57d30576c9a90b0d04071630aa0d3b62d9c634b" "f7b5ffe5245726f4af7381ced353e716ac8d1afab440daf56cd884ec8e25f3ac" *)
Parameter u9 : set.
(* Parameter u10 "992db04f3545ca6059e54ab6da6f2ea553db0f23228f7fec0d787191aaa7a699" "dacefbd6851dd6711e6ed263045ec145efad7c6f5bfe7e5223ba6c7c5533e61e" *)
Parameter u10 : set.
(* Parameter u11 "8d98a4d4dfcb8d45bfdcd349a4735f18958f85477c7c78e7af7b858830ea91e7" "fe7b8011fa04942e98e7459bad1082ace0dfdd32285ea0719af3aef0e9417e40" *)
Parameter u11 : set.
(* Parameter u12 "95f5d0914858066458ab42966efbfe1dd0f032e802a54f602e8e5407ac56ace7" "c03c309131c67756afa0fda4d4c84047a8defc43f47980c44c05639208cbaa8e" *)
Parameter u12 : set.
(* Parameter u13 "5fc070d127ffae798f70b712dd801ce996aeab3cec7aa3b427979e46f34030ae" "5e6da24eb2e380feb39c79acefdce29d92c5faf26abed0e1ca071eaf6e391f2f" *)
Parameter u13 : set.
(* Parameter u14 "889a1e76b981b1a33cf68477e7b8b953867e63c9dca7b1aeb36f1c325e9b2a89" "07f6b9e7ce1ef1900b104985e2aa47323bd902e38b2b479799fb998db97ff197" *)
Parameter u14 : set.
(* Parameter u15 "5c491c9addfc95c6b9d569a2be553029fe085eeae41ee78922d29695364b8620" "98e246907ff1cee98e10366044c2b784e01f55f3a758acab213d3e2ec3fb3388" *)
Parameter u15 : set.
(* Parameter u16 "f44edc3a0f316d5a784e3afbfb9fec2f3ce4a1f6f80d2f7df61dd3cd3466ad24" "5c2a16cdb094537a2fafee11c4bc651c9fb5d6c4e4cb5153e4b4d2abeb392dfd" *)
Parameter u16 : set.
Definition Church17_to_u17 : (set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set) -> set :=
 (fun x0 : set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set => x0 Empty u1 u2 u3 u4 u5 u6 u7 u8 u9 u10 u11 u12 u13 u14 u15 u16).
(* Parameter u17 "cd79716d8923d293cac26e380f44bd1d637c5275ecfc89b47177ddf0a6ed1145" "7a7688d6358f93625a885a93e92c065257968a83dad53f42a5517baa820cd98c" *)
Parameter u17 : set.
Axiom missingprop_14e19ebc7e16f882d3be4482dbe497cecb7597969c9cae0a9f87fe87a0ee217a : (forall x0, x0 :e u17 -> (forall x1 : set -> prop, x1 Empty -> x1 u1 -> x1 u2 -> x1 u3 -> x1 u4 -> x1 u5 -> x1 u6 -> x1 u7 -> x1 u8 -> x1 u9 -> x1 u10 -> x1 u11 -> x1 u12 -> x1 u13 -> x1 u14 -> x1 u15 -> x1 u16 -> x1 x0)).
Theorem missingprop_6d01d49ea450d3e472df52e27a7b74861b461083d49142b218ad17a5e9f7fa4b : (forall x0 : set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set, x0 Empty = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x2) -> x0 u1 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x3) -> x0 u2 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x4) -> x0 u3 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x5) -> x0 u4 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x6) -> x0 u5 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x7) -> x0 u6 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x8) -> x0 u7 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x9) -> x0 u8 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x10) -> x0 u9 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x11) -> x0 u10 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x12) -> x0 u11 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x13) -> x0 u12 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x14) -> x0 u13 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x15) -> x0 u14 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x16) -> x0 u15 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x17) -> x0 u16 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x18) -> (forall x1, x1 :e u17 -> Church17_to_u17 (x0 x1) = x1)).
admit.
Qed.
Theorem missingprop_1ff940d7d7fd07bca02cb8bae15a738ac9d18223e9b7d5f5dd029717e48b0871 : (forall x0 : set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set, x0 Empty = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x2) -> x0 u1 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x3) -> x0 u2 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x4) -> x0 u3 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x5) -> x0 u4 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x6) -> x0 u5 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x7) -> x0 u6 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x8) -> x0 u7 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x9) -> x0 u8 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x10) -> x0 u9 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x11) -> x0 u10 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x12) -> x0 u11 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x13) -> x0 u12 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x14) -> x0 u13 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x15) -> x0 u14 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x16) -> x0 u15 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x17) -> x0 u16 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x18) -> (forall x1, x1 :e u17 -> (forall x2, x2 :e u17 -> x0 x1 = x0 x2 -> x1 = x2))).
admit.
Qed.
Definition Church17_p : (set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set) -> prop :=
 (fun x0 : set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set => forall x1 : (set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set) -> prop, x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x2) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x3) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x4) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x5) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x6) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x7) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x8) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x9) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x10) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x11) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x12) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x13) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x14) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x15) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x16) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x17) -> x1 (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x18) -> x1 x0).
Theorem missingprop_81b116436b34cea212d4f0309f3bfd58da18783dbb96b6586a91904b350781e5 : (forall x0 : set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set, x0 Empty = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x2) -> x0 u1 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x3) -> x0 u2 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x4) -> x0 u3 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x5) -> x0 u4 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x6) -> x0 u5 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x7) -> x0 u6 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x8) -> x0 u7 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x9) -> x0 u8 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x10) -> x0 u9 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x11) -> x0 u10 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x12) -> x0 u11 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x13) -> x0 u12 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x14) -> x0 u13 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x15) -> x0 u14 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x16) -> x0 u15 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x17) -> x0 u16 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x18) -> (forall x1 : set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set, Church17_p x1 -> x0 (Church17_to_u17 x1) = x1)).
admit.
Qed.
Theorem missingprop_0ed18bb9d63aa65d76c545a5c0227e94d836fbdbd08f00102f2e948d25e0c0c7 : (forall x0 : set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set, x0 Empty = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x2) -> x0 u1 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x3) -> x0 u2 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x4) -> x0 u3 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x5) -> x0 u4 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x6) -> x0 u5 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x7) -> x0 u6 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x8) -> x0 u7 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x9) -> x0 u8 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x10) -> x0 u9 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x11) -> x0 u10 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x12) -> x0 u11 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x13) -> x0 u12 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x14) -> x0 u13 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x15) -> x0 u14 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x16) -> x0 u15 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x17) -> x0 u16 = (fun x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 : set => x18) -> (forall x1 x2 : set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set -> set, Church17_p x1 -> Church17_p x2 -> Church17_to_u17 x1 = Church17_to_u17 x2 -> x1 = x2)).
admit.
Qed.