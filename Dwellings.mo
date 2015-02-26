within DeSchipjes;
package Dwellings
  package Structures
    package Data
      extends Modelica.Icons.MaterialPropertiesPackage;
      package Materials
        record Pleister = IDEAS.Buildings.Data.Interfaces.Material (
            k=0.52,
            c=840,
            rho=1300,
            epsLw=0.85,
            epsSw=0.65) "Pleister";
        record Metselwerk=IDEAS.Buildings.Data.Interfaces.Material (
            k=1.32,
            c=840,
            rho=2200,
            epsLw=0.88,
            epsSw=0.55) "Metselwerk";
        record SnelBouwSteen = IDEAS.Buildings.Data.Interfaces.Material (
            k=0.125,
            c=840,
            rho=450,
            epsLw=0.8,
            epsSw=0.8) "Isolerende snelbouwsteen";
        record GipsKartonPlaat =
                          IDEAS.Buildings.Data.Interfaces.Material (
            k=0.29,
            c=840,
            rho=1100,
            epsLw=0.85,
            epsSw=0.65) "Gips karton plaat";
        record VezelCement = IDEAS.Buildings.Data.Interfaces.Material (
            k=0.18,
            c=840,
            rho=1200,
            epsLw=0.86,
            epsSw=0.44) "Vezel Cement Plaatt";
        record HoutVezel =   IDEAS.Buildings.Data.Interfaces.Material (
            k=0.23,
            c=840,
            rho=1200,
            epsLw=0.86,
            epsSw=0.44) "Houtvezel plaat";
        record OSB =         IDEAS.Buildings.Data.Interfaces.Material (
            k=0.13,
            c=840,
            rho=650,
            epsLw=0.86,
            epsSw=0.44) "OSB-plaat";
        record GewapendBeton =IDEAS.Buildings.Data.Interfaces.Material (
            k=1.7,
            c=920,
            rho=2400,
            epsLw=0.88,
            epsSw=0.55) "Gewapend Beton";
        record GrestTegels =
                      IDEAS.Buildings.Data.Interfaces.Material (
            k=1.2,
            c=840,
            rho=2300,
            epsLw=0.88,
            epsSw=0.55) "GrestTegels";
        record Chape = IDEAS.Buildings.Data.Interfaces.Material (
            k=0.93,
            c=840,
            rho=1100,
            epsLw=0.88,
            epsSw=0.55) "Chape";
        record Uitvulling = IDEAS.Buildings.Data.Interfaces.Material (
            final k=1.3,
            final c=1250,
            final rho=1200,
            final epsLw=0.88,
            final epsSw=0.68) "Uitvulling";
      end Materials;

      package Insulation
        record RotsWolSpanten = IDEAS.Buildings.Data.Interfaces.Insulation (
            final k=0.07,
            final c=840,
            final rho=110,
            final epsLw=0.8,
            final epsSw=0.8) "RotsWolSpanten";
        record RotsWolSKepers = IDEAS.Buildings.Data.Interfaces.Insulation (
            final k=0.06,
            final c=840,
            final rho=110,
            final epsLw=0.8,
            final epsSw=0.8) "RotsWolSKepers";
        record RotsWolRegelWerk=IDEAS.Buildings.Data.Interfaces.Insulation (
            final k=0.062,
            final c=840,
            final rho=110,
            final epsLw=0.8,
            final epsSw=0.8) "RotsWolRegelWerk";
      end Insulation;

      package Glass
        record VoorzetRaam = IDEAS.Buildings.Data.Interfaces.Glazing (
            nLay=3,
            mats={IDEAS.Buildings.Data.Materials.Glass(d=0.004),IDEAS.Buildings.Data.Materials.Air(d=0.04, epsLw_a=0.04),
                IDEAS.Buildings.Data.Materials.Glass(d=0.004, epsLw=0.04)},
            SwTrans=[0, 0.521; 10, 0.524; 20, 0.517; 30, 0.508; 40, 0.495; 50, 0.472;
                60, 0.418; 70, 0.312; 80, 0.153; 90, 0.000],
            SwAbs=[0, 0.102, 0.0, 0.022; 10, 0.104, 0.0, 0.022; 20, 0.112, 0.0, 0.023;
                30, 0.117, 0.0, 0.023; 40, 0.119, 0.0, 0.025; 50, 0.123, 0.0, 0.026; 60,
                0.135, 0.0, 0.027; 70, 0.142, 0.0, 0.029; 80, 0.105, 0.0, 0.031; 90,
                0.000, 0.0, 0.000],
            SwTransDif=0.418,
            SwAbsDif={0.135,0.0,0.027},
            U_value=2.8,
            g_value=0.85) "Voorzet raam";
        record DubbelGlas =  IDEAS.Buildings.Data.Interfaces.Glazing (
            nLay=3,
            mats={IDEAS.Buildings.Data.Materials.Glass(d=0.004),IDEAS.Buildings.Data.Materials.Air(d=0.015, epsLw_a=0.04),
                IDEAS.Buildings.Data.Materials.Glass(d=0.004, epsLw=0.04)},
            SwTrans=[0, 0.521; 10, 0.524; 20, 0.517; 30, 0.508; 40, 0.495; 50, 0.472;
                60, 0.418; 70, 0.312; 80, 0.153; 90, 0.000],
            SwAbs=[0, 0.102, 0.0, 0.022; 10, 0.104, 0.0, 0.022; 20, 0.112, 0.0, 0.023;
                30, 0.117, 0.0, 0.023; 40, 0.119, 0.0, 0.025; 50, 0.123, 0.0, 0.026; 60,
                0.135, 0.0, 0.027; 70, 0.142, 0.0, 0.029; 80, 0.105, 0.0, 0.031; 90,
                0.000, 0.0, 0.000],
            SwTransDif=0.418,
            SwAbsDif={0.135,0.0,0.027},
            U_value=1.4,
            g_value=0.75) "Dubbel glas";
        record EnkelGlass =  IDEAS.Buildings.Data.Interfaces.Glazing (
            nLay=1,
            mats={IDEAS.Buildings.Data.Materials.Glass(d=0.004)},
            SwTrans=[0, 0.521; 10, 0.524; 20, 0.517; 30, 0.508; 40, 0.495; 50, 0.472;
                60, 0.418; 70, 0.312; 80, 0.153; 90, 0.000],
            SwAbs=[0, 0.102; 10, 0.104; 20, 0.112;
                30, 0.117; 40, 0.119; 50, 0.123; 60,
                0.135; 70, 0.142; 80, 0.105; 90,
                0.000],
            SwTransDif=0.418,
            SwAbsDif={0.135},
            U_value=5.8,
            g_value=0.85) "enkel glass";
      end Glass;

      package Constructions
        record BuitenMuurDik "Dikke buiten muur"

          extends IDEAS.Buildings.Data.Interfaces.Construction(
            nLay=3,
            final mats={
              Materials.Metselwerk(d=0.268),
              insulationType,
              Materials.Pleister(d=0.01)});

        end BuitenMuurDik;

        record BuitenMuurDun "Dunne buiten muur"

          extends IDEAS.Buildings.Data.Interfaces.Construction(
            nLay=4,
            final mats={
              Materials.Metselwerk(d=0.168),
              Materials.SnelBouwSteen(d=0.1),
              insulationType,
              Materials.Pleister(d=0.01)});

        end BuitenMuurDun;

        record BinnenMuur "binnen muur"

          extends IDEAS.Buildings.Data.Interfaces.Construction(
            nLay=4,
            final mats={
              Materials.Pleister(d=0.01),
              Materials.Metselwerk(d=0.286),
              insulationType,
              Materials.Pleister(d=0.01)});

        end BinnenMuur;

        record GemeneMuur "gemeenschappelijke muur"

          extends IDEAS.Buildings.Data.Interfaces.Construction(
            nLay=4,
            final mats={
              Materials.Pleister(d=0.01),
              Materials.Metselwerk(d=0.286),
              insulationType,
              Materials.Pleister(d=0.01)});

        end GemeneMuur;

        record DakHoofdGebouw "Dak in het hoofdgebouw"

          extends IDEAS.Buildings.Data.Interfaces.Construction(
            nLay=3,
            final mats={
              Materials.VezelCement(d=0.18),
              insulationType,
              Materials.GipsKartonPlaat(d=0.0095)});

        end DakHoofdGebouw;

        record DakBijBouw "Dak in de bijbouw"

          extends IDEAS.Buildings.Data.Interfaces.Construction(
            nLay=2,
            final mats={
              insulationType,
              Materials.GipsKartonPlaat(d=0.0095)});

        end DakBijBouw;

        record Vloer "Vloer"

          extends IDEAS.Buildings.Data.Interfaces.Construction(
            nLay=5,
            final mats={
              Materials.GewapendBeton(d=0.12),
              Materials.Chape(d=0.04),
              insulationType,
              Materials.Uitvulling(d=0.06),
              Materials.GrestTegels(d=0.03)});

        end Vloer;

        record Plafond "Tussenverdiep plafonds"

          extends IDEAS.Buildings.Data.Interfaces.Construction(
            nLay=3,
            final mats={
              Materials.GewapendBeton(d=0.2),
              insulationType,
              Materials.GrestTegels(d=0.015)});

        end Plafond;
      end Constructions;

      package Frames
        record LoofHout = IDEAS.Buildings.Data.Interfaces.Frame (
          U_value=2.36) "Loofhout";
      end Frames;
    end Data;

    model Standard "Standaard woning de schipjes"

      //Extensions
      extends IDEAS.Interfaces.BaseClasses.Structure(
        nZones=6,
        final AZones={woonruimteA,keukenA,wcA, slaapkamerA, badkamerA, nachthalA},
        final VZones={woonruimte.V,keuken.V, wc.V, slaapkamer.V, badkamer.V, nachthal.V},
        final nEmb=0,
        final ATrans);

      parameter Modelica.SIunits.Length isolatieTest=0;

      parameter Modelica.SIunits.Area woonruimteA=21.73;
      parameter Modelica.SIunits.Area keukenA=7.32;
      parameter Modelica.SIunits.Area wcA=1.65;
      parameter Modelica.SIunits.Area slaapkamerA=10.79;
      parameter Modelica.SIunits.Area badkamerA=3.61;
      parameter Modelica.SIunits.Area nachthalA=3.23;

      //Components
      IDEAS.Buildings.Components.Zone woonruimte(
        V=7.01,
        corrCV=5,
        nSurf=10,
        n50=14.7) annotation (Placement(transformation(extent={{110,148},{130,168}})));
      IDEAS.Buildings.Components.Zone keuken(
        V=17.13,
        n50=6,
        nSurf=8) annotation (Placement(transformation(extent={{86,102},{106,122}})));
      IDEAS.Buildings.Components.Zone wc(
        V=3.86,
        n50=6.78,
        nSurf=7) annotation (Placement(transformation(extent={{88,46},{108,66}})));
      IDEAS.Buildings.Components.Zone slaapkamer(
        V=24.17,
        n50=7.02,
        nSurf=10) annotation (Placement(transformation(extent={{90,-4},{110,16}})));
      IDEAS.Buildings.Components.Zone badkamer(
        V=8.09,
        n50=6.96,
        nSurf=7)
        annotation (Placement(transformation(extent={{90,-48},{110,-28}})));
      IDEAS.Buildings.Components.Zone nachthal(
        V=7.24,
        n50=10.73,
        nSurf=6)
        annotation (Placement(transformation(extent={{74,-90},{94,-70}})));
      IDEAS.Buildings.Components.BoundaryWall woonruimteGemeenschappelijk(
        AWall=17.10,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.GemeneMuur
          constructionType,
        insulationThickness=0,
        inc=1.5707963267949,
        azi=2.3736477827123)
        annotation (Placement(transformation(extent={{-58,138},{-48,158}})));
      IDEAS.Buildings.Components.InternalWall woonruimteKeuken(
        AWall=6.97,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.BinnenMuur
          constructionType,
        insulationThickness=0,
        inc=1.5707963267949,
        azi=2.3736477827123) annotation (Placement(transformation(
            extent={{-5,-10},{5,10}},
            rotation=180,
            origin={-19,180})));
      IDEAS.Buildings.Components.OuterWall woonruimteKoer(
        AWall=5.15,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.BuitenMuurDik
          constructionType,
        insulationThickness=isolatieTest,
        inc=1.5707963267949,
        azi=2.3736477827123)
        annotation (Placement(transformation(extent={{-138,158},{-128,178}})));
      IDEAS.Buildings.Components.SlabOnGround woonruimteVloer(
        PWall=18.92,
        inc=0,
        azi=0,
        AWall=woonruimteA,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.Vloer
          constructionType,
        insulationThickness=isolatieTest)
        annotation (Placement(transformation(extent={{-68,176},{-58,196}})));
      IDEAS.Buildings.Components.OuterWall woonruimteAchtergevel(
        AWall=13.23,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.BuitenMuurDik
          constructionType,
        insulationThickness=isolatieTest,
        inc=1.5707963267949,
        azi=3.9444441095072)
        annotation (Placement(transformation(extent={{-94,154},{-84,174}})));
      IDEAS.Buildings.Components.OuterWall woonruimteVoorgevel(
        AWall=9.29,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.BuitenMuurDik
          constructionType,
        insulationThickness=isolatieTest,
        inc=1.5707963267949,
        azi=3.9444441095072)
        annotation (Placement(transformation(extent={{-114,128},{-104,148}})));
      IDEAS.Buildings.Components.InternalWall woonruimteHal(
        AWall=3.32,
        inc=0,
        azi=0,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.Plafond
          constructionType,
        insulationThickness=0)
        annotation (Placement(transformation(
            extent={{-5,-10},{5,10}},
            rotation=90,
            origin={67,180})));
      IDEAS.Buildings.Components.InternalWall woonruimteBad(
        AWall=3.61,
        inc=0,
        azi=0,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.Plafond
          constructionType,
        insulationThickness=0)
        annotation (Placement(transformation(
            extent={{-5,-10},{5,10}},
            rotation=90,
            origin={41,176})));
      IDEAS.Buildings.Components.InternalWall woonruimteSlaapkamer(
        AWall=10.79,
        inc=0,
        azi=0,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.Plafond
          constructionType,
        insulationThickness=0)
        annotation (Placement(transformation(
            extent={{-5,-10},{5,10}},
            rotation=90,
            origin={11,182})));
      IDEAS.Buildings.Components.OuterWall keukenAchtergevel(
        AWall=7.56,
        insulationThickness=0,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.BuitenMuurDik
          constructionType,
        inc=1.5707963267949,
        azi=3.9444441095072)
        annotation (Placement(transformation(extent={{-132,94},{-122,114}})));
      IDEAS.Buildings.Components.Window wooruimteWindow(
        A=5.78,
        frac=0.12,
        redeclare DeSchipjes.Dwellings.Structures.Data.Glass.VoorzetRaam
          glazing,
        redeclare DeSchipjes.Dwellings.Structures.Data.Frames.LoofHout fraType,
        redeclare IDEAS.Buildings.Components.Shading.None shaType,
        inc=1.5707963267949,
        azi=3.9444441095072)
        annotation (Placement(transformation(extent={{76,138},{86,158}})));
      IDEAS.Buildings.Components.Window keukenWindowLarge(
        A=4.57,
        frac=0.15,
        redeclare DeSchipjes.Dwellings.Structures.Data.Frames.LoofHout fraType,
        redeclare IDEAS.Buildings.Components.Shading.None shaType,
        inc=1.5707963267949,
        azi=3.9444441095072,
        redeclare DeSchipjes.Dwellings.Structures.Data.Glass.DubbelGlas glazing)
        annotation (Placement(transformation(extent={{-90,92},{-80,112}})));
      IDEAS.Buildings.Components.Window keukenWindowSmall(
        A=1.05,
        frac=0.25,
        inc=1.5707963267949,
        azi=2.3736477827123,
        redeclare DeSchipjes.Dwellings.Structures.Data.Glass.DubbelGlas glazing,

        redeclare DeSchipjes.Dwellings.Structures.Data.Frames.LoofHout fraType)
        annotation (Placement(transformation(extent={{-72,92},{-62,112}})));
      IDEAS.Buildings.Components.BoundaryWall keukenGemeenschappelijk(
        AWall=5.92,
        insulationThickness=0,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.GemeneMuur
          constructionType,
        inc=1.5707963267949,
        azi=2.3736477827123) annotation (Placement(transformation(
            extent={{-5,-10},{5,10}},
            rotation=0,
            origin={-27,102})));
      IDEAS.Buildings.Components.SlabOnGround keukenVloer(
        AWall=7.27,
        PWall=11.16,
        inc=0,
        azi=0,
        insulationThickness=0,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.Vloer
          constructionType)
        annotation (Placement(transformation(extent={{-52,92},{-42,112}})));
      IDEAS.Buildings.Components.OuterWall keukenDak(
        AWall=keukenA,
        inc=0,
        azi=0,
        insulationThickness=0.08,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.DakBijBouw
          constructionType,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Insulation.RotsWolSKepers
          insulationType)
        annotation (Placement(transformation(extent={{-112,92},{-102,112}})));
      IDEAS.Buildings.Components.InternalWall keukenWC(
        AWall=1.96,
        insulationThickness=0,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.BinnenMuur
          constructionType,
        inc=1.5707963267949,
        azi=3.9444441095072)                           annotation (Placement(
            transformation(
            extent={{-5,-10},{5,10}},
            rotation=0,
            origin={11,102})));
      IDEAS.Buildings.Components.BoundaryWall WCGemeenschappelijk(
        AWall=2.85,
        insulationThickness=0,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.GemeneMuur
          constructionType,
        inc=1.5707963267949,
        azi=2.3736477827123)
        annotation (Placement(transformation(extent={{-28,46},{-18,66}})));
      IDEAS.Buildings.Components.OuterWall WCKoer(
        AWall=2.83,
        insulationThickness=0,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.BuitenMuurDun
          constructionType,
        inc=1.5707963267949,
        azi=2.3736477827123)
        annotation (Placement(transformation(extent={{-134,46},{-124,66}})));
      IDEAS.Buildings.Components.Window raamwc(
        A=0.07,
        frac=0.89,
        inc=1.5707963267949,
        azi=3.9444441095072,
        redeclare DeSchipjes.Dwellings.Structures.Data.Glass.EnkelGlass glazing,

        redeclare DeSchipjes.Dwellings.Structures.Data.Frames.LoofHout fraType)
        annotation (Placement(transformation(extent={{-66,46},{-56,66}})));
      IDEAS.Buildings.Components.OuterWall WCVoorgevel(
        AWall=2.65,
        insulationThickness=0,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.BuitenMuurDik
          constructionType,
        inc=1.5707963267949,
        azi=3.9444441095072)
        annotation (Placement(transformation(extent={{-110,46},{-100,66}})));
      IDEAS.Buildings.Components.SlabOnGround WCVloer(
        AWall=wcA,
        inc=0,
        azi=0,
        PWall=4.74,
        insulationThickness=0,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.Vloer
          constructionType)
        annotation (Placement(transformation(extent={{-48,46},{-38,66}})));
      IDEAS.Buildings.Components.OuterWall WCDak(
        AWall=wcA,
        inc=0,
        azi=0,
        insulationThickness=0.08,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.DakBijBouw
          constructionType,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Insulation.RotsWolSKepers
          insulationType)                        annotation (Placement(
            transformation(
            extent={{-5,-10},{5,10}},
            rotation=270,
            origin={-83,58})));
      IDEAS.Buildings.Components.OuterWall slaapkamerZijgevel(
        AWall=2.41,
        insulationThickness=0,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.BuitenMuurDik
          constructionType,
        inc=1.5707963267949,
        azi=2.3736477827123)
        annotation (Placement(transformation(extent={{-132,-2},{-122,18}})));
      IDEAS.Buildings.Components.OuterWall slaapkamerVoorgevel(
        AWall=13.22,
        insulationThickness=0,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.BuitenMuurDik
          constructionType,
        inc=1.5707963267949,
        azi=3.9444441095072)
        annotation (Placement(transformation(extent={{-114,-2},{-104,18}})));
      IDEAS.Buildings.Components.BoundaryWall slaapkamerGemeenschappelijk(
        AWall=10.27,
        insulationThickness=0,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.GemeneMuur
          constructionType,
        inc=1.5707963267949,
        azi=2.3736477827123)
        annotation (Placement(transformation(extent={{-92,-2},{-82,18}})));
      IDEAS.Buildings.Components.InternalWall slaakamerBadLiggend(
        AWall=4.26,
        insulationThickness=0,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.BinnenMuur
          constructionType,
        inc=1.5707963267949,
        azi=3.9444441095072)
        annotation (Placement(transformation(extent={{-68,4},{-58,24}})));
      IDEAS.Buildings.Components.InternalWall slaapkamerBadStaand(
        AWall=1.12,
        insulationThickness=0,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.BinnenMuur
          constructionType,
        inc=1.5707963267949,
        azi=2.3736477827123)
        annotation (Placement(transformation(extent={{-50,8},{-40,28}})));
      IDEAS.Buildings.Components.InternalWall slaakamerHal(
        AWall=3.81,
        insulationThickness=0,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.BinnenMuur
          constructionType,
        inc=1.5707963267949,
        azi=3.9444441095072)
        annotation (Placement(transformation(extent={{-30,-14},{-20,6}})));
      IDEAS.Buildings.Components.Window slaapkamerRaam(
        A=0.75,
        frac=0.21,
        inc=1.5707963267949,
        azi=3.9444441095072,
        redeclare DeSchipjes.Dwellings.Structures.Data.Glass.VoorzetRaam
          glazing,
        redeclare DeSchipjes.Dwellings.Structures.Data.Frames.LoofHout fraType)
        annotation (Placement(transformation(extent={{-12,-2},{-2,18}})));
      IDEAS.Buildings.Components.OuterWall slaakamerDakLinks(
        AWall=11.73,
        insulationThickness=0.08,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.DakHoofdGebouw
          constructionType,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Insulation.RotsWolSpanten
          insulationType,
        inc=5.235987755983,
        azi=2.3736477827123) annotation (Placement(transformation(
            extent={{-5,-10},{5,10}},
            rotation=270,
            origin={-21,30})));
      IDEAS.Buildings.Components.OuterWall badkamerAchtergevel(
        AWall=1.34,
        insulationThickness=0,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.BuitenMuurDik
          constructionType,
        inc=1.5707963267949,
        azi=3.9444441095072)
        annotation (Placement(transformation(extent={{-132,-38},{-122,-18}})));
      IDEAS.Buildings.Components.OuterWall badkamerZijgevel(
        AWall=4.05,
        insulationThickness=0,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.BuitenMuurDik
          constructionType,
        inc=1.5707963267949,
        azi=2.3736477827123)
        annotation (Placement(transformation(extent={{-110,-38},{-100,-18}})));
      IDEAS.Buildings.Components.OuterWall badkamerDak(
        AWall=8.74,
        insulationThickness=0.08,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.DakHoofdGebouw
          constructionType,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Insulation.RotsWolSpanten
          insulationType,
        inc=5.3407075111026,
        azi=3.9444441095072) annotation (Placement(transformation(
            extent={{-5,-10},{5,10}},
            rotation=270,
            origin={11,-22})));
      IDEAS.Buildings.Components.InternalWall badkamerHal(
        AWall=2.4,
        insulationThickness=0,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.BinnenMuur
          constructionType,
        inc=1.5707963267949,
        azi=2.3736477827123)
        annotation (Placement(transformation(extent={{-78,-38},{-68,-18}})));
      IDEAS.Buildings.Components.OuterWall halAchtergevel(
        AWall=1.06,
        insulationThickness=0,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.BuitenMuurDik
          constructionType,
        inc=1.5707963267949,
        azi=3.9444441095072)
        annotation (Placement(transformation(extent={{-130,-78},{-120,-58}})));
      IDEAS.Buildings.Components.OuterWall halDak(
        AWall=6.89,
        insulationThickness=0.08,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.DakHoofdGebouw
          constructionType,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Insulation.RotsWolSpanten
          insulationType,
        inc=5.3407075111026,
        azi=3.9444441095072)                      annotation (Placement(
            transformation(
            extent={{-5,-10},{5,10}},
            rotation=270,
            origin={17,-66})));
      IDEAS.Buildings.Components.BoundaryWall halGemeenschappelijk(
        AWall=4.05,
        insulationThickness=0,
        redeclare DeSchipjes.Dwellings.Structures.Data.Constructions.GemeneMuur
          constructionType,
        inc=1.5707963267949,
        azi=2.3736477827123)
        annotation (Placement(transformation(extent={{-108,-78},{-98,-58}})));
      IDEAS.Buildings.Components.OuterWall slaakamerDakRechts(
        AWall=14.05,
        insulationThickness=0.08,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Constructions.DakHoofdGebouw
          constructionType,
        redeclare
          DeSchipjes.Dwellings.Structures.Data.Insulation.RotsWolSpanten
          insulationType,
        inc=2.0943951023932,
        azi=2.3736477827123) annotation (Placement(transformation(
            extent={{-5,-10},{5,10}},
            rotation=270,
            origin={13,30})));
    equation
      connect(woonruimteHal.propsBus_a, woonruimte.propsBus[1]) annotation (Line(
          points={{63,185},{63,163.8},{110,163.8}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(woonruimteBad.propsBus_a, woonruimte.propsBus[2]) annotation (Line(
          points={{37,181},{37,163.4},{110,163.4}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(woonruimteSlaapkamer.propsBus_a, woonruimte.propsBus[3]) annotation (
          Line(
          points={{7,187},{7,163},{110,163}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(woonruimteKeuken.propsBus_a, woonruimte.propsBus[4]) annotation (Line(
          points={{-24,176},{-24,162},{44,162},{44,162.6},{110,162.6}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(woonruimteGemeenschappelijk.propsBus_a, woonruimte.propsBus[5])
        annotation (Line(
          points={{-48,152},{34,152},{34,162.2},{110,162.2}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(woonruimteVloer.propsBus_a, woonruimte.propsBus[6]) annotation (Line(
          points={{-58,190},{-42,190},{-42,161.8},{110,161.8}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(woonruimteAchtergevel.propsBus_a, woonruimte.propsBus[7]) annotation (
         Line(
          points={{-84,168},{-62,168},{-62,161.4},{110,161.4}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(woonruimteVoorgevel.propsBus_a, woonruimte.propsBus[8]) annotation (
          Line(
          points={{-104,142},{-64,142},{-64,161},{110,161}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(woonruimteKoer.propsBus_a, woonruimte.propsBus[9]) annotation (Line(
          points={{-128,172},{-102,172},{-102,160.6},{110,160.6}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(woonruimteKeuken.propsBus_b, keuken.propsBus[1]) annotation (Line(
          points={{-14,176},{-14,136},{-24,136},{-24,130},{26,130},{26,117.75},{86,117.75}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));

      connect(woonruimteSlaapkamer.propsBus_b, slaapkamer.propsBus[1]) annotation (
          Line(
          points={{7,177},{7,150},{0,150},{0,132},{58,132},{58,11.8},{90,11.8}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));

      connect(woonruimteBad.propsBus_b, badkamer.propsBus[1]) annotation (Line(
          points={{37,171},{37,-32.2857},{90,-32.2857}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(woonruimteHal.propsBus_b, nachthal.propsBus[1]) annotation (Line(
          points={{63,175},{63,-74.3333},{74,-74.3333}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(wooruimteWindow.propsBus_a, woonruimte.propsBus[10]) annotation (Line(
          points={{86,152},{98,152},{98,160.2},{110,160.2}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(keukenWC.propsBus_a, keuken.propsBus[2]) annotation (Line(
          points={{16,106},{86,106},{86,117.25}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(keukenWC.propsBus_b, wc.propsBus[1]) annotation (Line(
          points={{6,106},{2,106},{2,61.7143},{88,61.7143}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(keukenGemeenschappelijk.propsBus_a, keuken.propsBus[3]) annotation (
          Line(
          points={{-22,106},{-18,106},{-18,112},{86,112},{86,116.75}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(keukenVloer.propsBus_a, keuken.propsBus[4]) annotation (Line(
          points={{-42,106},{-40,106},{-40,108},{-34,108},{-34,116.25},{86,116.25}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));

      connect(keukenWindowSmall.propsBus_a, keuken.propsBus[5]) annotation (Line(
          points={{-62,106},{-56,106},{-56,115.75},{86,115.75}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(keukenWindowLarge.propsBus_a, keuken.propsBus[6]) annotation (Line(
          points={{-80,106},{-74,106},{-74,115.25},{86,115.25}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(keukenDak.propsBus_a, keuken.propsBus[7]) annotation (Line(
          points={{-102,106},{-96,106},{-96,114.75},{86,114.75}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(keukenAchtergevel.propsBus_a, keuken.propsBus[8]) annotation (Line(
          points={{-122,108},{-114,108},{-114,114.25},{86,114.25}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));

      connect(WCGemeenschappelijk.propsBus_a, wc.propsBus[2]) annotation (Line(
          points={{-18,60},{48,60},{48,58},{88,58},{88,61.1429}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(WCVloer.propsBus_a, wc.propsBus[3]) annotation (Line(
          points={{-38,60},{26,60},{26,60.5714},{88,60.5714}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(raamwc.propsBus_a, wc.propsBus[4]) annotation (Line(
          points={{-56,60},{88,60}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(WCDak.propsBus_a, wc.propsBus[5]) annotation (Line(
          points={{-79,53},{-79,46},{-70,46},{-70,59.4286},{88,59.4286}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(WCVoorgevel.propsBus_a, wc.propsBus[6]) annotation (Line(
          points={{-100,60},{-6,60},{-6,58.8571},{88,58.8571}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(WCKoer.propsBus_a, wc.propsBus[7]) annotation (Line(
          points={{-124,60},{-18,60},{-18,58.2857},{88,58.2857}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(slaakamerDakLinks.propsBus_a, slaapkamer.propsBus[2]) annotation (
          Line(
          points={{-17,25},{-17,11.4},{90,11.4}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(slaapkamerRaam.propsBus_a, slaapkamer.propsBus[3]) annotation (Line(
          points={{-2,12},{44,12},{44,11},{90,11}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(slaakamerHal.propsBus_a, slaapkamer.propsBus[4]) annotation (Line(
          points={{-20,0},{36,0},{36,10.6},{90,10.6}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(slaapkamerBadStaand.propsBus_a, slaapkamer.propsBus[5]) annotation (
          Line(
          points={{-40,22},{26,22},{26,10.2},{90,10.2}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(slaakamerBadLiggend.propsBus_a, slaapkamer.propsBus[6]) annotation (
          Line(
          points={{-58,18},{16,18},{16,9.8},{90,9.8}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(slaapkamerGemeenschappelijk.propsBus_a, slaapkamer.propsBus[7])
        annotation (Line(
          points={{-82,12},{4,12},{4,9.4},{90,9.4}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(slaapkamerVoorgevel.propsBus_a, slaapkamer.propsBus[8]) annotation (
          Line(
          points={{-104,12},{-8,12},{-8,9},{90,9}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(slaapkamerZijgevel.propsBus_a, slaapkamer.propsBus[9]) annotation (
          Line(
          points={{-122,12},{-16,12},{-16,8.6},{90,8.6}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(slaapkamerBadStaand.propsBus_b, badkamer.propsBus[2]) annotation (
          Line(
          points={{-50,22},{-52,22},{-52,-32.8571},{90,-32.8571}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(slaakamerBadLiggend.propsBus_b, badkamer.propsBus[3]) annotation (
          Line(
          points={{-68,18},{-72,18},{-72,20},{-76,20},{-76,-12},{-44,-12},{-44,
              -33.4286},{90,-33.4286}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(badkamerHal.propsBus_a, badkamer.propsBus[4]) annotation (Line(
          points={{-68,-24},{-60,-24},{-60,-34},{90,-34}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(badkamerDak.propsBus_a, badkamer.propsBus[5]) annotation (Line(
          points={{15,-27},{15,-34.5714},{90,-34.5714}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(badkamerZijgevel.propsBus_a, badkamer.propsBus[6]) annotation (Line(
          points={{-100,-24},{-90,-24},{-90,-35.1429},{90,-35.1429}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(badkamerAchtergevel.propsBus_a, badkamer.propsBus[7]) annotation (
          Line(
          points={{-122,-24},{-112,-24},{-112,-35.7143},{90,-35.7143}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(badkamerHal.propsBus_b, nachthal.propsBus[3]) annotation (Line(
          points={{-78,-24},{-82,-24},{-82,-75.6667},{74,-75.6667}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(slaakamerHal.propsBus_b, nachthal.propsBus[2]) annotation (Line(
          points={{-30,0},{-34,0},{-34,-75},{74,-75}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(halGemeenschappelijk.propsBus_a, nachthal.propsBus[4]) annotation (
          Line(
          points={{-98,-64},{-62,-64},{-62,-76.3333},{74,-76.3333}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(halDak.propsBus_a, nachthal.propsBus[5]) annotation (Line(
          points={{21,-71},{21,-77},{74,-77}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(halAchtergevel.propsBus_a, nachthal.propsBus[6]) annotation (Line(
          points={{-120,-64},{-116,-64},{-116,-78},{74,-78},{74,-77.6667}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(woonruimte.gainCon, heatPortCon[1]) annotation (Line(
          points={{130,155},{176,155},{176,11.6667},{150,11.6667}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(woonruimte.gainRad, heatPortRad[1]) annotation (Line(
          points={{130,152},{174,152},{174,-28.3333},{150,-28.3333}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(keuken.gainCon, heatPortCon[2]) annotation (Line(
          points={{106,109},{156,109},{156,15},{150,15}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(keuken.gainRad, heatPortRad[2]) annotation (Line(
          points={{106,106},{142,106},{142,-25},{150,-25}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(wc.gainCon, heatPortCon[3]) annotation (Line(
          points={{108,53},{118,53},{118,66},{150,66},{150,18.3333}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(wc.gainRad, heatPortRad[3]) annotation (Line(
          points={{108,50},{164,50},{164,-21.6667},{150,-21.6667}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(slaapkamer.gainCon, heatPortCon[4]) annotation (Line(
          points={{110,3},{120,3},{120,4},{132,4},{132,21.6667},{150,21.6667}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(slaapkamer.gainRad, heatPortRad[4]) annotation (Line(
          points={{110,0},{188,0},{188,-18.3333},{150,-18.3333}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(badkamer.gainCon, heatPortCon[5]) annotation (Line(
          points={{110,-41},{134,-41},{134,-40},{148,-40},{148,25},{150,25}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(badkamer.gainRad, heatPortRad[5]) annotation (Line(
          points={{110,-44},{170,-44},{170,-15},{150,-15}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(woonruimte.TSensor, TSensor[1]) annotation (Line(
          points={{130.6,158},{176,158},{176,-68.3333},{156,-68.3333}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(keuken.TSensor, TSensor[2]) annotation (Line(
          points={{106.6,112},{160,112},{160,-65},{156,-65}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(wc.TSensor, TSensor[3]) annotation (Line(
          points={{108.6,56},{164,56},{164,-61.6667},{156,-61.6667}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(slaapkamer.TSensor, TSensor[4]) annotation (Line(
          points={{110.6,6},{166,6},{166,-58.3333},{156,-58.3333}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(badkamer.TSensor, TSensor[5]) annotation (Line(
          points={{110.6,-38},{166,-38},{166,-55},{156,-55}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(nachthal.TSensor, TSensor[6]) annotation (Line(
          points={{94.6,-80},{162.3,-80},{162.3,-51.6667},{156,-51.6667}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(nachthal.gainCon, heatPortCon[6]) annotation (Line(
          points={{94,-83},{162,-83},{162,28.3333},{150,28.3333}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(nachthal.gainRad, heatPortRad[6]) annotation (Line(
          points={{94,-86},{164,-86},{164,-11.6667},{150,-11.6667}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(woonruimte.flowPort_Out, flowPort_Out[1]) annotation (Line(
          points={{118,168},{118,170},{-2,170},{-2,91.6667},{-20,91.6667}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(woonruimte.flowPort_In, flowPort_In[1]) annotation (Line(
          points={{122,168},{122,188},{20,188},{20,91.6667}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(keuken.flowPort_Out, flowPort_Out[2]) annotation (Line(
          points={{94,122},{94,144},{-20,144},{-20,95}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(keuken.flowPort_In, flowPort_In[2]) annotation (Line(
          points={{98,122},{94,122},{94,174},{20,174},{20,95}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(wc.flowPort_Out, flowPort_Out[3]) annotation (Line(
          points={{96,66},{96,90},{-20,90},{-20,98.3333}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(wc.flowPort_In, flowPort_In[3]) annotation (Line(
          points={{100,66},{102,66},{102,96},{44,96},{44,98.3333},{20,98.3333}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(slaapkamer.flowPort_Out, flowPort_Out[4]) annotation (Line(
          points={{98,16},{98,46},{-20,46},{-20,101.667}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(slaapkamer.flowPort_In, flowPort_In[4]) annotation (Line(
          points={{102,16},{104,16},{104,36},{20,36},{20,101.667}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(badkamer.flowPort_Out, flowPort_Out[5]) annotation (Line(
          points={{98,-28},{98,-10},{-20,-10},{-20,105}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(badkamer.flowPort_In, flowPort_In[5]) annotation (Line(
          points={{102,-28},{102,-6},{20,-6},{20,105}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(slaakamerDakRechts.propsBus_a, slaapkamer.propsBus[10]) annotation (
          Line(
          points={{17,25},{17,8.2},{90,8.2}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      connect(nachthal.flowPort_In, flowPort_In[6]) annotation (Line(
          points={{86,-70},{86,72},{20,72},{20,108.333}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(nachthal.flowPort_Out, flowPort_Out[6]) annotation (Line(
          points={{82,-70},{78,-70},{78,18},{-20,18},{-20,108.333}},
          color={0,0,0},
          smooth=Smooth.None));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-150,
                -100},{220,200}}), graphics));
    end Standard;

    model Woning140 "Woning 140"

      //Extensions
      extends DeSchipjes.Dwellings.Structures.Standard;

      annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-150,
                -100},{220,200}}), graphics));
    end Woning140;
  end Structures;

  package HeatingSystems
    model HTHeatingSystem
      extends BaseClasses.PartialRadiators(bou1(nPorts=2));

      IDEAS.Fluid.BaseCircuits.HeatExchanger heatExchanger1(
        redeclare package Medium = Medium,
        m_flow_nominal=m_flow_dhw,
        dp1_nominal=200,
        dp2_nominal=200) annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={64,50})));
    equation
      connect(heatExchanger1.port_a2, bou1.ports[2]) annotation (Line(
          points={{74,44},{100,44},{100,34},{160,34},{160,46},{172,46},{172,60}},

          color={0,127,255},
          smooth=Smooth.None,
          pattern=LinePattern.Dash));
      connect(heatExchanger1.port_b1, dHWTap.port_hot) annotation (Line(
          points={{74,56},{112,56},{112,46},{130,46}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(pumpDHW.port_b1, heatExchanger1.port_a1) annotation (Line(
          points={{-14,56},{54,56}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(pumpDHW.port_a2, heatExchanger1.port_b2) annotation (Line(
          points={{-14,44},{54,44}},
          color={0,127,255},
          smooth=Smooth.None,
          pattern=LinePattern.Dash));
      connect(pumpDHW.u, dHWTap.mDHW60C) annotation (Line(
          points={{-24,60.8},{-24,80},{124,80},{124,54.6},{130,54.6}},
          color={175,175,175},
          smooth=Smooth.None));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{
                -200,-100},{200,100}}), graphics));
    end HTHeatingSystem;

    model ITHeatingSystem
      extends BaseClasses.PartialStorage;

      DistrictHeating.HeatingSystems.Control.Hysteresis hysteresis1(
        uLow=273.15 + 55,
        uHigh=273.15 + 65,
        realTrue=0,
        realFalse=m_flow_dhw)
        annotation (Placement(transformation(extent={{66,74},{46,94}})));
    equation
      connect(storageTank_OneIntHX.T[1], hysteresis1.u) annotation (Line(
          points={{82,60.7077},{74,60.7077},{74,84},{67.2,84}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(pumpDHW.port_b1, storageTank_OneIntHX.port_a) annotation (Line(
          points={{-14,56},{60,56},{60,71.5385},{82,71.5385}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(pumpDHW.port_a2, storageTank_OneIntHX.port_b) annotation (Line(
          points={{-14,44},{82,44},{82,44.4615}},
          color={0,127,255},
          smooth=Smooth.None,
          pattern=LinePattern.Dash));
      connect(hysteresis1.y, pumpDHW.u) annotation (Line(
          points={{45.2,84},{-24,84},{-24,60.8}},
          color={175,175,175},
          smooth=Smooth.None));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-200,
                -100},{200,100}}), graphics));
    end ITHeatingSystem;

    model LTHeatingSystem
      extends BaseClasses.PartialStorage;

      IDEAS.Fluid.Production.NewHeatPumpWaterWater newHeatPumpWaterWater(
          redeclare package Medium = Medium) annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={4,50})));
      IDEAS.Fluid.BaseCircuits.PumpSupply_m_flow pumpSupply_m_flowdhw1(
        redeclare package Medium = Medium,
        KvReturn=2,
        m_flow_nominal=m_flow_dhw,
        measurePower=false) annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={34,50})));
      DistrictHeating.HeatingSystems.Control.Hysteresis hysteresis1(
        uLow=273.15 + 55,
        uHigh=273.15 + 65,
        realTrue=0,
        realFalse=m_flow_dhw)
        annotation (Placement(transformation(extent={{64,76},{44,96}})));
    equation
      connect(pumpSupply_m_flowdhw.port_b1, newHeatPumpWaterWater.port_a1)
        annotation (Line(
          points={{-14,56},{-6,56}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(pumpSupply_m_flowdhw.port_a2, newHeatPumpWaterWater.port_b1)
        annotation (Line(
          points={{-14,44},{-6,44}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(newHeatPumpWaterWater.port_b, pumpSupply_m_flowdhw1.port_a1)
        annotation (Line(
          points={{14,56},{24,56}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(newHeatPumpWaterWater.port_a, pumpSupply_m_flowdhw1.port_b2)
        annotation (Line(
          points={{14,44},{24,44}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(pumpSupply_m_flowdhw1.port_b1, storageTank_OneIntHX.port_a)
        annotation (Line(
          points={{44,56},{74,56},{74,71.5385},{82,71.5385}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(pumpSupply_m_flowdhw1.port_a2, storageTank_OneIntHX.port_b)
        annotation (Line(
          points={{44,44},{82,44},{82,44.4615}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(hysteresis1.y, pumpDHW.u) annotation (Line(
          points={{43.2,86},{-24,86},{-24,60.8}},
          color={175,175,175},
          smooth=Smooth.None));
      connect(hysteresis1.y, pumpSupply_m_flowdhw1.u) annotation (Line(
          points={{43.2,86},{34,86},{34,60.8}},
          color={175,175,175},
          smooth=Smooth.None));
      connect(storageTank_OneIntHX.T[1], hysteresis1.u) annotation (Line(
          points={{82,60.7077},{82,62},{70,62},{70,86},{65.2,86}},
          color={175,175,175},
          smooth=Smooth.None));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{
                -200,-100},{200,100}}), graphics));
    end LTHeatingSystem;

    package BaseClasses
      partial model PartialRadiators
        //Extensions
        extends IDEAS.Interfaces.BaseClasses.HeatingSystem(
          isDH=true,
          nEmbPorts=0);

        //Parameters
        parameter Modelica.SIunits.Power[nZones] QNom=2000*ones(nZones)
          "Nominal heating power of each zone";
        parameter Modelica.SIunits.Temperature TSupply=273.15+70
          "Radiator supply temperature";
        parameter Modelica.SIunits.Temperature TReturn=273.15+60
          "Radiator return temeprature";
        parameter Modelica.SIunits.Temperature TBoiler=273.15+80
          "Radiator return temeprature";

        parameter Modelica.SIunits.MassFlowRate m_flow_dhw=0.1
          "Nominal mass flow rate of DHW";

        parameter Real KVs[nZones] = ones(nZones)*10
          "Values for the balancing valves";

        final parameter Modelica.SIunits.MassFlowRate[nZones] m_flow_nominal = QNom/(4180.6*(TSupply-TReturn))
          "Nominal mass flow rates";

        final parameter Modelica.SIunits.Pressure dp_nominal=
          2* flowController.dp + heatExchanger.dp1_nominal;

        IDEAS.Fluid.HeatExchangers.Radiators.RadiatorEN442_2 rad[nZones](
          redeclare package Medium = Medium,
          Q_flow_nominal=QNom,
          T_a_nominal=TSupply,
          T_b_nominal=TReturn,
          nEle=2)
          annotation (Placement(transformation(extent={{-124,-42},{-144,-22}})));
        IDEAS.Fluid.BaseCircuits.HeatExchanger heatExchanger(
          m_flow_nominal=sum(m_flow_nominal),
          dp1_nominal=200,
          dp2_nominal=200,
          redeclare package Medium = Medium,
          measureReturnT=false,
          dp=0,
          efficiency=0.9)                                annotation (Placement(
              transformation(
              extent={{-10,10},{10,-10}},
              rotation=180,
              origin={54,-38})));
        IDEAS.Fluid.BaseCircuits.FlowController flowController(
            redeclare package Medium = Medium,
          CvDataSupply=IDEAS.Fluid.Types.CvTypes.Kv,
          m_flow_nominal=sum(m_flow_nominal),
          dpValve_nominalSupply=0,
          KvReturn=5,
          KvSupply=1,
          includePipes=true,
          measureSupplyT=false,
          measureReturnT=false,
          useBalancingValve=true,
          dp=200)
          annotation (Placement(transformation(
              extent={{-10,10},{10,-10}},
              rotation=180,
              origin={96,-38})));
        IDEAS.Fluid.BaseCircuits.ParallelPipesSplitter parallelPipesSplitter(n=nZones,
          redeclare package Medium = Medium,
          m_flow_nominal=sum(m_flow_nominal),
          V=0.01)
          annotation (Placement(transformation(extent={{-62,-48},{-82,-28}})));
        IDEAS.Fluid.BaseCircuits.PumpSupply_m_flow pumpRadiators[nZones](
          KvReturn=5,
          redeclare package Medium = Medium,
          m_flow_nominal=m_flow_nominal,
          includePipes=false,
          measurePower=false,
          dp=200)
          annotation (Placement(transformation(extent={{-92,-48},{-112,-28}})));
        IDEAS.Fluid.Sources.FixedBoundary bou(
          redeclare package Medium = Medium,
          use_T=false,
          nPorts=1)
          annotation (Placement(transformation(extent={{10,10},{-10,-10}},
              rotation=90,
              origin={30,-12})));
        DistrictHeating.HeatingSystems.Control.Hysteresis
                           hysteresis[nZones](
          realFalse=m_flow_nominal,
          release=false,
          uLow=273.15 + 19,
          uHigh=273.15 + 21,
          realTrue=0)
          annotation (Placement(transformation(extent={{-138,40},{-118,60}})));
        DistrictHeating.HeatingSystems.Control.PI
                   pI(TSet=TSupply - 5,
          release=true,
          PID(
            controllerType=Modelica.Blocks.Types.SimpleController.PI,
            yMax=1,
            yMin=0,
            k=0.1,
            Ti=1000))                   annotation (Placement(transformation(
              extent={{-10,10},{10,-10}},
              rotation=180,
              origin={80,4})));
        DHWTap dHWTap(redeclare package Medium = Medium, m_flow_nominal=m_flow_dhw)
          annotation (Placement(transformation(extent={{130,42},{156,56}})));
        IDEAS.Fluid.Sources.FixedBoundary bou1(
          redeclare package Medium = Medium,
          use_T=false,
          nPorts=1)
          annotation (Placement(transformation(extent={{10,10},{-10,-10}},
              rotation=90,
              origin={172,70})));
        IDEAS.Fluid.BaseCircuits.PumpSupply_m_flow pumpDHW(
          redeclare package Medium = Medium,
          KvReturn=2,
          m_flow_nominal=m_flow_dhw,
          measurePower=false) annotation (Placement(transformation(
              extent={{-10,-10},{10,10}},
              rotation=0,
              origin={-24,50})));
      equation
        QHeaSys = 0;
        P[1] = 0;
        Q[1] = 0;

        connect(flowController.port_a1, flowPort_supply) annotation (Line(
            points={{106,-32},{160,-32},{160,-100}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(flowController.port_b2, flowPort_return) annotation (Line(
            points={{106,-44},{120,-44},{120,-100}},
            color={0,127,255},
            smooth=Smooth.None,
            pattern=LinePattern.Dash));
        connect(flowController.port_b1,heatExchanger. port_a1) annotation (Line(
            points={{86,-32},{64,-32}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(heatExchanger.port_b2,flowController. port_a2) annotation (Line(
            points={{64,-44},{86,-44}},
            color={0,127,255},
            smooth=Smooth.None,
            pattern=LinePattern.Dash));
        connect(heatExchanger.port_b1,parallelPipesSplitter. port_a) annotation (Line(
            points={{44,-32},{-62,-32}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(parallelPipesSplitter.port_b,heatExchanger. port_a2) annotation (Line(
            points={{-62,-44},{44,-44}},
            color={0,127,255},
            smooth=Smooth.None,
            pattern=LinePattern.Dash));
        connect(parallelPipesSplitter.port_aN, pumpRadiators.port_b2) annotation (
            Line(
            points={{-82,-44},{-92,-44}},
            color={0,127,255},
            smooth=Smooth.None,
            pattern=LinePattern.Dash));
        connect(parallelPipesSplitter.port_bN, pumpRadiators.port_a1) annotation (
            Line(
            points={{-82,-32},{-92,-32}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(pumpRadiators.port_b1, rad.port_a) annotation (Line(
            points={{-112,-32},{-124,-32}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(rad.port_b, pumpRadiators.port_a2) annotation (Line(
            points={{-144,-32},{-152,-32},{-152,-44},{-112,-44}},
            color={0,127,255},
            smooth=Smooth.None,
            pattern=LinePattern.Dash));
        connect(heatPortCon,rad. heatPortCon) annotation (Line(
            points={{-200,20},{-132,20},{-132,-24.8}},
            color={191,0,0},
            smooth=Smooth.None));
        connect(heatPortRad,rad. heatPortRad) annotation (Line(
            points={{-200,-20},{-136,-20},{-136,-24.8}},
            color={191,0,0},
            smooth=Smooth.None));
        connect(TSensor,hysteresis. u) annotation (Line(
            points={{-204,-60},{-180,-60},{-180,50},{-139.2,50}},
            color={175,175,175},
            smooth=Smooth.None));
        connect(hysteresis.y, pumpRadiators.u) annotation (Line(
            points={{-117.2,50},{-102,50},{-102,-27.2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(pI.y,flowController. u) annotation (Line(
            points={{90.6,4},{96,4},{96,-27.2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(pI.senMassFlow1,heatExchanger. massFlow1) annotation (Line(
            points={{69.6,-4},{62,-4},{62,-27.2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(pI.T1,heatExchanger. senT1) annotation (Line(
            points={{69.6,0},{60,0},{60,-27.4},{59.4,-27.4}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(pI.senMassFlow2,heatExchanger. massFlow2) annotation (Line(
            points={{69.6,8},{49.2,8},{49.2,-27.4}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(pI.senT2,heatExchanger. Tsup) annotation (Line(
            points={{69.6,12},{46.4,12},{46.4,-27.6}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(mDHW60C, dHWTap.mDHW60C) annotation (Line(
            points={{80,-104},{80,-54},{124,-54},{124,54.6},{130,54.6}},
            color={175,175,175},
            smooth=Smooth.None));
        connect(bou.ports[1], parallelPipesSplitter.port_a) annotation (Line(
            points={{30,-22},{30,-32},{-62,-32}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(dHWTap.port_cold, bou1.ports[1]) annotation (Line(
            points={{156,46},{172,46},{172,60}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(pumpDHW.port_b2, heatExchanger.port_a2) annotation (Line(
            points={{-34,44},{-40,44},{-40,-44},{44,-44}},
            color={0,127,255},
            smooth=Smooth.None,
            pattern=LinePattern.Dash));
        connect(pumpDHW.port_a1, parallelPipesSplitter.port_a) annotation (Line(
            points={{-34,56},{-54,56},{-54,-32},{-62,-32}},
            color={0,127,255},
            smooth=Smooth.None));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-200,
                  -100},{200,100}}), graphics));
      end PartialRadiators;

      partial model PartialStorage
        //Extensions
        extends PartialRadiators(dHWTap(m_flow_nominal=m_flow_dhw, redeclare
              package Medium =
                       Medium));

        //Parameters
        parameter Modelica.SIunits.Length hTan=1.5 "Height of the storage tank";
        parameter Modelica.SIunits.Volume vTan=0.1 "Volume of the storage tank";

        IDEAS.Fluid.Storage.StorageTank_OneIntHX storageTank_OneIntHX(
          redeclare package MediumHX = Medium,
          redeclare package Medium = Medium,
          nbrNodes=5,
          m_flow_nominal_HX=m_flow_dhw,
          volumeTank=vTan,
          heightTank=hTan)
          annotation (Placement(transformation(extent={{104,42},{82,74}})));
      equation
        connect(storageTank_OneIntHX.portHXLower, dHWTap.port_hot) annotation (Line(
            points={{104,46.9231},{130,46.9231},{130,46}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(storageTank_OneIntHX.portHXUpper, dHWTap.port_cold) annotation (Line(
            points={{104,51.8462},{108,51.8462},{108,60},{160,60},{160,46},{156,
                46}},
            color={0,127,255},
            smooth=Smooth.None));

        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-200,
                  -100},{200,100}}), graphics));
      end PartialStorage;

      model DHWTap
        extends IDEAS.Fluid.Domestic_Hot_Water.DHW_RealInput;

        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{
                  -100,-40},{140,100}}), graphics={
              Rectangle(
                extent={{-100,100},{140,-40}},
                lineColor={135,135,135},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Polygon(
                points={{8,-12},{28,-12},{28,54},{8,54},{8,-12}},
                lineColor={135,135,135},
                smooth=Smooth.None,
                fillColor={215,215,215},
                fillPattern=FillPattern.Solid),
              Polygon(
                points={{8,42},{28,42},{28,62},{8,82},{-30,82},{-50,62},{-50,42},
                    {-32,42},{-32,56},{-22,64},{0,64},{8,56},{8,42}},
                lineColor={135,135,135},
                smooth=Smooth.None,
                fillColor={215,215,215},
                fillPattern=FillPattern.Solid),
              Polygon(
                points={{-32,28},{8,28},{-2,-12},{-22,-12},{-32,28}},
                lineColor={135,135,135},
                smooth=Smooth.None,
                fillColor={215,215,215},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{-26,34},{2,26}},
                lineColor={255,85,85},
                fillColor={255,0,0},
                fillPattern=FillPattern.Solid),
              Polygon(
                points={{28,28},{68,28},{58,-12},{38,-12},{28,28}},
                lineColor={135,135,135},
                smooth=Smooth.None,
                fillColor={215,215,215},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{34,34},{62,26}},
                lineColor={0,0,255},
                fillColor={0,0,255},
                fillPattern=FillPattern.Solid)}));
      end DHWTap;
    end BaseClasses;
  end HeatingSystems;

  package VentilationSystems
  end VentilationSystems;

  package Occupants
  end Occupants;
end Dwellings;