local Classes = ACF.Classes

Classes.DefineClass("ACF.Missiles.Artillery.M31", "ACF.Missiles.Artillery", function(CLASS)
	CLASS.Name			= "M31 GMLRS"
	CLASS.Description	= "Long range precision strike missile found in the M270 MLRS. Guided to give better precision and control over trajectory."
	CLASS.Model			= "models/missiles/gmlrs.mdl"
	CLASS.Caliber		= 227
	CLASS.Mass			= 300
	CLASS.Length		= 394
	CLASS.Year			= 1983
	CLASS.ReloadTime	= 15
	CLASS.ExhaustPos  	= Vector(-70)
	CLASS.Racks			= { ["ACF.Racks.1xRK"] = true, ["ACF.Racks.2xRK"] = true, ["ACF.Racks.4xRK"] = true, ["ACF.Racks.6xUARRK"] = true }
	CLASS.Guidances		= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.Laser"] = true, ["ACF.Missiles.Guidance.GPSGuided"] = true }
	CLASS.Navigation  	= "PN"
	CLASS.Fuzes			= { ["ACF.Missiles.Fuze.Contact"] = true, ["ACF.Missiles.Fuze.Timed"] = true, ["ACF.Missiles.Fuze.Optical"] = true, ["ACF.Missiles.Fuze.Altitude"] = true, Cluster = true }
	CLASS.ViewCone		= 60
	CLASS.Agility		= 0.0008
	CLASS.ArmDelay		= 0.2
	CLASS.HitDeviate  	= false
	CLASS.Round 		= {
		Model           	= "models/missiles/gmlrs.mdl",
		MaxLength       	= 394,
		Armor           	= 10,
		ProjLength      	= 140,
		PropLength      	= 160,
		Thrust          	= 2000000, -- in kg*in/s^2
		FuelConsumption 	= 0.022, -- in g/s/f
		StarterPercent  	= 0.05,
		MaxAgilitySpeed 	= 75, -- in m/s
		DragCoef        	= 0.3,
		FinMul          	= 0.08,
		GLimit          	= 10,
		TailFinMul      	= 50,
		PenMul          	= 1,
		CanDelayLaunch  	= true,
		ActualLength    	= 146,
		ActualWidth     	= 8
	}
	CLASS.Preview 		= {
		Height = 100,
		FOV    = 60,
	}
end)

Classes.DefineClass("ACF.Missiles.Artillery.MGM-140", "ACF.Missiles.Artillery", function(CLASS)
	CLASS.Name			= "MGM-140 ATACMS"
	CLASS.Description	= "Short range tactical balistic missile made in the US. Carried in a pair on M270 MLRS or singular on M124 HIMARS"
	CLASS.Model			= "models/macc/MGM-140.mdl"
	CLASS.Caliber		= 610
	CLASS.Mass			= 1670
	CLASS.Length		= 400
	CLASS.Year			= 1986
	CLASS.ReloadTime	= 120
	CLASS.ExhaustPos  	= Vector(-70)
	CLASS.Racks			= { ["ACF.Racks.1xRK"] = true }
	CLASS.Guidances		= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.Laser"] = true, ["ACF.Missiles.Guidance.GPSGuided"] = true }
	CLASS.Navigation  	= "PN"
	CLASS.Fuzes			= { ["ACF.Missiles.Fuze.Contact"] = true, ["ACF.Missiles.Fuze.Timed"] = true, ["ACF.Missiles.Fuze.Optical"] = true, ["ACF.Missiles.Fuze.Altitude"] = true, Cluster = true }
	CLASS.ViewCone		= 30
	CLASS.Agility		= 0.3
	CLASS.ArmDelay		= 0.5
	CLASS.HitDeviate  	= false
	CLASS.Round 		= {
		Model           = "models/macc/MGM-140.mdl",
		RackModel       = "models/macc/MGM-140_closed.mdl",
		MaxLength       = 610,
		Armor           = 15,
		ProjLength      = 80,
		PropLength      = 180,
		Thrust          = 1000000, -- in kg*in/s^2
		FuelConsumption = 0.065, -- in g/s/f
		StarterPercent  = 0.075,
		MaxAgilitySpeed = 75, -- in m/s
		DragCoef        = 0.5,
		FinMul          = 0.25,
		GLimit          = 10,
		TailFinMul      = 50,
		PenMul          = 1.4,
		CanDelayLaunch  = true,
		ActualLength    = 130,
		ActualWidth     = 20
	}
	CLASS.Preview 		= {
		Height = 100,
		FOV    = 60,
	}
end)