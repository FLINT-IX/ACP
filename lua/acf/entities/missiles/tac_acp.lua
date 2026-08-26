local Classes = ACF.Classes
Classes.DefineClass("ACF.Missiles.Tactical", "ACF.Missiles.BaseMissile", function(CLASS)
	CLASS.Name			= "Tactical Missiles"
	CLASS.ID 			= "TAC"
	CLASS.Description	= "Specialized weapons that destroy a variety of targets at extreme ranges."
	CLASS.Sound			= "acf_missiles/missiles/missile_rocket.mp3"
	CLASS.Effect		= "Rocket Motor ATGM"
	CLASS.Spread		= 1
	CLASS.Blacklist		= { ["ACF.Ammunition.AP"] = true, ["ACF.Ammunition.APHE"] = true, ["ACF.Ammunition.HP"] = true, ["ACF.Ammunition.FL"] = true, ["ACF.Ammunition.SM"] = true }
	CLASS.LimitConVar 	= {
		Name = "_acfm_tac",
		Amount = 12,
		Text = "Maximum number of tactical missiles that can be loaded at once. Differentiates from the acf_rack limit."
	}
end)
Classes.DefineClass("ACF.Missiles.Tactical.3M-54 Kalibr", "ACF.Missiles.Tactical", function(CLASS)
	CLASS.Name		= "3M-54 Kalibr"
	CLASS.Description	= "Russia's cruise missile. Fast and long range. This massive missile can easily remove entire regions. Cannot be updated after it has launched."
	CLASS.Model		= "models/macc/Kalibr.mdl"
	CLASS.Length		= 250 * 2.53
	CLASS.Caliber		= 533
	CLASS.Mass		= 2300
	CLASS.Year		= 1983
	CLASS.ReloadTime	= 120
	CLASS.ExhaustPos  = Vector(-29)
	CLASS.Racks		= { ["ACF.Racks.1xRK"] = true }
	CLASS.Guidances	= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.GPSGuided"] = true, ["ACF.Missiles.Guidance.ActiveRadar"] = true, ["ACF.Missiles.Guidance.WireSACLOS"] = true }
	CLASS.Navigation  = "PN"
	CLASS.Fuzes		= { ["ACF.Missiles.Fuze.Contact"] = true }
	CLASS.ViewCone	= 180
	CLASS.SeekCone	= 20
	CLASS.Agility		= 0.065
	CLASS.ArmDelay	= 0.5
	CLASS.Round = {
		Model           = "models/macc/Kalibr.mdl",
		RackModel       = "models/macc/Kalibr_folded.mdl",
		MaxLength       = 220,
		Armor           = 50,
		ProjLength      = 150,
		PropLength      = 100,
		Thrust          = 1050000, -- in kg*in/s^2
		FuelConsumption = 0.01, -- in g/s/f
		StarterPercent  = 0.065,
		MaxAgilitySpeed = 40, -- in m/s
		DragCoef        = 4,
		FinMul          = 0.7,
		GLimit          = 14,
		TailFinMul      = 0.01,
		PenMul          = 1,
		FillerMul       = 12,
		LinerMassMul    = 1,
		Standoff        = 51,
		CanDelayLaunch  = true,
		ActualLength    = 341,
		ActualWidth     = 30
	}
	CLASS.Preview = {
		Height = 90,
		FOV    = 60,
	}
end)

