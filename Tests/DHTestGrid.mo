within DeSchipjes.Tests;
model DHTestGrid

  IDEAS.Interfaces.Building building1(
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare IDEAS.Occupants.Standards.None occupant(TSet_val=273.15 + 21),
    redeclare DistrictHeating.HeatingSystems.HeatExchangerM heatingSystem(QNom={2113,1409,1,1025,804,1}))
    annotation (Placement(transformation(extent={{12,52},{32,72}})));
  IDEAS.Interfaces.Building building2(
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare IDEAS.Occupants.Standards.None occupant(TSet_val=273.15 + 21),
    redeclare DistrictHeating.HeatingSystems.HeatExchangerM heatingSystem(QNom={2113,1409,1,1025,804,1}))
    annotation (Placement(transformation(extent={{-14,52},{6,72}})));
  DistrictHeating.Interfaces.DHConnection dHConnection(
    redeclare package Medium = IDEAS.Media.Water.Simple,
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=1)
    annotation (Placement(transformation(extent={{12,22},{32,44}})));
  DistrictHeating.Interfaces.DHConnection dHConnection1(
    redeclare package Medium = IDEAS.Media.Water.Simple,
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=1)
    annotation (Placement(transformation(extent={{-14,22},{6,44}})));
  IDEAS.Fluid.Production.IdealHeater idealHeater(m_flow_nominal=5)
    annotation (Placement(transformation(extent={{-16,12},{4,-8}})));
  Modelica.Blocks.Sources.Constant const(k=273.15 + 80)
    annotation (Placement(transformation(extent={{-46,-44},{-26,-24}})));
  IDEAS.Fluid.Sources.FixedBoundary bou(
    nPorts=1,
    redeclare package Medium = IDEAS.Media.Water.Simple,
    use_T=false)
    annotation (Placement(transformation(extent={{20,-44},{40,-24}})));
  inner IDEAS.SimInfoManager sim
    annotation (Placement(transformation(extent={{-100,60},{-80,80}})));
  inner Modelica.Fluid.System system
    annotation (Placement(transformation(extent={{-76,60},{-56,80}})));
  inner IDEAS.Occupants.Extern.StrobeInfoManager strobe
    annotation (Placement(transformation(extent={{-100,40},{-80,60}})));
equation
  connect(dHConnection.flowPortIn,building1. flowPort_return) annotation (Line(
      points={{20,44},{20,52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPortOut,building2. flowPort_supply) annotation (
      Line(
      points={{-2,44},{-2,52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPortIn,building2. flowPort_return) annotation (Line(
      points={{-6,44},{-6,52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection.flowPort_supply_out,dHConnection1. flowPort_supply_in)
    annotation (Line(
      points={{12,38},{6.2,38}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPort_return_out,dHConnection. flowPort_return_in)
    annotation (Line(
      points={{6,26.2},{12,26.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection.flowPortOut,building1. flowPort_supply) annotation (Line(
      points={{24,44},{24,52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(const.y,idealHeater. TSet) annotation (Line(
      points={{-25,-34},{-12,-34},{-12,-10}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(bou.ports[1],dHConnection. flowPort_supply_in) annotation (Line(
      points={{40,-34},{48,-34},{48,38},{32.2,38}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(idealHeater.port_a, dHConnection.flowPort_return_out) annotation (
      Line(
      points={{4,8},{36,8},{36,26.2},{32,26.2}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(idealHeater.port_b, dHConnection.flowPort_supply_in) annotation (Line(
      points={{4,-4},{48,-4},{48,38},{32.2,38}},
      color={0,127,255},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end DHTestGrid;
