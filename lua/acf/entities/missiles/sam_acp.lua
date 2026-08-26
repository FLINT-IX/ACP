local Classes = ACF.Classes

Classes.DefineClass("ACF.Missiles.SurfaceToAir.9M317M", "ACF.Missiles.SurfaceToAir", function(CLASS)
	CLASS.Name		= "9M317M Buk M3"
	CLASS.Description	= "An upgraded navalized version of the soviet era BUK missile."
	CLASS.Model		= "models/macc/9M317ME_open.mdl"
	CLASS.Length		= 415
	CLASS.Caliber		= 380
	CLASS.Mass		= 581
	CLASS.Year		= 2016
	CLASS.ReloadTime	= 90
	CLASS.ExhaustPos  = Vector(-60)
	CLASS.Racks		= { ["ACF.Racks.1xRK"] = true, ["ACF.Racks.2xRK"] = true }
	CLASS.Guidances	= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.SemiActiveRadar"] = true, ["ACF.Missiles.Guidance.ActiveRadar"] = true }
	CLASS.Navigation  = "APN"
	CLASS.Fuzes			= { ["ACF.Missiles.Fuze.Contact"] = true, ["ACF.Missiles.Fuze.Radio"] = true }
	CLASS.SeekCone	= 10
	CLASS.ViewCone	= 20
	CLASS.Agility		= 0.1
	CLASS.ArmDelay	= 0.5
	CLASS.Round = {
		Model           = "models/macc/9M317ME_open.mdl",
		RackModel       = "models/macc/9M317ME_folded.mdl",
		MaxLength       = 400,
		Armor           = 5,
		ProjLength      = 20,
		PropLength      = 175,
		Thrust          = 1000000, -- in kg*in/s^2
		FuelConsumption = 0.04, -- in g/s/f
		StarterPercent  = 0.15,
		MaxAgilitySpeed = 300, -- in m/s
		DragCoef        = 0.03,
		FinMul          = 0.3,
		GLimit          = 19,
		TailFinMul      = 0.001,
		CanDelayLaunch  = true,
		ActualLength    = 180,
		ActualWidth     = 20
	}
	CLASS.Preview = {
		Height = 100,
		FOV    = 60,
	}
end)

Classes.DefineClass("ACF.Missiles.SurfaceToAir.MIM-146", "ACF.Missiles.AntiTankGuided", function(CLASS)
	CLASS.Name		= "MIM-146 ADATS"
	CLASS.Description	= "Dual purpose short range suface to air and anti tank missile."
	CLASS.Model		= "models/missiles/mim146.mdl"
	CLASS.Length		= 92 * 2.53
	CLASS.Caliber		= 152
	CLASS.Mass		= 51
	CLASS.Year		= 1989
	CLASS.ReloadTime	= 30
	CLASS.ExhaustPos  = Vector(-44)
	CLASS.Racks		= { ["ACF.Racks.VT1xPOD"] = true }
	CLASS.Guidances	= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.SemiActiveRadar"] = true }
	CLASS.Navigation  = "APN"
	CLASS.Fuzes			= { ["ACF.Missiles.Fuze.Contact"] = true }
	CLASS.SeekCone	= 20
	CLASS.ViewCone	= 40
	CLASS.Agility		= 0.01
	CLASS.ArmDelay	= 0.05
	CLASS.Round = {
		Model           = "models/missiles/mim146.mdl",
		RackModel       = "models/missiles/arend/vt1_folded.mdl",
		IgnoreRackModel = true, -- Ignore the rack model when determining the size of the round for ammo crates
		MaxLength       = 180,
		Armor           = 2,
		ProjLength      = 20,
		PropLength      = 100,
		Thrust          = 90000, -- in kg*in/s^2
		FuelConsumption = 0.1, -- in g/s/f
		StarterPercent  = 0.1,
		MaxAgilitySpeed = 300, -- in m/s
		DragCoef        = 0.003,
		FinMul          = 0.04,
		GLimit          = 20,
		TailFinMul      = 0.001,
		PenMul          = 2,
		LinerMassMul    = 1,
		ActualLength    = 86,
		ActualWidth     = 8
	}
	CLASS.Preview = {
		Height = 60,
		FOV    = 60,
	}
end)

