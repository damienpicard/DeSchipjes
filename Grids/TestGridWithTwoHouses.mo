within DeSchipjes.Grids;
model TestGridWithTwoHouses
  //Extensions
  extends DeSchipjes.Interfaces.BaseClasses.Grid;

  IDEAS.Interfaces.Building building1(
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare package Medium = Medium,
    redeclare IDEAS.Occupants.Standards.None occupant(TSet_val=fill(273.15 + 21,
          6)),
    redeclare DeSchipjes.Dwellings.HeatingSystems.HTHeatingSystem heatingSystem(
      QNom=QNom,
      TSupply=TSupply,
      TReturn=TReturn))
    annotation (Placement(transformation(extent={{-56,46},{-76,66}})));
  IDEAS.Interfaces.Building building2(
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare package Medium = Medium,
    redeclare IDEAS.Occupants.Standards.None occupant(TSet_val=fill(273.15 + 21,
          6)),
    redeclare DeSchipjes.Dwellings.HeatingSystems.HTHeatingSystem heatingSystem(
      QNom=QNom,
      TSupply=TSupply,
      TReturn=TReturn))
    annotation (Placement(transformation(extent={{-56,76},{-76,96}})));
  DistrictHeating.Interfaces.DHConnection dHConnection1(
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=1,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{10,-11},{-10,11}},
        rotation=90,
        origin={-48,37})));
  DistrictHeating.Interfaces.DHConnection dHConnection2(
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=1,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{10,-11},{-10,11}},
        rotation=90,
        origin={-48,67})));
equation
  connect(port_a,dHConnection1. flowPort_supply_in) annotation (Line(
      points={{-100,0},{-50,0},{-50,29.8}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(building2.flowPort_return,dHConnection2. flowPortIn) annotation (Line(
      points={{-64,76},{-64,72},{-56,72}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building2.flowPort_supply,dHConnection2. flowPortOut) annotation (
      Line(
      points={{-68,76},{-68,68},{-56,68}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPort_supply_out,dHConnection2. flowPort_supply_in)
    annotation (Line(
      points={{-50,50},{-50,59.8}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPort_return_in,dHConnection2. flowPort_return_out)
    annotation (Line(
      points={{-38.2,50},{-38.2,60}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPort_return_out, port_b) annotation (Line(
      points={{-38.2,30},{-38,30},{-38,0},{100,0}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPortIn,building1. flowPort_return) annotation (Line(
      points={{-56,42},{-64,42},{-64,46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPortOut,building1. flowPort_supply) annotation (
      Line(
      points={{-56,38},{-68,38},{-68,46}},
      color={0,0,0},
      smooth=Smooth.None));
end TestGridWithTwoHouses;
