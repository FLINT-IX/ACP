local Missiles = ACF.Classes.Missiles

Missiles.RegisterItem("M31", "ARTY", {
	Name		= "M31 GMLRS",
	Description	= "Long range precision strike missile found in the M270 MLRS. Guided to give better precision and control over trajectory.",
	Model		= "models/missiles/gmlrs.mdl",
	Caliber		= 227,
	Mass		= 300,
	Length		= 394,
	Year		= 1983,
	ReloadTime	= 6,
	ExhaustPos  = Vector(-70),
	Racks		= { ["1xRK"] = true, ["6xUARRK"] = true },
	Guidance	= { Dumb = true, Laser = true, ["GPS Guided"] = true },
	Navigation  = "PN",
	Fuzes		= { Contact = true, Optical = true },
	Agility		= 0.008,
	ViewCone	= 60,
	ArmDelay	= 0.5,
	Round = {
		Model           = "models/missiles/gmlrs.mdl",
		RackModel       = "models/missiles/gmlrs.mdl",
		MaxLength       = 394,
		Armor           = 10,
		ProjLength      = 140,
		PropLength      = 160,
		Thrust          = 2000000, -- in kg*in/s^2
		FuelConsumption = 0.022, -- in g/s/f
		StarterPercent  = 0.05,
		MaxAgilitySpeed = 75, -- in m/s
		DragCoef        = 0.3,
		FinMul          = 0.08,
		GLimit          = 10,
		TailFinMul      = 50,
		PenMul          = 1,
		CanDelayLaunch  = true,
		ActualLength    = 146,
		ActualWidth     = 8
	},
	Preview = {
		Height = 80,
		FOV    = 60,
	},
})

Missiles.RegisterItem("MGM-140", "ARTY", {
	Name		= "MGM-140 ATACMS",
	Description	= "Short range tactical balistic missile made in the US. Carried in a pair on M270 MLRS or singular on M124 HIMARS",
	Model		= "models/macc/MGM-140.mdl",
	Caliber		= 610,
	Mass		= 1670,
	Length		= 400,
	Year		= 1986,
	ReloadTime	= 120,
	ExhaustPos  = Vector(-70),
	Racks		= { ["1xRK"] = true },
	Guidance	= { Dumb = true, ["GPS Guided"] = true, ["Tactical GPS Guided"] = true},
	Navigation  = "PN",
	Fuzes		= { Contact = true, Optical = true},
	Agility		= 0.3,
	ViewCone	= 30,
	ArmDelay	= 0.5,
	Round = {
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
	},
	Preview = {
		Height = 80,
		FOV    = 60,
	},
})

