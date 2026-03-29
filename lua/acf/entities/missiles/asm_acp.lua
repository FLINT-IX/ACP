local Missiles = ACF.Classes.Missiles

Missiles.RegisterItem("AGM-88", "ARM", {
	Name		= "AGM-88 HARM",
	Description	= "Advanced long range anti-radiation missile with improved guidance. Significantly heavier but makes up for it in range and tracking.",
	Model		= "models/missiles/arend/agm-88.mdl",
	Length		= 417,
	Caliber		= 254,
	Mass		= 361,
	Year		= 1985,
	ReloadTime	= 45,
	ExhaustPos  = Vector(-70),
	Racks		= { ["1xRK"] = true, ["2xRK"] = true},
	Guidance	= { Dumb = true, ["Anti-radiation"] = true },
	Navigation  = "PN",
	Fuzes		= { Contact = true, Optical = true, Radio = true },
	SeekCone	= 10,
	ViewCone	= 15,
	Agility		= 0.02,
	ArmDelay	= 0.3,
	Round = {
		Model           = "models/missiles/arend/agm-88.mdl",
		MaxLength       = 417,
		Armor           = 2,
		ProjLength      = 70,
		PropLength      = 100,
		Thrust          = 300000, -- in kg*in/s^2
		FuelConsumption = 0.008, -- in g/s/f
		StarterPercent  = 0.05,
		MaxAgilitySpeed = 350, -- in m/s
		DragCoef        = 0.06,
		FinMul          = 0.2,
		GLimit          = 20,
		TailFinMul      = 0.001,
		CanDelayLaunch  = true,
		ActualLength    = 160,
		ActualWidth     = 20
	},
	Preview = {
		Height = 80,
		FOV    = 60,
	},
})

Missiles.RegisterItem("KH-31", "ARM", {
	Name		= "KH-31 Krypton",
	Description	= "Versatile soviet anti ship and anti radiation missile. First of its kind to be capable of supersonic flight. Reduced warhead for increased speed.",
	Model		= "models/missiles/arend/r33.mdl",
	Length		= 185 * 2.53,
	Caliber		= 360,
	Mass		= 610,
	Year		= 1974,
	ReloadTime	= 65,
	ExhaustPos  = Vector(-29),
	Racks		= { ["1xRK"] = true },
	Guidance	= { Dumb = true, ["Anti-radiation"] = true },
	Navigation  = "PN",
	Fuzes		= { Contact = true, Optical = true, Radio = true },
	ViewCone	= 40,
	SeekCone	= 10,
	Agility		= 0.008,
	ArmDelay	= 0.5,
	Round = {
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
	},
	Preview = {
		Height = 90,
		FOV    = 60,
	},
})

Missiles.RegisterItem("AGM-65", "ATGM", {
	Name		= "AGM-65 Maverick Missile",
	Description	= "A powerful medium-range multi-purpose Missile, being extremely agile, its able to be used vs low altitude aircraft and for attacking top of tanks. But its somewhat slow",
	Model		= "models/missiles/arend/agm65d.mdl",
	Length		= 99 * 2.53,
	Caliber		= 305,
	Mass		= 300,
	Year		= 1974,
	ReloadTime	= 30,
	ExhaustPos  = Vector(-29),
	Racks		= { ["1xRK"] = true },
	Guidance	= { Dumb = true, Infrared = true, ["Radio (SACLOS)"] = true, Laser = true },
	Navigation  = "PN",
	Fuzes		= { Contact = true },
	ViewCone	= 40,
	SeekCone	= 10,
	Agility		= 0.0075,
	ArmDelay	= 0.5,
	Round = {
		Model           = "models/missiles/arend/agm65d.mdl",
		RackModel       = "models/missiles/arend/agm65d.mdl",
		MaxLength       = 99 * 2.53,
		Armor           = 5,
		ProjLength      = 30,
		PropLength      = 56,
		Thrust          = 150000, -- in kg*in/s^2
		FuelConsumption = 0.02, -- in g/s/f
		StarterPercent  = 0.12,
		MaxAgilitySpeed = 40, -- in m/s
		DragCoef        = 0.005,
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
	},
	Preview = {
		Height = 80,
		FOV    = 60,
	},
})

Missiles.RegisterItem("KH-29", "ATGM", {
	Name		= "KH-29 Kedge",
	Description	= "A powerful soviet era stand off missile primarily used against larger battlefield targets such as buildings, depots and bridges, and also ships, hardened aircraft shelters and even runways.",
	Model		= "models/missiles/arend/kh29.mdl",
	Length		= 193 * 2.53,
	Caliber		= 380,
	Mass		= 685,
	Year		= 1974,
	ReloadTime	= 30,
	ExhaustPos  = Vector(-29),
	Racks		= { ["1xRK"] = true },
	Guidance	= { Dumb = true, Infrared = true, ["Radio (SACLOS)"] = true, Laser = true },
	Navigation  = "PN",
	Fuzes		= { Contact = true },
	ViewCone	= 40,
	SeekCone	= 10,
	Agility		= 0.005,
	ArmDelay	= 0.5,
	Round = {
		Model           = "models/missiles/arend/kh29.mdl",
		RackModel       = "models/missiles/arend/kh29.mdl",
		MaxLength       = 193 * 2.53,
		Armor           = 2,
		ProjLength      = 65,
		PropLength      = 40,
		Thrust          = 160000, -- in kg*in/s^2
		FuelConsumption = 0.03, -- in g/s/f
		StarterPercent  = 0.05,
		MaxAgilitySpeed = 40, -- in m/s
		DragCoef        = 0.01,
		FinMul          = 0.1,
		GLimit          = 14,
		TailFinMul      = 0.01,
		PenMul          = 0.35,
		FillerMul       = 12,
		LinerMassMul    = 1,
		Standoff        = 51,
		CanDelayLaunch  = true,
		ActualLength    = 155,
		ActualWidth     = 30
	},
	Preview = {
		Height = 80,
		FOV    = 60,
	},
})