local Missiles = ACF.Classes.Missiles

Missiles.RegisterItem("R-60", "AAM", {
	Name		= "R-60 Aphid",
	Description	= "Small early soviet era air to air missile. Extremely agile but with a tiny warhead.",
	Model		= "models/missiles/arend/r60m.mdl",
	Length		= 85 * 2.53,
	Caliber		= 122,
	Mass		= 44,
	Year		= 1953,
	ReloadTime	= 10,
	ExhaustPos  = Vector(-42),
	Racks		= { ["1xRK_small"] = true, ["1xRK"] = true, ["2xRK"] = true },
	Guidance	= { Dumb = true, Infrared = true, },
	Navigation  = "APN",
	Fuzes		= { Contact = true, Radio = true },
	SeekCone	= 10,
	ViewCone	= 30,
	Agility		= 0.0025,
	ArmDelay	= 0.2,
	Round = {
		Model           = "models/missiles/arend/r60m.mdl",
		MaxLength       = 289,
		ProjLength      = 25,
		Armor           = 2,
		PropLength      = 120,
		Thrust          = 700000, -- in kg*in/s^2
		FuelConsumption = 0.03, -- in g/s/f
		StarterPercent  = 0.05,
		MaxAgilitySpeed = 300, -- in m/s
		DragCoef        = 0.008,
		FinMul          = 0.1,
		GLimit          = 20,
		TailFinMul      = 0.001,
		CanDelayLaunch  = true,
		ActualLength    = 85,
		ActualWidth     = 14
	},
	Preview = {
		Height = 100,
		FOV    = 60,
	},
})

Missiles.RegisterItem("R-73", "AAM", {
	Name		= "R-73 Archer",
	Description	= "Soviet replacement for the R-60 Aphid. While still being AIM-9 adjacent this missile helps keep up with more modern versions.",
	Model		= "models/missiles/arend/r73.mdl",
	Length		= 293,
	Caliber		= 165,
	Mass		= 105,
	Year		= 1984,
	ReloadTime	= 15,
	ExhaustPos  = Vector(-60),
	Racks		= { ["1xRK"] = true, ["2xRK"] = true },
	Guidance	= { Dumb = true, Infrared = true },
	Navigation  = "APN",
	Fuzes		= { Contact = true, Radio = true },
	SeekCone	= 10,
	ViewCone	= 20,
	Agility		= 0.023,
	ArmDelay	= 0.2,
	Round = {
		Model           = "models/missiles/arend/r73.mdl",
		MaxLength       = 293,
		Armor           = 2,
		ProjLength      = 30,
		PropLength      = 80,
		Thrust          = 750000, -- in kg*in/s^2
		FuelConsumption = 0.025, -- in g/s/f
		StarterPercent  = 0.065,
		MaxAgilitySpeed = 300, -- in m/s
		DragCoef        = 0.01,
		FinMul          = 0.1,
		GLimit          = 20,
		TailFinMul      = 0.001,
		CanDelayLaunch  = true,
		ActualLength    = 125,
		ActualWidth     = 15
	},
	Preview = {
		Height = 100,
		FOV    = 60,
	},
})

Missiles.RegisterItem("R-77", "AAM", {
	Name		= "R-77 Adder",
	Description	= "Russian counterpart to the US made AIM-120 AMRAAM.",
	Model		= "models/missiles/arend/r77.mdl",
	Length		= 370,
	Caliber		= 200,
	Mass		= 175,
	Year		= 1994,
	ReloadTime	= 25,
	ExhaustPos  = Vector(-66),
	Racks		= { ["1xRK"] = true, ["2xRK"] = true },
	Guidance	= { Dumb = true, ["Semi-Active Radar"] = true, ["Active Radar"] = true, Infrared = true },
	Navigation  = "APN",
	Fuzes		= { Contact = true, Radio = true },
	SeekCone	= 12.5,
	ViewCone	= 32.5,
	Agility		= 0.01,
	ArmDelay	= 0.2,
	Round = {
		Model           = "models/missiles/arend/r77.mdl",
		MaxLength       = 370,
		Armor           = 2,
		ProjLength      = 75,
		PropLength      = 150,
		Thrust          = 1300000, -- in kg*in/s^2
		FuelConsumption = 0.02, -- in g/s/f
		StarterPercent  = 0.10,
		MaxAgilitySpeed = 350, -- in m/s
		DragCoef        = 0.03,
		FinMul          = 0.2,
		GLimit          = 20,
		TailFinMul      = 0.001,
		CanDelayLaunch  = true,
		ActualLength    = 150,
		ActualWidth     = 13
	},
	Preview = {
		Height = 60,
		FOV    = 60,
	},
})

Missiles.RegisterItem("R-33", "AAM", {
	Name		= "R-33 Amos",
	Description	= "A Soviet made long range air to air missile primarily used on the MiG-31 Interceptors intended to protect against NATO bombers.",
	Model		= "models/missiles/arend/r33.mdl",
	Length		= 415,
	Caliber		= 380,
	Mass		= 490,
	Year		= 1981,
	ReloadTime	= 40,
	ExhaustPos  = Vector(-60),
	Racks		= { ["1xRK"] = true },
	Guidance	= { Dumb = true, ["Semi-Active Radar"] = true, ["Active Radar"] = true },
	Navigation  = "APN",
	Fuzes		= { Contact = true, Radio = true },
	SeekCone	= 10,
	ViewCone	= 20,
	Agility		= 0.0185,
	ArmDelay	= 0.4,
	Round = {
		Model           = "models/missiles/arend/r33.mdl",
		MaxLength       = 415,
		Armor           = 2,
		ProjLength      = 45,
		PropLength      = 220,
		Thrust          = 3200000, -- in kg*in/s^2
		FuelConsumption = 0.02, -- in g/s/f
		StarterPercent  = 0.05,
		MaxAgilitySpeed = 300, -- in m/s
		DragCoef        = 0.08,
		FinMul          = 0.33,
		GLimit          = 13,
		TailFinMul      = 0.001,
		CanDelayLaunch  = true,
		ActualLength    = 160,
		ActualWidth     = 27
	},
	Preview = {
		Height = 100,
		FOV    = 60,
	},
})