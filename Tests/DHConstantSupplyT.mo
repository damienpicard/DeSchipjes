within DeSchipjes.Tests;
model DHConstantSupplyT
  "Test neighborhood connected to the district heating network with a constant supply T boiler as central heating system"

  IDEAS.Interfaces.Building building1(
    redeclare IDEAS.Buildings.Validation.BaseClasses.Occupant.None occupant,
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare DistrictHeating.HeatingSystems.HeatExchangerM heatingSystem(QNom=
          {2113,1409,1,1025,804,1}))
    annotation (Placement(transformation(extent={{78,76},{98,96}})));
  IDEAS.Interfaces.Building building2(
    redeclare IDEAS.Buildings.Validation.BaseClasses.Occupant.None occupant,
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare DistrictHeating.HeatingSystems.HeatExchangerM heatingSystem(QNom=
          {2113,1409,1,1025,804,1}))
    annotation (Placement(transformation(extent={{52,76},{72,96}})));
  IDEAS.Interfaces.Building building3(
    redeclare IDEAS.Buildings.Validation.BaseClasses.Occupant.None occupant,
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare DistrictHeating.HeatingSystems.HeatExchangerM heatingSystem(QNom=
          {2113,1409,1,1025,804,1}))
    annotation (Placement(transformation(extent={{26,76},{46,96}})));
  IDEAS.Interfaces.Building building4(
    redeclare IDEAS.Buildings.Validation.BaseClasses.Occupant.None occupant,
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare DistrictHeating.HeatingSystems.HeatExchangerM heatingSystem(QNom=
          {2113,1409,1,1025,804,1}))
    annotation (Placement(transformation(extent={{0,76},{20,96}})));
  IDEAS.Interfaces.Building building5(
    redeclare IDEAS.Buildings.Validation.BaseClasses.Occupant.None occupant,
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare DistrictHeating.HeatingSystems.HeatExchangerM heatingSystem(QNom=
          {2113,1409,1,1025,804,1}))
    annotation (Placement(transformation(extent={{-26,76},{-6,96}})));
  IDEAS.Interfaces.Building building6(
    redeclare IDEAS.Buildings.Validation.BaseClasses.Occupant.None occupant,
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare DistrictHeating.HeatingSystems.HeatExchangerM heatingSystem(QNom=
          {2113,1409,1,1025,804,1}))
    annotation (Placement(transformation(extent={{-52,76},{-32,96}})));
  IDEAS.Interfaces.Building building7(
    redeclare IDEAS.Buildings.Validation.BaseClasses.Occupant.None occupant,
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare DistrictHeating.HeatingSystems.HeatExchangerM heatingSystem(QNom=
          {2113,1409,1,1025,804,1}))
    annotation (Placement(transformation(extent={{-96,34},{-76,54}})));
  IDEAS.Interfaces.Building building8(
    redeclare IDEAS.Buildings.Validation.BaseClasses.Occupant.None occupant,
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare DistrictHeating.HeatingSystems.HeatExchangerM heatingSystem(QNom=
          {2113,1409,1,1025,804,1}))
    annotation (Placement(transformation(extent={{-96,8},{-76,28}})));
  IDEAS.Interfaces.Building building9(
    redeclare IDEAS.Buildings.Validation.BaseClasses.Occupant.None occupant,
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare DistrictHeating.HeatingSystems.HeatExchangerM heatingSystem(QNom=
          {2113,1409,1,1025,804,1}))
    annotation (Placement(transformation(extent={{-96,-18},{-76,2}})));
  IDEAS.Interfaces.Building building10(
    redeclare IDEAS.Buildings.Validation.BaseClasses.Occupant.None occupant,
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare DistrictHeating.HeatingSystems.HeatExchangerM heatingSystem(QNom=
          {2113,1409,1,1025,804,1}))
    annotation (Placement(transformation(extent={{-96,-44},{-76,-24}})));
  IDEAS.Interfaces.Building building11(
    redeclare IDEAS.Buildings.Validation.BaseClasses.Occupant.None occupant,
    redeclare IDEAS.Buildings.Validation.BaseClasses.VentilationSystem.None
      ventilationSystem,
    standAlone=true,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid(branch(
          heatLosses=false)),
    redeclare DeSchipjes.Dwellings.Structures.Woning140 building(isolatieTest=
          0.02),
    isDH=true,
    redeclare DistrictHeating.HeatingSystems.HeatExchangerM heatingSystem(QNom=
          {2113,1409,1,1025,804,1}))
    annotation (Placement(transformation(extent={{-96,-70},{-76,-50}})));
  DistrictHeating.Interfaces.DHConnection dHConnection(
    redeclare package Medium = IDEAS.Media.Water.Simple,
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=2)
    annotation (Placement(transformation(extent={{78,46},{98,68}})));
  DistrictHeating.Interfaces.DHConnection dHConnection1(
    redeclare package Medium = IDEAS.Media.Water.Simple,
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=2)
    annotation (Placement(transformation(extent={{52,46},{72,68}})));
  DistrictHeating.Interfaces.DHConnection dHConnection2(
    redeclare package Medium = IDEAS.Media.Water.Simple,
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=2)
    annotation (Placement(transformation(extent={{26,46},{46,68}})));
  DistrictHeating.Interfaces.DHConnection dHConnection3(
    redeclare package Medium = IDEAS.Media.Water.Simple,
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=2)
    annotation (Placement(transformation(extent={{0,46},{20,68}})));
  DistrictHeating.Interfaces.DHConnection dHConnection4(
    redeclare package Medium = IDEAS.Media.Water.Simple,
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=2)
    annotation (Placement(transformation(extent={{-26,46},{-6,68}})));
  DistrictHeating.Interfaces.DHConnection dHConnection5(
    redeclare package Medium = IDEAS.Media.Water.Simple,
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=2)
    annotation (Placement(transformation(extent={{-52,46},{-32,68}})));
  DistrictHeating.Interfaces.DHConnection dHConnection6(
    redeclare package Medium = IDEAS.Media.Water.Simple,
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=2)      annotation (Placement(transformation(
        extent={{-10,-11},{10,11}},
        rotation=90,
        origin={-66,27})));
  DistrictHeating.Interfaces.DHConnection dHConnection7(
    redeclare package Medium = IDEAS.Media.Water.Simple,
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=2)      annotation (Placement(transformation(
        extent={{-10,-11},{10,11}},
        rotation=90,
        origin={-66,1})));
  DistrictHeating.Interfaces.DHConnection dHConnection8(
    redeclare package Medium = IDEAS.Media.Water.Simple,
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=2)      annotation (Placement(transformation(
        extent={{-10,-11},{10,11}},
        rotation=90,
        origin={-66,-25})));
  DistrictHeating.Interfaces.DHConnection dHConnection9(
    redeclare package Medium = IDEAS.Media.Water.Simple,
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=2)      annotation (Placement(transformation(
        extent={{-10,-11},{10,11}},
        rotation=90,
        origin={-66,-51})));
  DistrictHeating.Interfaces.DHConnection dHConnection10(
    redeclare package Medium = IDEAS.Media.Water.Simple,
    length=15,
    redeclare DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=2)      annotation (Placement(transformation(
        extent={{-10,-11},{10,11}},
        rotation=90,
        origin={-66,-77})));
  IDEAS.Fluid.Production.IdealHeater idealHeater(m_flow_nominal=5)
    annotation (Placement(transformation(extent={{48,36},{68,16}})));
  Modelica.Blocks.Sources.Constant const(k=273.15 + 80)
    annotation (Placement(transformation(extent={{26,-20},{46,0}})));
  IDEAS.Fluid.Sources.FixedBoundary bou(
    nPorts=1,
    redeclare package Medium = IDEAS.Media.Water.Simple,
    use_T=false)
    annotation (Placement(transformation(extent={{86,-20},{106,0}})));

  inner IDEAS.SimInfoManager sim
    annotation (Placement(transformation(extent={{60,-80},{80,-60}})));
  inner Modelica.Fluid.System system
    annotation (Placement(transformation(extent={{90,-80},{110,-60}})));
