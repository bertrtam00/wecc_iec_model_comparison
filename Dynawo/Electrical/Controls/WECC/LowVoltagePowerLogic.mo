within Dynawo.Electrical.Controls.WECC;

model LowVoltagePowerLogic
  Modelica.Blocks.Interfaces.RealOutput LVPL annotation(
    Placement(visible = true, transformation(origin = {117, -1}, extent = {{-17, -17}, {17, 17}}, rotation = 0), iconTransformation(origin = {120, 0}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput UPu annotation(
    Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 9999)  annotation(
    Placement(visible = true, transformation(origin = {-2, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(const.y, LVPL) annotation(
    Line(points = {{9, 52}, {49.5, 52}, {49.5, 0}, {118, 0}}, color = {0, 0, 127}));

annotation(
    Icon(graphics = {Text(origin = {4, 4}, extent = {{-54, 40}, {54, -40}}, textString = "LVPL"), Rectangle(extent = {{-100, 100}, {100, -100}})}));
end LowVoltagePowerLogic;
