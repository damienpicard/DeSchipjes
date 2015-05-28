within DeSchipjes.Dwellings.HeatingSystems;
model ITHeatingSystem
  extends BaseClasses.PartialStorage(
    m_flow_dhw=0.06,
    modulation=true,
    pumpDHW(measureSupplyT=true, measureReturnT=true),
    heatExchanger(
      includePipes=true,
      UA=0.1,
      m=10),
    bou1(nPorts=3),
    tan(dIns=0.05));

  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperatureSensor
    annotation (Placement(transformation(extent={{76,66},{56,86}})));
  DistrictHeating.HeatingSystems.Control.Hysteresis hysteresis1(
    realTrue=0,
    uLow=TStorage - 5,
    uHigh=TStorage,
    realFalse=m_flow_dhw,
    release=false)
    annotation (Placement(transformation(extent={{40,66},{20,86}})));
  Controls.OnOff onOff
    annotation (Placement(transformation(extent={{10,66},{-10,86}})));
  Controls.OnOff onOff1[nZones] annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=90,
        origin={-100,14})));
  Modelica.Blocks.Logical.Not not1[nZones]
    annotation (Placement(transformation(extent={{-62,4},{-82,24}})));
  IDEAS.Controls.Continuous.LimPID PIDSupplyT(
    controllerType=Modelica.Blocks.Types.SimpleController.PI,
    Ti=180,
    k=0.5,
    yMax=1)
    annotation (Placement(transformation(extent={{60,0},{80,20}})));
  Modelica.Blocks.Sources.Constant const1(k=273.15 + 40)
    annotation (Placement(transformation(extent={{12,-2},{20,6}})));
  Modelica.Blocks.Sources.Constant const2(k=273.15 + 70)
    annotation (Placement(transformation(extent={{12,14},{20,22}})));
  Modelica.Blocks.Logical.Switch switch1 annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={40,10})));
equation
  connect(temperatureSensor.T, hysteresis1.u) annotation (Line(
      points={{56,76},{41.2,76}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(hysteresis1.y, onOff.u1) annotation (Line(
      points={{19.2,76},{12,76}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(onOff.y, pumpDHW.u) annotation (Line(
      points={{-11,76},{-24,76},{-24,60.8}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(HT, onOff.u) annotation (Line(
      points={{50,-104},{50,-60},{0,-60},{0,64}},
      color={255,0,255},
      smooth=Smooth.None));
  connect(conPID.y, onOff1.u1) annotation (Line(
      points={{-109,40},{-100,40},{-100,26}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(onOff1.y, pumpRadiators.u) annotation (Line(
      points={{-100,3},{-100,-27.2}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(not1.y, onOff1.u) annotation (Line(
      points={{-83,14},{-88,14}},
      color={255,0,255},
      smooth=Smooth.None));

  for i in 1:nZones loop
    connect(HT, not1[i].u)   annotation (Line(
      points={{50,-104},{50,-60},{0,-60},{0,14},{-60,14}},
      color={255,0,255},
      smooth=Smooth.None));
  end for;
  connect(toKelvin.Kelvin, conPID.u_s) annotation (Line(
      points={{-81,-68},{-160,-68},{-160,40},{-132,40}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(TSensor, conPID.u_m) annotation (Line(
      points={{-204,-60},{-120,-60},{-120,28}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(heatExchanger.massFlow2, PIDSupplyT.u_m) annotation (Line(
      points={{43.2,-27.4},{43.2,-16},{70,-16},{70,-2}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(PIDSupplyT.y, slewRateLimiter.u) annotation (Line(
      points={{81,10},{88,10}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(const1.y, switch1.u3) annotation (Line(
      points={{20.4,2},{28,2}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(const2.y, switch1.u1) annotation (Line(
      points={{20.4,18},{28,18}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(switch1.y, PIDSupplyT.u_s) annotation (Line(
      points={{51,10},{58,10}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(switch1.u2, onOff.u) annotation (Line(
      points={{28,10},{0,10},{0,64}},
      color={255,0,255},
      smooth=Smooth.None));
  connect(temperatureSensor.port, tan.heaPorVol[4]) annotation (Line(
      points={{76,76},{88,76},{88,52.45}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(tan.portHex_a, bou1.ports[2]) annotation (Line(
      points={{78,48.2},{74,48.2},{74,66},{160,66},{160,42},{164,42}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(dHWTap.port_hot, tan.portHex_b) annotation (Line(
      points={{128,36},{102,36},{102,36},{74,36},{74,44},{78,44}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pumpDHW.port_b1, tan.port_a) annotation (Line(
      points={{-14,56},{78,56},{78,52}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(tan.port_b, pumpDHW.port_a2) annotation (Line(
      points={{98,52},{100,52},{100,40},{60,40},{60,44},{-14,44}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(fixedTemperature.port, tan.heaPorSid) annotation (Line(
      points={{120,90},{93.6,90},{93.6,52}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-200,
            -100},{200,100}}), graphics));
end ITHeatingSystem;
