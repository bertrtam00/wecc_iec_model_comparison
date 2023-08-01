within Dynawo.Electrical.Controls.WECC;

model LowVoltageIpManagement
  Modelica.Blocks.Interfaces.RealInput Ip_in annotation(
    Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Vt annotation(
    Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput Ip_out annotation(
    Placement(visible = true, transformation(origin = {117, -1}, extent = {{-17, -17}, {17, 17}}, rotation = 0), iconTransformation(origin = {120, 0}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
equation
  connect(Ip_in, Ip_out) annotation(
    Line(points = {{-100, 40}, {10, 40}, {10, 0}, {118, 0}}, color = {0, 0, 127}));
annotation(
    Icon(graphics = {Text(origin = {2, 3}, extent = {{56, -37}, {-56, 37}}, textString = "LV Ip"), Rectangle(extent = {{-100, 100}, {100, -100}})}));
end LowVoltageIpManagement;
