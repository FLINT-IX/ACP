local Classes = ACF.Classes

Classes.DefineClass("ACF.Missiles.AirToAir.R-60", "ACF.Missiles.AirToAir", function(CLASS)
	CLASS.Name			= "R-60 Aphid"
	CLASS.Description	= "Small early soviet era air to air missile. Extremely agile but with a tiny warhead."
	CLASS.Model			= "models/missiles/arend/r60m.mdl"
	CLASS.Length		= 85 * 2.53
	CLASS.Caliber		= 122
	CLASS.Mass			= 44
	CLASS.Year			= 1953
	CLASS.ReloadTime	= 10
	CLASS.ExhaustPos  	= Vector(-42)
	CLASS.Racks			= { ["ACF.Racks.1xRK_small"] = true, ["ACF.Racks.1xRK"] = true, ["ACF.Racks.2xRK"] = true, ["ACF.Racks.4xRK"] = true }
	CLASS.Guidances		= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.Infrared"] = true}
	CLASS.Navigation  	= "APN"
	CLASS.Fuzes			= { ["ACF.Missiles.Fuze.Contact"] = true, ["ACF.Missiles.Fuze.Radio"] = true }
	CLASS.SeekCone		= 10
	CLASS.ViewCone		= 30
	CLASS.Agility		= 0.0025
	CLASS.ArmDelay		= 0.2
	CLASS.HitDeviate  	= true
	CLASS.Round 		= {
		Model           	= "models/missiles/arend/r60m.mdl",
		MaxLength       	= 289,
		ProjLength      	= 25,
		Armor           	= 2,
		PropLength      	= 120,
		Thrust          	= 700000, -- in kg*in/s^2
		FuelConsumption 	= 0.03, -- in g/s/f
		StarterPercent  	= 0.05,
		MaxAgilitySpeed 	= 300, -- in m/s
		DragCoef        	= 0.008,
		FinMul          	= 0.1,
		GLimit          	= 20,
		TailFinMul      	= 0.001,
		CanDelayLaunch  	= true,
		ActualLength    	= 85,
		ActualWidth     	= 14
	}
	CLASS.Preview 			= {
		Height = 100,
		FOV    = 60,
	}
end)

Classes.DefineClass("ACF.Missiles.AirToAir.R-73", "ACF.Missiles.AirToAir", function(CLASS)
	CLASS.Name			= "R-73 Archer"
	CLASS.Description	= "Soviet replacement for the R-60 Aphid. While still being AIM-9 adjacent this missile helps keep up with more modern versions."
	CLASS.Model			= "models/missiles/arend/r73.mdl"
	CLASS.Length		= 293
	CLASS.Caliber		= 165
	CLASS.Mass			= 105
	CLASS.Year			= 1984
	CLASS.ReloadTime	= 15
	CLASS.ExhaustPos  	= Vector(-60)
	CLASS.Racks			= { ["ACF.Racks.1xRK"] = true, ["ACF.Racks.2xRK"] = true }
	CLASS.Guidances		= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.Infrared"] = true}
	CLASS.Navigation  	= "APN"
	CLASS.Fuzes			= { ["ACF.Missiles.Fuze.Contact"] = true, ["ACF.Missiles.Fuze.Radio"] = true }
	CLASS.SeekCone		= 10
	CLASS.ViewCone		= 20
	CLASS.Agility		= 0.0023
	CLASS.ArmDelay		= 0.2
	CLASS.HitDeviate  	= true
	CLASS.Round 		= {
		Model           	= "models/missiles/arend/r73.mdl",
		MaxLength       	= 293,
		ProjLength      	= 30,
		Armor           	= 2,
		PropLength      	= 80,
		Thrust          	= 750000, -- in kg*in/s^2
		FuelConsumption 	= 0.025, -- in g/s/f
		StarterPercent  	= 0.065,
		MaxAgilitySpeed 	= 300, -- in m/s
		DragCoef        	= 0.01,
		FinMul          	= 0.1,
		GLimit          	= 20,
		TailFinMul      	= 0.001,
		CanDelayLaunch  	= true,
		ActualLength    	= 125,
		ActualWidth     	= 15
	}
	CLASS.Preview 			= {
		Height = 100,
		FOV    = 60,
	}
end)

