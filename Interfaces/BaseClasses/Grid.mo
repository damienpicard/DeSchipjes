within DeSchipjes.Interfaces.BaseClasses;
partial model Grid
  //Extensions
  extends IDEAS.Fluid.Interfaces.PartialTwoPortInterface;

  //Parameteres
  parameter Modelica.SIunits.Temperature TSupplyRad = 273.15+70
    "Supply temperature of the radiators";
  parameter Modelica.SIunits.Temperature TReturnRad = 273.15+60
    "Return temperature of the radiators";

  parameter Modelica.SIunits.Temperature TSupplyGrid = 273.15+80
    "Supply temperature of the Grid";

  parameter Modelica.SIunits.Power QNom[:] = {2113,1409,1,1025,804,1}
    "Heat losses for each zone";
  parameter Modelica.SIunits.Pressure dp_nominal;

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
        Polygon(
          points={{-60,-20},{-20,-20},{-20,20},{-40,40},{-60,20},{-60,-20}},
          lineColor={127,0,0},
          smooth=Smooth.None,
          fillColor={127,0,0},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-46,-20},{-34,0}},
          lineColor={127,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-20,-20},{20,-20},{20,20},{0,40},{-20,20},{-20,-20}},
          lineColor={127,0,0},
          smooth=Smooth.None,
          fillColor={127,0,0},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-6,-20},{6,0}},
          lineColor={127,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{20,-20},{60,-20},{60,20},{40,40},{20,20},{20,-20}},
          lineColor={127,0,0},
          smooth=Smooth.None,
          fillColor={127,0,0},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{34,-20},{46,0}},
          lineColor={127,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-100,0},{-60,0}},
          color={0,128,255},
          smooth=Smooth.None),
        Line(
          points={{60,0},{90,0}},
          color={0,128,255},
          smooth=Smooth.None)}));
end Grid;