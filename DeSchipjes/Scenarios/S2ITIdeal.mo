within DeSchipjes.Scenarios;
model S2ITIdeal "IT grid with ideal production"
  import DeSchipjes;
  extends DeSchipjes.Interfaces.Scenario(
    TRadSupply=273.15+50,
    TRadReturn=273.15+40,
    TGrid=273.15+55,
    redeclare DeSchipjes.Grids.Full.ITFullGrid
                                       grid(KVs={1,20,30,50,80,110,150,200,260,
          330,400}),                         redeclare
      DeSchipjes.ProductionSites.IdealModulatingProduction productionSite(
        TSupplyGridHigh=273.15+75,
        modulating=true,
      grid_dp=3*grid.dp_nominal),
    bou(p=5E6));

equation
  connect(productionSite.y, grid.u) annotation (Line(
      points={{-2,3},{-2,10},{-28,10},{-28,46},{0,46},{0,39}},
      color={255,0,255},
      smooth=Smooth.None));
  connect(grid.valveOpenings, productionSite.u) annotation (Line(
      points={{-11,36},{-26,36},{-26,12},{2,12},{2,3}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (Icon(graphics={Text(
          extent={{-100,100},{100,-100}},
          lineColor={135,135,135},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid,
          textString="2")}),
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
            100,100}}),
                    graphics),
    experiment(
      StopTime=604800,
      __Dymola_fixedstepsize=10,
      __Dymola_Algorithm="Rkfix4"),
    __Dymola_experimentSetupOutput);
end S2ITIdeal;