Classes.DefineClass("ACF.Missiles.AirToAir.R-77", "ACF.Missiles.AirToAir", function(CLASS)
	CLASS.Name			= "R-73 Adder"
	CLASS.Description	= "Russian counterpart to the US made AIM-120 AMRAAM."
	CLASS.Model			= "models/missiles/arend/r77.mdl"
	CLASS.Length		= 370
	CLASS.Caliber		= 200
	CLASS.Mass			= 175
	CLASS.Year			= 1994
	CLASS.ReloadTime	= 25
	CLASS.ExhaustPos  	= Vector(-66)
	CLASS.Racks			= { ["ACF.Racks.1xRK"] = true, ["ACF.Racks.2xRK"] = true }
	CLASS.Guidances		= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.SemiActiveRadar"] = true, ["ACF.Missiles.Guidance.ActiveRadar"] = true }
	CLASS.Navigation  	= "APN"
	CLASS.Fuzes			= { ["ACF.Missiles.Fuze.Contact"] = true, ["ACF.Missiles.Fuze.Radio"] = true }
	CLASS.SeekCone		= 12.5
	CLASS.ViewCone		= 32.5
	CLASS.Agility		= 0.01
	CLASS.ArmDelay		= 0.2
	CLASS.HitDeviate  	= true
	CLASS.Round 		= {
		Model           	= "models/missiles/arend/r77.mdl",
		MaxLength       	= 370,
		ProjLength      	= 75,
		Armor           	= 2,
		PropLength      	= 150,
		Thrust          	= 1300000, -- in kg*in/s^2
		FuelConsumption 	= 0.02, -- in g/s/f
		StarterPercent  	= 0.1,
		MaxAgilitySpeed 	= 350, -- in m/s
		DragCoef        	= 0.03,
		FinMul          	= 0.2,
		GLimit          	= 20,
		TailFinMul      	= 0.001,
		CanDelayLaunch  	= true,
		ActualLength    	= 150,
		ActualWidth     	= 13
	}
	CLASS.Preview 			= {
		Height = 60,
		FOV    = 60,
	}
end)

Classes.DefineClass("ACF.Missiles.AirToAir.R-33", "ACF.Missiles.AirToAir", function(CLASS)
	CLASS.Name			= "R-33 Amos"
	CLASS.Description	= "A Soviet made long range air to air missile primarily used on the MiG-31 Interceptors intended to protect against NATO bombers."
	CLASS.Model			= "models/missiles/arend/r33.mdl"
	CLASS.Length		= 415
	CLASS.Caliber		= 380
	CLASS.Mass			= 490
	CLASS.Year			= 1981
	CLASS.ReloadTime	= 40
	CLASS.ExhaustPos  	= Vector(-60)
	CLASS.Racks			= { ["ACF.Racks.1xRK"] = true }
	CLASS.Guidances		= { ["ACF.Missiles.Guidance.Dumb"] = true, ["ACF.Missiles.Guidance.SemiActiveRadar"] = true, ["ACF.Missiles.Guidance.ActiveRadar"] = true }
	CLASS.Navigation  	= "APN"
	CLASS.Fuzes			= { ["ACF.Missiles.Fuze.Contact"] = true, ["ACF.Missiles.Fuze.Radio"] = true }
	CLASS.SeekCone		= 10.5
	CLASS.ViewCone		= 20.5
	CLASS.Agility		= 0.0185
	CLASS.ArmDelay		= 0.4
	CLASS.HitDeviate  	= true
	CLASS.Round 		= {
		Model           	= "models/missiles/arend/r33.mdl",
		MaxLength       	= 415,
		ProjLength      	= 44,
		Armor           	= 5,
		PropLength      	= 220,
		Thrust          	= 3200000, -- in kg*in/s^2
		FuelConsumption 	= 0.02, -- in g/s/f
		StarterPercent  	= 0.5,
		MaxAgilitySpeed 	= 300, -- in m/s
		DragCoef        	= 0.08,
		FinMul          	= 0.33,
		GLimit          	= 15,
		TailFinMul      	= 0.001,
		CanDelayLaunch  	= true,
		ActualLength    	= 160,
		ActualWidth     	= 27
	}
	CLASS.Preview 			= {
		Height = 60,
		FOV    = 60,
	}
end)