Classes.DefineClass("ACF.Missiles.SurfaceToAir.9M311", "ACF.Missiles.SurfaceToAir", function(CLASS)
	CLASS.Name		= "9M311 Grison"
	CLASS.Description	= "Late Cold War two stage surface to air missile commonly mounted on the Tunguska SPAAGs."
	CLASS.Model		= "models/missiles/arend/9m311_unfolded.mdl"
	CLASS.Length		= 248
	CLASS.Caliber		= 76
	CLASS.Mass		= 71
	CLASS.Year		= 1982
	CLASS.ReloadTime	= 45
	CLASS.ExhaustPos  = Vector(-49.5)
	CLASS.Racks		= { ["ACF.Racks.9m311xPOD"] = true }
	CLASS.Guidances	= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.SemiActiveRadar"] = true }
	CLASS.Navigation  = "APN"
	CLASS.Fuzes			= { ["ACF.Missiles.Fuze.Contact"] = true, ["ACF.Missiles.Fuze.Radio"] = true }
	CLASS.SeekCone	= 15
	CLASS.ViewCone	= 25
	CLASS.Agility		= 0.0015
	CLASS.ArmDelay	= 0.2
	CLASS.Round = {
		Model           = "models/missiles/arend/9m311_unfolded.mdl",
		RackModel       = "models/missiles/arend/9m311_folded.mdl",
		IgnoreRackModel = true, -- Ignore the rack model when determining the size of the round for ammo crates
		MaxLength       = 248,
		Armor           = 2,
		ProjLength      = 100,
		PropLength      = 140,
		Thrust          = 700000, -- in kg*in/s^2
		FuelConsumption = 0.02, -- in g/s/f
		StarterPercent  = 0.10,
		MaxAgilitySpeed = 300, -- in m/s
		DragCoef        = 0.01,
		FinMul          = 0.04,
		GLimit          = 20,
		TailFinMul      = 0.001,
		ActualLength    = 105,
		ActualWidth     = 9
	}
	CLASS.Preview = {
		Height = 60,
		FOV    = 60,
	}
end)

Classes.DefineClass("ACF.Missiles.SurfaceToAir.9M331", "ACF.Missiles.SurfaceToAir", function(CLASS)
	CLASS.Name		= "9M331 Gauntlet"
	CLASS.Description	= "Soviet era surface to air missile commonly found on Tor Systems. Larger view cone allows for a fixed vertical mounting."
	CLASS.Model		= "models/missiles/arend/9m331_folded.mdl"
	CLASS.Length		= 290
	CLASS.Caliber		= 235
	CLASS.Mass		= 167
	CLASS.Year		= 1991
	CLASS.ReloadTime	= 60
	CLASS.ExhaustPos  = Vector(-44)
	CLASS.Racks		= { ["ACF.Racks.9m331xPOD"] = true }
	CLASS.Guidances	= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.SemiActiveRadar"] = true, ["ACF.Missiles.Guidance.AntiMissile"] = true }
	CLASS.Navigation  = "APN"
	CLASS.Fuzes			= { ["ACF.Missiles.Fuze.Contact"] = true, ["ACF.Missiles.Fuze.Radio"] = true }
	CLASS.SeekCone	= 10
	CLASS.ViewCone	= 180
	CLASS.Agility		= 0.3
	CLASS.ArmDelay	= 0.05
	CLASS.Round = {
		Model           = "models/missiles/arend/9m331_unfolded.mdl",
		RackModel       = "models/missiles/arend/9m331_folded.mdl",
		IgnoreRackModel = true, -- Ignore the rack model when determining the size of the round for ammo crates
		MaxLength       = 290,
		Armor           = 5,
		ProjLength      = 80,
		PropLength      = 75,
		Thrust          = 900000, -- in kg*in/s^2
		FuelConsumption = 0.01, -- in g/s/f
		StarterPercent  = 0.024,
		MaxAgilitySpeed = 300, -- in m/s
		DragCoef        = 0.003,
		FinMul          = 0.04,
		GLimit          = 30,
		TailFinMul      = 0.03,
		ActualLength    = 125,
		ActualWidth     = 12.5
	}
	CLASS.Preview = {
		Height = 60,
		FOV    = 60,
	}
end)