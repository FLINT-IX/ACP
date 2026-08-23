local Classes = ACF.Classes

Classes.DefineClass("ACF.Missiles.AntiRadiation.AGM-88", "ACF.Missiles.AntiRadiation", function(CLASS)
	CLASS.Name		= "AGM-88 HARM"
	CLASS.Description	= "Advanced long range anti-radiation missile with improved guidance. Significantly heavier but makes up for it in range and tracking."
	CLASS.Model		= "models/missiles/arend/agm-88.mdl"
	CLASS.Length		= 417
	CLASS.Caliber		= 254
	CLASS.Mass		= 361
	CLASS.Year		= 1985
	CLASS.ReloadTime	= 45
	CLASS.ExhaustPos  = Vector(-70)
	CLASS.Racks		= { ["ACF.Racks.1xRK"] = true, ["ACF.Racks.2xRK"] = true}
	CLASS.Guidance	= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.AntiRadiation"] = true }
	CLASS.Navigation  = "PN"
	CLASS.Fuzes			= { ["ACF.Missiles.Fuze.Contact"] = true, ["ACF.Missiles.Fuze.Optical"] = true }
	CLASS.SeekCone	= 10
	CLASS.ViewCone	= 15
	CLASS.Agility		= 0.02
	CLASS.ArmDelay	= 0.3
	CLASS.Round = {
		Model           = "models/missiles/arend/agm-88.mdl",
		MaxLength       = 417,
		Armor           = 2,
		ProjLength      = 70,
		PropLength      = 100,
		Thrust          = 300000, -- in kg*in/s^2
		FuelConsumption = 0.008, -- in g/s/f
		StarterPercent  = 0.15,
		MaxAgilitySpeed = 350, -- in m/s
		DragCoef        = 0.06,
		FinMul          = 0.2,
		GLimit          = 20,
		TailFinMul      = 0.001,
		CanDelayLaunch  = true,
		ActualLength    = 160,
		ActualWidth     = 20
	}
	CLASS.Preview = {
		Height = 80,
		FOV    = 60,
	}
end)

Classes.DefineClass("ACF.Missiles.AntiRadiation.KH-31", "ACF.Missiles.AntiRadiation", function(CLASS)
	CLASS.Name		= "KH-31 Krypton"
	CLASS.Description	= "Versatile soviet anti ship and anti radiation missile. First of its kind to be capable of supersonic flight. Reduced warhead for increased speed."
	CLASS.Model		= "models/missiles/arend/r33.mdl"
	CLASS.Length		= 185 * 2.53
	CLASS.Caliber		= 360
	CLASS.Mass		= 610
	CLASS.Year		= 1974
	CLASS.ReloadTime	= 65
	CLASS.ExhaustPos  = Vector(-29)
	CLASS.Racks		= { ["ACF.Racks.1xRK"] = true }
	CLASS.Guidance	= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.AntiRadiation"] = true }
	CLASS.Navigation  = "PN"
	CLASS.Fuzes			= { ["ACF.Missiles.Fuze.Contact"] = true, ["ACF.Missiles.Fuze.Optical"] = true }
	CLASS.ViewCone	= 20
	CLASS.SeekCone	= 10
	CLASS.Agility		= 0.008
	CLASS.ArmDelay	= 0.3
	CLASS.Round = {
		Model           = "models/missiles/arend/r33.mdl",
		RackModel       = "models/missiles/arend/r33.mdl",
		MaxLength       = 185 * 2.53,
		Armor           = 50,
		ProjLength      = 5,
		PropLength      = 56,
		Thrust          = 230000, -- in kg*in/s^2
		FuelConsumption = 0.03, -- in g/s/f
		StarterPercent  = 0.12,
		MaxAgilitySpeed = 40, -- in m/s
		DragCoef        = 0.0025,
		FinMul          = 0.7,
		GLimit          = 14,
		TailFinMul      = 0.01,
		PenMul          = 1,
		FillerMul       = 12,
		LinerMassMul    = 1,
		Standoff        = 51,
		CanDelayLaunch  = true,
		ActualLength    = 185,
		ActualWidth     = 32
	}
	CLASS.Preview = {
		Height = 90,
		FOV    = 60,
	}
end)