Classes.DefineClass("ACF.Missiles.Tactical.BGM-109 Tomahawk", "ACF.Missiles.Tactical", function(CLASS)
	CLASS.Name		= "BGM-109 Tomahawk"
	CLASS.Description	= "The gold standard of cruise missiles. Subsonic and long range. Though slow this ordinance has extreme range and good maneuverability. Good for removing distant targets."
	CLASS.Model		= "models/macc/Tomahawk.mdl"
	CLASS.Length		= 250 * 2.53
	CLASS.Caliber		= 518
	CLASS.Mass		= 1600
	CLASS.Year		= 1983
	CLASS.ReloadTime	= 120
	CLASS.ExhaustPos  = Vector(-29)
	CLASS.Racks		= { ["ACF.Racks.1xRK"] = true }
	CLASS.Guidances	= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.GPSGuided"] = true, ["ACF.Missiles.Guidance.ActiveRadar"] = true, ["ACF.Missiles.Guidance.WireSACLOS"] = true }
	CLASS.Navigation  = "PN"
	CLASS.Fuzes		= { ["ACF.Missiles.Fuze.Contact"] = true }
	CLASS.ViewCone	= 180
	CLASS.SeekCone	= 20
	CLASS.Agility		= 0.075
	CLASS.ArmDelay	= 0.5
	CLASS.Round = {
		Model           = "models/macc/Tomahawk.mdl",
		RackModel       = "models/macc/Tomahawk_Folded.mdl",
		MaxLength       = 250 * 2.53,
		Armor           = 30,
		ProjLength      = 150,
		PropLength      = 100,
		Thrust          = 1050000, -- in kg*in/s^2
		FuelConsumption = 0.01, -- in g/s/f
		StarterPercent  = 0.065,
		MaxAgilitySpeed = 40, -- in m/s
		DragCoef        = 4,
		FinMul          = 0.7,
		GLimit          = 14,
		TailFinMul      = 0.01,
		PenMul          = 1,
		FillerMul       = 0.85,
		LinerMassMul    = 1,
		Standoff        = 51,
		CanDelayLaunch  = true,
		ActualLength    = 240,
		ActualWidth     = 27.5
	}
	CLASS.Preview = {
		Height = 90,
		FOV    = 60,
	}
end)


Classes.DefineClass("ACF.Missiles.Tactical.AGM-84 Harpoon", "ACF.Missiles.Tactical", function(CLASS)
	CLASS.Name		= "AGM-84 Harpoon"
	CLASS.Description	= "Versatile subsonic anti ship missile. Though somewhat sluggish packs a wallop."
	CLASS.Model		= "models/missiles/1xagm84.mdl"
	CLASS.Length		= 205 * 2.53
	CLASS.Caliber		= 343
	CLASS.Mass		= 690
	CLASS.Year		= 1977
	CLASS.ReloadTime	= 90
	CLASS.ExhaustPos  = Vector(-29)
	CLASS.Racks		= { ["ACF.Racks.1xRK"] = true, ["ACF.Racks.2xRK"] = true}
	CLASS.Guidances	= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.ActiveRadar"] = true }
	CLASS.Navigation  = "PN"
	CLASS.Fuzes		= { ["ACF.Missiles.Fuze.Contact"] = true }
	CLASS.ViewCone	= 120
	CLASS.SeekCone	= 20
	CLASS.Agility		= 0.015
	CLASS.ArmDelay	= 0.5
	CLASS.Round = {
		Model           = "models/missiles/1xagm84.mdl",
		RackModel       = "models/missiles/1xagm84.mdl",
		MaxLength       = 220,
		Armor           = 5,
		ProjLength      = 35,
		PropLength      = 15,
		Thrust          = 75000, -- in kg*in/s^2
		FuelConsumption = 0.005, -- in g/s/f
		StarterPercent  = 0.05,
		MaxAgilitySpeed = 40, -- in m/s
		DragCoef        = 0.5,
		FinMul          = 0.3,
		GLimit          = 14,
		TailFinMul      = 0.01,
		PenMul          = 1,
		FillerMul       = 3,
		LinerMassMul    = 1,
		Standoff        = 51,
		CanDelayLaunch  = true,
		ActualLength    = 150,
		ActualWidth     = 15
	}
	CLASS.Preview = {
		Height = 90,
		FOV    = 60,
	}
end)

