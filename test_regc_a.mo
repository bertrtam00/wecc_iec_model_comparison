model test_regc_a
  Dynawo.Electrical.Lines.Line line(BPu = 0, GPu = 0, RPu = 0, XPu = 0.01) annotation(
    Placement(visible = true, transformation(origin = {22, -32}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Dynawo.Electrical.Sources.InjectorIDQ injector(Id0Pu = 0.5, Iq0Pu = 0, P0Pu = -0.005, Q0Pu = 0, SNom = 1, U0Pu = 1, UPhase0 = 0, i0Pu = Complex(0.5, 0), s0Pu = Complex(0.5, 0), u0Pu = Complex(1, 0)) annotation(
    Placement(visible = true, transformation(origin = {-18, -40}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
  Dynawo.Electrical.Buses.InfiniteBusWithVariations bus_WECC(U0Pu = 1, UEvtPu = 1, UPhase = 0, omega0Pu = 1, omegaEvtPu = 1, tOmegaEvtEnd = 9, tOmegaEvtStart = 8, tUEvtEnd = 6, tUEvtStart = 5) annotation(
    Placement(visible = true, transformation(origin = {74, -32}, extent = {{-12, -12}, {12, 12}}, rotation = -90)));
  Dynawo.Electrical.Controls.WECC.REGC_A regc_a(tFilterGC = 0.01, tG = 0.01)  annotation(
    Placement(visible = true, transformation(origin = {-56, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step(height = 0.3, offset = 0.5)  annotation(
    Placement(visible = true, transformation(origin = {-105, -33}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step1(height = 0.2, offset = 0) annotation(
    Placement(visible = true, transformation(origin = {-104, -70}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant RrpwrPos0(k = 0.1) annotation(
    Placement(visible = true, transformation(origin = {-83, -1}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  line.switchOffSignal1.value = false;
  line.switchOffSignal2.value = false;
  injector.switchOffSignal1.value = false;
  injector.switchOffSignal2.value = false;
  injector.switchOffSignal3.value = false;
  connect(line.terminal2, injector.terminal) annotation(
    Line(points = {{12, -32}, {-6.5, -32}}, color = {0, 0, 255}));
  connect(line.terminal1, bus_WECC.terminal) annotation(
    Line(points = {{32, -32}, {74, -32}}, color = {0, 0, 255}));
  connect(regc_a.idRefPu, injector.idPu) annotation(
    Line(points = {{-45, -46}, {-30, -46}}, color = {0, 0, 127}));
  connect(regc_a.iqRefPu, injector.iqPu) annotation(
    Line(points = {{-45, -36}, {-30, -36}}, color = {0, 0, 127}));
  connect(step1.y, regc_a.iqCmdPu) annotation(
    Line(points = {{-100, -70}, {-80, -70}, {-80, -46}, {-66, -46}}, color = {0, 0, 127}));
  connect(step.y, regc_a.idCmdPu) annotation(
    Line(points = {{-99.5, -33}, {-80, -33}, {-80, -34}, {-66, -34}}, color = {0, 0, 127}));
  connect(RrpwrPos0.y, regc_a.Qgen0) annotation(
    Line(points = {{-72, 0}, {-62, 0}, {-62, -30}}, color = {0, 0, 127}));
  connect(injector.UPu, regc_a.UPu) annotation(
    Line(points = {{-6, -48}, {8, -48}, {8, -62}, {-56, -62}, {-56, -50}}, color = {0, 0, 127}));
  annotation(
    uses(Dynawo(version = "1.0.1"), Modelica(version = "3.2.3")));end test_regc_a;
