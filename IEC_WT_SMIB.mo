model IEC_WT_SMIB
  Dynawo.Electrical.Wind.IEC.WT4ACurrentSource wT4ACurrentSource(BesPu = 0, DPMaxP4APu = 1, DPRefMax4APu = 100, DPRefMin4APu = -100, DUdb1Pu = -0.1, DUdb2Pu = 0.1, DfMaxPu = 1, DipMaxPu = 1, DiqMaxPu = 100, DiqMinPu = -100, GesPu = 0,IGsIm0Pu = 0, IGsRe0Pu = 0.5, IMaxDipPu = 1.3, IMaxPu = 1.3, IpMax0Pu = 1.2, IqH1Pu = 1.05, IqMax0Pu = 0.4, IqMaxPu = 1.05, IqMin0Pu = -0.4, IqMinPu = -1.05, IqPostPu = 0, Kipaw = 100, Kiq = 2.25, Kiqaw = 100, Kiu = 10, Kpaw = 1000, Kpq = 1.1, Kpqu = 20, Kpu = 2, Kpufrt = 2, Kqv = 2, MdfsLim = false, MpUScale = false, MqG = 1, Mqfrt = 1, Mqpri = true, P0Pu = -0.5, PaG0Pu = 0.5, Q0Pu = 0, QMax0Pu = 0.4, QMaxPu = 0.8, QMin0Pu = -0.4, QMinPu = -0.8, QlConst = true, RDropPu = 0, ResPu = 0,SNom = 1, U0Pu = 1, UGsIm0Pu = 1e-3, UGsRe0Pu = 1, UMaxPu = 1.1, UMinPu = 0.9, UOverPu = 999, UPhase0 = 0, UPll1Pu = 999, UPll2Pu = 0.13, URef0Pu = 0, UUnderPu = 1e-3, UpDipPu = 0, UpquMaxPu = 1.1, UqDipPu = 0.9, UqRisePu = 1.1, XDropPu = 0, XWT0Pu = 0, XesPu = 0, fOverPu = 1.1, fUnderPu = 0.9, i0Pu = Complex(0.5, 0), tG = 0.01, tIFilt = 0.01, tPFilt = 0.01, tPOrdP4A = 0.1, tPWTRef4A = 0.01, tPll = 0.01, tPost = 0, tQFilt = 0.01, tQord = 0.05, tS = 0.001, tUFilt = 0.01, tUss = 30, tfFilt = 0.01, u0Pu = Complex(1, 0))  annotation(
    Placement(visible = true, transformation(origin = {-52, 72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Dynawo.Electrical.Lines.Line line(BPu = 0, GPu = 0, RPu = 0, XPu = 0.0000020661)  annotation(
    Placement(visible = true, transformation(origin = {-20, 72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Dynawo.Electrical.Buses.InfiniteBusWithVariations infiniteBusWithVariations(U0Pu = 1, UEvtPu = 0.8, UPhase = 0, omega0Pu = 1, omegaEvtPu = 1, tOmegaEvtEnd = 9, tOmegaEvtStart = 8, tUEvtEnd = 6, tUEvtStart = 5)  annotation(
    Placement(visible = true, transformation(origin = {0, 72}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.Step tanPhi(height = 0, offset = -0.21, startTime = 0)  annotation(
    Placement(visible = true, transformation(origin = {-106, 100}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Blocks.Sources.Step pWTrefPu(height = 0, offset = 0.5, startTime = 0) annotation(
    Placement(visible = true, transformation(origin = {-106, 80}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Blocks.Sources.Step xWTrefPu(height = 0, offset = 0, startTime = 0) annotation(
    Placement(visible = true, transformation(origin = {-106, 60}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Blocks.Sources.Step omegaRefPu(height = 0, offset = 1, startTime = 0) annotation(
    Placement(visible = true, transformation(origin = {-106, 40}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Dynawo.Electrical.Wind.IEC.WT4ACurrentSource_INIT wT4ACurrentSource_INIT(BesPu = 0, GesPu = 0, IMaxPu = 1.2, Kpqu = 2, MqG = 1, P0Pu = 0.5, Q0Pu = 0, QMaxPu = 0.5, QMinPu = 0.5, QlConst = true, ResPu = 0, SNom = 1, U0Pu = 1, UPhase0 = 0, UpquMaxPu = 1, XesPu = 0.00001)  annotation(
    Placement(visible = true, transformation(origin = {-50, 114}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation

  line.switchOffSignal1.value = false;
  line.switchOffSignal2.value = false;
 
  connect(wT4ACurrentSource.terminal, line.terminal1) annotation(
    Line(points = {{-41, 72}, {-30, 72}}, color = {0, 0, 255}));
  connect(line.terminal2, infiniteBusWithVariations.terminal) annotation(
    Line(points = {{-10, 72}, {0, 72}}, color = {0, 0, 255}));
  connect(pWTrefPu.y, wT4ACurrentSource.PWTRefPu) annotation(
    Line(points = {{-99, 80}, {-80.75, 80}, {-80.75, 74}, {-62, 74}}, color = {0, 0, 127}));
  connect(xWTrefPu.y, wT4ACurrentSource.xWTRefPu) annotation(
    Line(points = {{-99, 60}, {-80.5, 60}, {-80.5, 70}, {-62, 70}}, color = {0, 0, 127}));
  connect(omegaRefPu.y, wT4ACurrentSource.omegaRefPu) annotation(
    Line(points = {{-99, 40}, {-67.5, 40}, {-67.5, 66}, {-61.5, 66}}, color = {0, 0, 127}));
  connect(tanPhi.y, wT4ACurrentSource.tanPhi) annotation(
    Line(points = {{-100, 100}, {-74, 100}, {-74, 78}, {-62, 78}}, color = {0, 0, 127}));

annotation(
    uses(Dynawo(version = "1.0.1"), Modelica(version = "3.2.3")),
  experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.001),
  __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
  __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl", variableFilter = ".*"));
end IEC_WT_SMIB;
