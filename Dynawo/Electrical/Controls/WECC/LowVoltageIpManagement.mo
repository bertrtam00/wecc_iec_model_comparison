within Dynawo.Electrical.Controls.WECC;

model LowVoltageIpManagement
  Modelica.Blocks.Interfaces.RealInput Ip_in annotation(
    Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Vt annotation(
    Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput Ip_out annotation(
    Placement(visible = true, transformation(origin = {117, -1}, extent = {{-17, -17}, {17, 17}}, rotation = 0), iconTransformation(origin = {120, 0}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  parameter Real lvpnt0 "Min low voltage active current breakpoint";
  parameter Real lvpnt1 "Max low voltage active current breakpoint";
  Real idlv;
equation
  Ip_out = Ip_in*idlv;
  idlv = if Vt < lvpnt0 then 0 else if Vt > lvpnt1 then 1 else 1/(lvpnt1-lvpnt0)*(Vt-lvpnt0);
annotation(
    Icon(graphics = {Text(origin = {2, 3}, extent = {{56, -37}, {-56, 37}}, textString = "LV Ip"), Rectangle(extent = {{-100, 100}, {100, -100}})}));
end LowVoltageIpManagement;
