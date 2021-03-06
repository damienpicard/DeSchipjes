within DeSchipjes.Interfaces.BaseClasses;
partial model ProductionSite
  extends IDEAS.Fluid.Interfaces.PartialTwoPortInterface;

  //Parameters
  parameter Modelica.SIunits.Pressure grid_dp
    "Nominal pressure drop over the grid";
  parameter Modelica.SIunits.Temperature TSupplyGrid = 273.15+80
    "Supply temperature of the Grid";
  parameter Integer nBuildings = 11;

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
                                               graphics={
      Polygon(
        origin={19.533,9.938},
        lineColor = {0,128,255},
        fillColor = {0,128,255},
        fillPattern = FillPattern.Solid,
        points = {{-80,10},{-60,-10},{-80,-30},{-20,-30},{0,-10},{-20,10},{-80,10}}),
      Polygon(
        origin={19.533,9.938},
        lineColor = {255,128,0},
        fillColor = {255,128,0},
        fillPattern = FillPattern.Solid,
        points = {{-20,10},{0,-10},{-20,-30},{40,-30},{60,-10},{40,10},{-20,10}}),
      Polygon(
        origin={-20.467,-10.062},
        lineColor = {255,0,0},
        fillColor = {255,0,0},
        fillPattern = FillPattern.Solid,
        points = {{-40,-90},{-20,-70},{0,-90},{0,-50},{-20,-30},{-40,-50},{-40,-90}},
          rotation=180)}));
end ProductionSite;