Classes.DefineClass("ACF.Missiles.AntiTankGuided.AGM-65", "ACF.Missiles.AntiTankGuided", function(CLASS)
	CLASS.Name		= "AGM-65 Maverick Missile"
	CLASS.Description	= "A powerful but somewhat slow, versitile US made missile with a variety of seeker heads."
	CLASS.Model		= "models/missiles/arend/agm65d.mdl"
	CLASS.Length		= 99 * 2.53
	CLASS.Caliber		= 305
	CLASS.Mass		= 300
	CLASS.Year		= 1972
	CLASS.ReloadTime	= 30
	CLASS.ExhaustPos  = Vector(-45)
	CLASS.Racks		= { ["ACF.Racks.1xRK"] = true }
	CLASS.Guidance	= { ["ACF.Missiles.Guidance.Dumb"] = true, Infrared = true, ["ACF.Missiles.Guidance.WireSACLOS"] = true, ["ACF.Missiles.Guidance.Laser"] = true }
	CLASS.Navigation  = "PN"
	CLASS.Fuzes		= { Contact = true }
	CLASS.ViewCone	= 20
	CLASS.SeekCone	= 10
	CLASS.Agility		= 0.002
	CLASS.ArmDelay	= 0.3
	CLASS.Round = {
		Model           = "models/missiles/arend/agm65d.mdl",
		RackModel       = "models/missiles/arend/agm65d.mdl",
		MaxLength       = 99 * 2.53,
		Armor           = 5,
		ProjLength      = 30,
		PropLength      = 56,
		Thrust          = 80000, -- in kg*in/s^2
		FuelConsumption = 0.15, -- in g/s/f
		StarterPercent  = 0.15,
		MaxAgilitySpeed = 40, -- in m/s
		DragCoef        = 0.033,
		FinMul          = 0.1,
		GLimit          = 14,
		TailFinMul      = 0.01,
		PenMul          = 0.65,
		FillerMul       = 6,
		LinerMassMul    = 1,
		Standoff        = 51,
		CanDelayLaunch  = true,
		ActualLength    = 110,
		ActualWidth     = 21
	}
	CLASS.Preview = {
		Height = 80,
		FOV    = 60,
	}
end)

Classes.DefineClass("ACF.Missiles.AntiTankGuided.KH-29", "ACF.Missiles.AntiTankGuided", function(CLASS)
	CLASS.Name		= "KH-29 Kedge"
	CLASS.Description	= "A powerful soviet era stand off missile primarily used against larger battlefield targets such as buildings, depots and bridges, and also ships, hardened aircraft shelters and even runways."
	CLASS.Model		= "models/missiles/arend/kh29.mdl"
	CLASS.Length		= 193 * 2.53
	CLASS.Caliber		= 380
	CLASS.Mass		= 685
	CLASS.Year		= 1974
	CLASS.ReloadTime	= 30
	CLASS.ExhaustPos  = Vector(-78)
	CLASS.Racks		= { ["ACF.Racks.1xRK"] = true }
	CLASS.Guidance	= { ["ACF.Missiles.Guidance.Dumb"] = true, Infrared = true, ["ACF.Missiles.Guidance.WireSACLOS"] = true, ["ACF.Missiles.Guidance.Laser"] = true }
	CLASS.Navigation  = "PN"
	CLASS.Fuzes		= { Contact = true }
	CLASS.ViewCone	= 15
	CLASS.SeekCone	= 10
	CLASS.Agility		= 0.002
	CLASS.ArmDelay	= 0.5
	CLASS.Round = {
		Model           = "models/missiles/arend/kh29.mdl",
		RackModel       = "models/missiles/arend/kh29.mdl",
		MaxLength       = 193 * 2.53,
		Armor           = 10,
		ProjLength      = 65,
		PropLength      = 40,
		Thrust          = 160000, -- in kg*in/s^2
		FuelConsumption = 0.03, -- in g/s/f
		StarterPercent  = 0.14,
		MaxAgilitySpeed = 40, -- in m/s
		DragCoef        = 0.045,
		FinMul          = 0.2,
		GLimit          = 14,
		TailFinMul      = 0.02,
		PenMul          = 0.35,
		FillerMul       = 12,
		LinerMassMul    = 1,
		Standoff        = 51,
		CanDelayLaunch  = true,
		ActualLength    = 155,
		ActualWidth     = 30
	}
	CLASS.Preview = {
		Height = 80,
		FOV    = 60,
	}
end)