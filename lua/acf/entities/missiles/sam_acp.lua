local Missiles = ACF.Classes.Missiles

Missiles.RegisterItem("9M317M", "SAM", {
	Name		= "9M317M Buk M3",
	Description	= "An upgraded navalized version of the soviet era BUK missile.",
	Model		= "models/macc/9M317ME_open.mdl",
	Length		= 415,
	Caliber		= 380,
	Mass		= 581,
	Year		= 2016,
	ReloadTime	= 90,
	ExhaustPos  = Vector(-60),
	Racks		= { ["1xRK"] = true, ["2xRK"] = true },
	Guidance	= { Dumb = true, ["Semi-Active Radar"] = true, ["Active Radar"] = true },
	Navigation  = "APN",
	Fuzes		= { Contact = true, Radio = true },
	SeekCone	= 10,
	ViewCone	= 20,
	Agility		= 0.175,
	ArmDelay	= 0.5,
	Round = {
		Model           = "models/macc/9M317ME_open.mdl",
		RackModel       = "models/macc/9M317ME_folded.mdl",
		MaxLength       = 400,
		Armor           = 5,
		ProjLength      = 20,
		PropLength      = 175,
		Thrust          = 1000000, -- in kg*in/s^2
		FuelConsumption = 0.04, -- in g/s/f
		StarterPercent  = 0.05,
		MaxAgilitySpeed = 300, -- in m/s
		DragCoef        = 0.03,
		FinMul          = 0.3,
		GLimit          = 19,
		TailFinMul      = 0.001,
		CanDelayLaunch  = true,
		ActualLength    = 180,
		ActualWidth     = 20
	},
	Preview = {
		Height = 100,
		FOV    = 60,
	},
})

Missiles.RegisterItem("MIM-146", "ATGM", {
	Name		= "MIM-146 ADATS",
	Description	= "Dual purpose short range suface to air and anti tank missile.",
	Model		= "models/missiles/mim146.mdl",
	Length		= 92 * 2.53,
	Caliber		= 152,
	Mass		= 51,
	Year		= 1989,
	ReloadTime	= 30,
	ExhaustPos  = Vector(-44),
	Racks		= { ["1x VT-1"] = true },
	Guidance	= { Dumb = true, Infrared = true, ["Laser"] = true, ["Semiactive"] = true },
	Navigation  = "APN",
	Fuzes		= { Contact = true },
	SeekCone	= 20,
	ViewCone	= 40,
	Agility		= 0.003,
	ArmDelay	= 0.35,
	Round = {
		Model           = "models/missiles/mim146.mdl",
		RackModel       = "models/missiles/arend/vt1_folded.mdl",
		IgnoreRackModel = true, -- Ignore the rack model when determining the size of the round for ammo crates
		MaxLength       = 180,
		Armor           = 2,
		ProjLength      = 20,
		PropLength      = 100,
		Thrust          = 100000, -- in kg*in/s^2
		FuelConsumption = 0.018, -- in g/s/f
		StarterPercent  = 0.1,
		MaxAgilitySpeed = 300, -- in m/s
		DragCoef        = 0.003,
		FinMul          = 0.04,
		GLimit          = 20,
		TailFinMul      = 0.001,
		PenMul          = 1,
		LinerMassMul    = 1,
		ActualLength    = 86,
		ActualWidth     = 8
	},
	Preview = {
		Height = 60,
		FOV    = 60,
	},
})

Missiles.RegisterItem("9M311", "SAM", {
	Name		= "9M311 Grison",
	Description	= "Soviet era two stage surface to air missile commonly mounted on the Tunguska SPAAGs.",
	Model		= "models/missiles/arend/9m311_unfolded.mdl",
	Length		= 248,
	Caliber		= 76,
	Mass		= 71,
	Year		= 1960,
	ReloadTime	= 45,
	ExhaustPos  = Vector(-44),
	Racks		= { ["1x 9m311"] = true },
	Guidance	= { Dumb = true, Infrared = true, ["Semiactive"] = true },
	Navigation  = "APN",
	Fuzes		= { Contact = true, Radio = true },
	SeekCone	= 20,
	ViewCone	= 40,
	Agility		= 0.0015,
	ArmDelay	= 0.2,
	Round = {
		Model           = "models/missiles/arend/9m311_unfolded.mdl",
		RackModel       = "models/missiles/arend/9m311_folded.mdl",
		IgnoreRackModel = true, -- Ignore the rack model when determining the size of the round for ammo crates
		MaxLength       = 248,
		Armor           = 2,
		ProjLength      = 100,
		PropLength      = 140,
		Thrust          = 800000, -- in kg*in/s^2
		FuelConsumption = 0.01, -- in g/s/f
		StarterPercent  = 0.15,
		MaxAgilitySpeed = 300, -- in m/s
		DragCoef        = 0.003,
		FinMul          = 0.04,
		GLimit          = 20,
		TailFinMul      = 0.001,
		ActualLength    = 105,
		ActualWidth     = 9
	},
	Preview = {
		Height = 60,
		FOV    = 60,
	},
})

Missiles.RegisterItem("9M331", "SAM", {
	Name		= "9M331 Gauntlet",
	Description	= "Soviet era surface to air missile commonly found on Tor Systems.",
	Model		= "models/missiles/arend/9m331_folded.mdl",
	Length		= 290,
	Caliber		= 235,
	Mass		= 167,
	Year		= 1986,
	ReloadTime	= 45,
	ExhaustPos  = Vector(-44),
	Racks		= { ["1x 9m331"] = true },
	Guidance	= { Dumb = true, Infrared = true, ["Semiactive"] = true, ["Anti-missile"] = true },
	Navigation  = "APN",
	Fuzes		= { Contact = true, Radio = true },
	SeekCone	= 20,
	ViewCone	= 40,
	Agility		= 0.001,
	ArmDelay	= 0.2,
	Round = {
		Model           = "models/missiles/arend/9m331_unfolded.mdl",
		RackModel       = "models/missiles/arend/9m331_folded.mdl",
		IgnoreRackModel = true, -- Ignore the rack model when determining the size of the round for ammo crates
		MaxLength       = 290,
		Armor           = 5,
		ProjLength      = 80,
		PropLength      = 75,
		Thrust          = 600000, -- in kg*in/s^2
		FuelConsumption = 0.03, -- in g/s/f
		StarterPercent  = 0.1,
		MaxAgilitySpeed = 300, -- in m/s
		DragCoef        = 0.003,
		FinMul          = 0.04,
		GLimit          = 20,
		TailFinMul      = 0.001,
		ActualLength    = 125,
		ActualWidth     = 12.5
	},
	Preview = {
		Height = 60,
		FOV    = 60,
	},
})