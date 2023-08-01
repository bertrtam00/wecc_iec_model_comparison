within Dynawo.Electrical.Controls.WECC;

model HighVoltageIqManagement
  Modelica.Blocks.Interfaces.RealOutput Iq_out annotation(
    Placement(visible = true, transformation(origin = {117, -1}, extent = {{-17, -17}, {17, 17}}, rotation = 0), iconTransformation(origin = {120, 0}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Vt annotation(
    Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Iq_in annotation(
    Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  connect(Iq_in, Iq_out) annotation(
    Line(points = {{-100, 40}, {10, 40}, {10, 0}, {118, 0}}, color = {0, 0, 127}));
annotation(
    Icon(graphics = {Text(origin = {6, 3}, extent = {{70, -31}, {-70, 31}}, textString = "HV Iq"), Rectangle(extent = {{-100, 100}, {100, -100}})}));
end HighVoltageIqManagement;