equation
  connect(dHConnection.flowPortIn, building1.flowPort_return) annotation (Line(
      points={{86,68},{86,76}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPortOut, building2.flowPort_supply) annotation (
      Line(
      points={{64,68},{64,76}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPortIn, building2.flowPort_return) annotation (Line(
      points={{60,68},{60,76}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection2.flowPortOut, building3.flowPort_supply) annotation (
      Line(
      points={{38,68},{38,76}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection2.flowPortIn, building3.flowPort_return) annotation (Line(
      points={{34,68},{34,76}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection3.flowPortOut, building4.flowPort_supply) annotation (
      Line(
      points={{12,68},{12,76}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection3.flowPortIn, building4.flowPort_return) annotation (Line(
      points={{8,68},{8,76}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection4.flowPortOut, building5.flowPort_supply) annotation (
      Line(
      points={{-14,68},{-14,76}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection4.flowPortIn, building5.flowPort_return) annotation (Line(
      points={{-18,68},{-18,76}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection5.flowPortOut, building6.flowPort_supply) annotation (
      Line(
      points={{-40,68},{-40,76}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection5.flowPortIn, building6.flowPort_return) annotation (Line(
      points={{-44,68},{-44,76}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection.flowPort_supply_out, dHConnection1.flowPort_supply_in)
    annotation (Line(
      points={{78,62},{72.2,62}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPort_return_out, dHConnection.flowPort_return_in)
    annotation (Line(
      points={{72,50.2},{78,50.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPort_supply_out, dHConnection2.flowPort_supply_in)
    annotation (Line(
      points={{52,62},{46.2,62}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPort_return_in, dHConnection2.flowPort_return_out)
    annotation (Line(
      points={{52,50.2},{46,50.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection2.flowPort_supply_out, dHConnection3.flowPort_supply_in)
    annotation (Line(
      points={{26,62},{20.2,62}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection2.flowPort_return_in, dHConnection3.flowPort_return_out)
    annotation (Line(
      points={{26,50.2},{20,50.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection3.flowPort_supply_out, dHConnection4.flowPort_supply_in)
    annotation (Line(
      points={{0,62},{-5.8,62}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection3.flowPort_return_in, dHConnection4.flowPort_return_out)
    annotation (Line(
      points={{0,50.2},{-6,50.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection4.flowPort_supply_out, dHConnection5.flowPort_supply_in)
    annotation (Line(
      points={{-26,62},{-31.8,62}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection4.flowPort_return_in, dHConnection5.flowPort_return_out)
    annotation (Line(
      points={{-26,50.2},{-32,50.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection.flowPortOut, building1.flowPort_supply) annotation (Line(
      points={{90,68},{90,76}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection5.flowPort_supply_out, dHConnection6.flowPort_supply_in)
    annotation (Line(
      points={{-52,62},{-68,62},{-68,40.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection5.flowPort_return_in, dHConnection6.flowPort_return_out)
    annotation (Line(
      points={{-52,50.2},{-56,50.2},{-56,40},{-56.2,40}},
      color={0,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(dHConnection6.flowPortIn, building7.flowPort_return) annotation (Line(
      points={{-74,28},{-88,28},{-88,34}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection6.flowPortOut, building7.flowPort_supply) annotation (
      Line(
      points={{-74,32},{-84,32},{-84,34}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection7.flowPortIn, building8.flowPort_return) annotation (Line(
      points={{-74,2},{-88,2},{-88,8}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection7.flowPortOut, building8.flowPort_supply) annotation (
      Line(
      points={{-74,6},{-84,6},{-84,8}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection8.flowPortOut, building9.flowPort_supply) annotation (
      Line(
      points={{-74,-20},{-84,-20},{-84,-18}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection8.flowPortIn, building9.flowPort_return) annotation (Line(
      points={{-74,-24},{-88,-24},{-88,-18}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection9.flowPortOut, building10.flowPort_supply) annotation (
      Line(
      points={{-74,-46},{-84,-46},{-84,-44}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection9.flowPortIn, building10.flowPort_return) annotation (
      Line(
      points={{-74,-50},{-88,-50},{-88,-44}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection10.flowPortOut, building11.flowPort_supply) annotation (
      Line(
      points={{-74,-72},{-84,-72},{-84,-70}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection10.flowPortIn, building11.flowPort_return) annotation (
      Line(
      points={{-74,-76},{-88,-76},{-88,-70}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection6.flowPort_supply_out, dHConnection7.flowPort_supply_in)
    annotation (Line(
      points={{-68,20},{-68,14.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection7.flowPort_supply_out, dHConnection8.flowPort_supply_in)
    annotation (Line(
      points={{-68,-6},{-68,-11.8}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection8.flowPort_supply_out, dHConnection9.flowPort_supply_in)
    annotation (Line(
      points={{-68,-32},{-68,-37.8}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection9.flowPort_supply_out, dHConnection10.flowPort_supply_in)
    annotation (Line(
      points={{-68,-58},{-68,-63.8}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection6.flowPort_return_in, dHConnection7.flowPort_return_out)
    annotation (Line(
      points={{-56.2,20},{-56.2,14}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection7.flowPort_return_in, dHConnection8.flowPort_return_out)
    annotation (Line(
      points={{-56.2,-6},{-56.2,-12}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection8.flowPort_return_in, dHConnection9.flowPort_return_out)
    annotation (Line(
      points={{-56.2,-32},{-56.2,-38}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection9.flowPort_return_in, dHConnection10.flowPort_return_out)
    annotation (Line(
      points={{-56.2,-58},{-56.2,-64}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(const.y, idealHeater.TSet) annotation (Line(
      points={{47,-10},{52,-10},{52,14}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(bou.ports[1], dHConnection.flowPort_supply_in) annotation (Line(
      points={{106,-10},{114,-10},{114,62},{98.2,62}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(idealHeater.port_a, dHConnection.flowPort_return_out) annotation (
      Line(
      points={{68,32},{102,32},{102,50.2},{98,50.2}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(idealHeater.port_b, dHConnection.flowPort_supply_in) annotation (Line(
      points={{68,20},{114,20},{114,62},{98.2,62}},
      color={0,127,255},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(extent={{-100,-120},{120,100}},
          preserveAspectRatio=false), graphics), Icon(coordinateSystem(extent={{
            -100,-120},{120,100}})));
end DHConstantSupplyT;
