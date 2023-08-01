within Dynawo.Electrical.Controls.WECC;

model LowVoltagePowerLogic
  Modelica.Blocks.Interfaces.RealOutput LVPL annotation(
    Placement(visible = true, transformation(origin = {117, -1}, extent = {{-17, -17}, {17, 17}}, rotation = 0), iconTransformation(origin = {120, 0}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput UPu annotation(
    Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  parameter Real zerox "LVPL zero crossing in p. u.";
  parameter Real brkpt "LVPL breakpoint in p. u.";
  parameter Real lvpl1 "LVPL gain breakpoint in p. u.";
  Real mlvpl;
  
initial equation
  
  
equation
  LVPL = if Upu < zerox then 0 else if Upu > brkpt then 9999 else mlvpl*(Upu - zerox);
  mlvpl = lvpl1/(brkpt-zerox);
  
annotation(
    Icon(graphics = {Text(origin = {4, 4}, extent = {{-54, 40}, {54, -40}}, textString = "LVPL"), Rectangle(extent = {{-100, 100}, {100, -100}})}));
end LowVoltagePowerLogic;
