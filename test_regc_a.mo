model test_regc_a
  Dynawo.Electrical.Lines.Line line(BPu = 0, GPu = 0, RPu = RPu, XPu = XPu) annotation(
    Placement(visible = true, transformation(origin = {22, -32}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Dynawo.Electrical.Sources.InjectorIDQ injector(Id0Pu = Id0Pu, Iq0Pu = Iq0Pu, P0Pu = -PInj0Pu*(SNom/SystemBase.SnRef), Q0Pu = -QInj0Pu*(SNom/SystemBase.SnRef), SNom = SNom, U0Pu = UInj0Pu, UPhase0 = UPhaseInj0, i0Pu = i0Pu, s0Pu = s0Pu, u0Pu = uInj0Pu) annotation(
    Placement(visible = true, transformation(origin = {-18, -40}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
  Dynawo.Electrical.Buses.InfiniteBusWithVariations bus_WECC(U0Pu = 1, UEvtPu = 1, UPhase = 0, omega0Pu = 1, omegaEvtPu = 1, tOmegaEvtEnd = 9, tOmegaEvtStart = 8, tUEvtEnd = 6, tUEvtStart = 5) annotation(
    Placement(visible = true, transformation(origin = {74, -32}, extent = {{-12, -12}, {12, 12}}, rotation = -90)));
  Dynawo.Electrical.Controls.WECC.GeneratorControl wecc_regc(Id0Pu = Id0Pu, Iq0Pu = Iq0Pu, IqrMaxPu = IqrMaxPu, IqrMinPu = IqrMinPu, RateFlag = RateFlag, Rrpwr = Rrpwr, UInj0Pu = UInj0Pu, tFilterGC = tFilterGC, tG = tG) annotation(
    Placement(visible = true, transformation(origin = {-59, 9}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
equation
  connect(line.terminal2, injector.terminal) annotation(
    Line(points = {{12, -32}, {-6.5, -32}}, color = {0, 0, 255}));
  connect(line.terminal1, bus_WECC.terminal) annotation(
    Line(points = {{32, -32}, {74, -32}}, color = {0, 0, 255}));
  annotation(
    uses(Dynawo(version = "1.0.1")));end test_regc_a;