Classes.DefineClass("ACF.Missiles.Tactical.Storm Shadow", "ACF.Missiles.Tactical", function(CLASS)
	CLASS.Name		= "SCALP-EG Storm Shadow"
	CLASS.Description	= "The stormshadow is a low observability, turbojet driven cruise missile. Though slow this ordinance has extreme range, good maneuverability, staying time. And will obliterate anything it touches."
	CLASS.Model		= "models/macc/Storm_Shadow_Open.mdl"
	CLASS.Length		= 205 * 2.53
	CLASS.Caliber		= 480
	CLASS.Mass		= 1300
	CLASS.Year		= 2003
	CLASS.ReloadTime	= 120
	CLASS.ExhaustPos  = Vector(-29)
	CLASS.Racks		= { ["ACF.Racks.1xRK"] = true }
	CLASS.Guidances	= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.GPSGuided"] = true}
	CLASS.Navigation  = "PN"
	CLASS.Fuzes		= { ["ACF.Missiles.Fuze.Contact"] = true }
	CLASS.ViewCone	= 120
	CLASS.SeekCone	= 20
	CLASS.Agility		= 0.0008
	CLASS.ArmDelay	= 0.5
	CLASS.Round = {
		Model           = "models/macc/Storm_Shadow_Open.mdl",
		RackModel       = "models/macc/Storm_Shadow_Closed.mdl",
		MaxLength       = 220,
		Armor           = 10,
		ProjLength      = 55,
		PropLength      = 60,
		Thrust          = 180000, -- in kg*in/s^2
		FuelConsumption = 0.03, -- in g/s/f
		StarterPercent  = 0.02,
		MaxAgilitySpeed = 40, -- in m/s
		DragCoef        = 0.5,
		FinMul          = 0.7,
		GLimit          = 14,
		TailFinMul      = 0.01,
		PenMul          = 0.75,
		FillerMul       = 3.75,
		LinerMassMul    = 1,
		Standoff        = 51,
		CanDelayLaunch  = true,
		ActualLength    = 210,
		ActualWidth     = 25
	}
	CLASS.Preview = {
		Height = 90,
		FOV    = 60,
	}
end)

Classes.DefineClass("ACF.Missiles.AntiTankGuided.AGM-114L", "ACF.Missiles.Tactical", function(CLASS)
	CLASS.Name			= "AGM-114L Hellfire"
	CLASS.Description	= "The AGM-114L Hellfire is a heavy radar guided missile, used often by American aircraft and more recently used on ships providing anti drone and small craft capabilities."
	CLASS.Model			= "models/missiles/agm_114.mdl"
	CLASS.Length		= 160
	CLASS.Caliber		= 180
	CLASS.Mass			= 49
	CLASS.Diameter		= 6.5 * ACF.InchToMm -- in mm
	CLASS.Year			= 1984
	CLASS.ReloadTime	= 60
	CLASS.ExhaustPos	= Vector(-29)
	CLASS.Racks			= { ["ACF.Racks.1xRK"] = true, ["ACF.Racks.1xRK_small"] = true, ["ACF.Racks.2x AGM-114"] = true, ["ACF.Racks.4x AGM-114"] = true }
	CLASS.Guidances	    = { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.ActiveRadar"] = true }
	CLASS.Navigation	= "APN"
	CLASS.Fuzes			= { ["ACF.Missiles.Fuze.Contact"] = true }
	CLASS.ViewCone		= 120
	CLASS.SeekCone		= 20
	CLASS.Agility		= 0.015
	CLASS.ArmDelay		= 0.25
	CLASS.HitDeviate	= true
	CLASS.Bodygroups	= {
		guidance = {
			DataSource = function(Entity)
				return Entity.GuidanceData and Entity.GuidanceData.Name
			end,
			Laser = {
				OnRack = "laser.smd",
			},
			["ACF.Missiles.Guidance.ActiveRadar"] = {
				OnRack = "radar.smd",
			}
		}
	}
	CLASS.Round			= {
		Model           	= "models/missiles/agm_114.mdl",
		MaxLength       	= 160,
		Armor           	= 1,
		ProjLength      	= 30,
		PropLength      	= 56,
		Thrust          	= 210000, -- in kg*in/s^2
		FuelConsumption 	= 0.03, -- in g/s/f
		StarterPercent  	= 0.12,
		MaxAgilitySpeed 	= 40, -- in m/s
		DragCoef        	= 0.005,
		FinMul          	= 0.1,
		GLimit          	= 14,
		TailFinMul      	= 0.01,
		PenMul          	= 1,
		FillerMul       	= 12,
		LinerMassMul    	= 1,
		Standoff        	= 51,
		CanDelayLaunch  	= true,
		ActualLength    	= 64,
		ActualWidth     	= 10
	}
	CLASS.Preview		= {
		Height = 90,
		FOV    = 60,
	}
	CLASS.LimitConVar 	= {
		Name = "_acfm_hellfire_L",
		Amount = 8,
		Text = "Maximum number of longbow missiles that can be loaded at once."
	}
end)