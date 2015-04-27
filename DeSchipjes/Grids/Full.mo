within DeSchipjes.Grids;
package Full
  model HTFullGrid
    extends DeSchipjes.Grids.FullGrid;

  end HTFullGrid;

  model ITFullGrid
    extends DeSchipjes.Grids.FullGrid;

  end ITFullGrid;

  model LTFullGrid
    extends DeSchipjes.Grids.FullGrid(
      haarhakkerHouse(redeclare
          DeSchipjes.Dwellings.HeatingSystems.LTHeatingSystem heatingSystem),
      haarhakkerHouse1(redeclare
          DeSchipjes.Dwellings.HeatingSystems.LTHeatingSystem heatingSystem),
      haarhakkerHouse2(redeclare
          DeSchipjes.Dwellings.HeatingSystems.LTHeatingSystem heatingSystem),
      haarhakkerHouse3(redeclare
          DeSchipjes.Dwellings.HeatingSystems.LTHeatingSystem heatingSystem),
      haarhakkerHouse4(redeclare
          DeSchipjes.Dwellings.HeatingSystems.LTHeatingSystem heatingSystem),
      petersleiHouse(redeclare
          DeSchipjes.Dwellings.HeatingSystems.LTHeatingSystem heatingSystem),
      petersleiHouse1(redeclare
          DeSchipjes.Dwellings.HeatingSystems.LTHeatingSystem heatingSystem),
      petersleiHouse2(redeclare
          DeSchipjes.Dwellings.HeatingSystems.LTHeatingSystem heatingSystem),
      petersleiHouse3(redeclare
          DeSchipjes.Dwellings.HeatingSystems.LTHeatingSystem heatingSystem),
      petersleiHouse4(redeclare
          DeSchipjes.Dwellings.HeatingSystems.LTHeatingSystem heatingSystem),
      petersleiHouse5(redeclare
          DeSchipjes.Dwellings.HeatingSystems.LTHeatingSystem heatingSystem),
      dHConnection(T_start=TGrid),
      dHConnection1(T_start=TGrid),
      dHConnection4(T_start=TGrid),
      dHConnection5(T_start=TGrid),
      dHConnection8(T_start=TGrid),
      dHConnection2(T_start=TGrid),
      dHConnection3(T_start=TGrid),
      dHConnection6(T_start=TGrid),
      dHConnection7(T_start=TGrid),
      dHConnection9(T_start=TGrid),
      dHConnection10(T_start=TGrid));

  end LTFullGrid;
end Full;