local Missiles = ACF.Classes.Missiles

Missiles.Register("TAC", {
	Name		= "Tactical Weapons",
	Description	= "Specialized weapons that destroy a variety of targets at extreme ranges.",
	Sound		= "acf_missiles/missiles/missile_rocket.mp3",
	Effect		= "Rocket Motor ATGM",
	Spread		= 1,
	Blacklist	= { "AP", "APHE", "HP", "FL", "SM" },
	LimitConVar = {
		Name = "_acfm_tac",
		Amount = 8,
		Text = "Maximum number of Tactical missiles that can be loaded at once. Differentiates from the acf_rack limit."
	}
})

Missiles.RegisterItem("3M-54 Kalibr", "TAC", {
	Name		= "3M-54 Kalibr",
	Description	= "Russia's cruise missile. Fast and long range. This massive missile can easily remove entire regions. Cannot be updated after it has launched.",
	Model		= "models/macc/Kalibr.mdl",
	Length		= 250 * 2.53,
	Caliber		= 533,
	Mass		= 2300,
	Year		= 1983,
	ReloadTime	= 120,
	ExhaustPos  = Vector(-29),
	Racks		= { ["1xRK"] = true },
	Guidance	= { Dumb = true, ["Tactical GPS Guided"] = true},
	Navigation  = "PN",
	Fuzes		= { Contact = true },
	ViewCone	= 40,
	SeekCone	= 10,
	Agility		= 0.065,
	ArmDelay	= 0.5,
	Round = {
		Model           = "models/macc/Kalibr.mdl",
		RackModel       = "models/macc/Kalibr_folded.mdl",
		MaxLength       = 220,
		Armor           = 50,
		ProjLength      = 50,
		PropLength      = 100,
		Thrust          = 170000, -- in kg*in/s^2
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
	},
	Preview = {
		Height = 90,
		FOV    = 60,
	},
})

Missiles.RegisterItem("BGM-109 Tomahawk", "TAC", {
	Name		= "BGM-109 Tomahawk",
	Description	= "The gold standard of cruise missiles. Subsonic and long range. Though slow this ordinance has extreme range and good maneuverability. Good for removing distant targets.",
	Model		= "models/macc/Tomahawk.mdl",
	Length		= 250 * 2.53,
	Caliber		= 518,
	Mass		= 1600,
	Year		= 1983,
	ReloadTime	= 120,
	ExhaustPos  = Vector(-29),
	Racks		= { ["1xRK"] = true },
	Guidance	= { Dumb = true, ["Tactical GPS Guided"] = true},
	Navigation  = "PN",
	Fuzes		= { Contact = true },
	ViewCone	= 30,
	SeekCone	= 5,
	Agility		= 0.075,
	ArmDelay	= 0.5,
	Round = {
		Model           = "models/macc/Tomahawk.mdl",
		RackModel       = "models/macc/Tomahawk_Folded.mdl",
		MaxLength       = 250 * 2.53,
		Armor           = 30,
		ProjLength      = 35,
		PropLength      = 100,
		Thrust          = 170000, -- in kg*in/s^2
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
		ActualLength    = 240,
		ActualWidth     = 27.5
	},
	Preview = {
		Height = 90,
		FOV    = 60,
	},
})


Missiles.RegisterItem("AGM-84 Harpoon", "TAC", {
	Name		= "AGM-84 Harpoon",
	Description	= "Versatile subsonic anti ship missile. Though somewhat sluggish packs a wallop.",
	Model		= "models/missiles/1xagm84.mdl",
	Length		= 205 * 2.53,
	Caliber		= 343,
	Mass		= 690,
	Year		= 1977,
	ReloadTime	= 9,
	ExhaustPos  = Vector(-29),
	Racks		= { ["1xRK"] = true, ["2xRK"] = true},
	Guidance	= { Dumb = true, ["Semi-Active Radar"] = true },
	Navigation  = "PN",
	Fuzes		= { Contact = true },
	ViewCone	= 40,
	SeekCone	= 10,
	Agility		= 0.001,
	ArmDelay	= 0.5,
	Round = {
		Model           = "models/missiles/1xagm84.mdl",
		RackModel       = "models/missiles/1xagm84.mdl",
		MaxLength       = 220,
		Armor           = 5,
		ProjLength      = 35,
		PropLength      = 15,
		Thrust          = 80000, -- in kg*in/s^2
		FuelConsumption = 0.03, -- in g/s/f
		StarterPercent  = 0.08,
		MaxAgilitySpeed = 40, -- in m/s
		DragCoef        = 0.5,
		FinMul          = 0.7,
		GLimit          = 14,
		TailFinMul      = 0.01,
		PenMul          = 1,
		FillerMul       = 3,
		LinerMassMul    = 1,
		Standoff        = 51,
		CanDelayLaunch  = true,
		ActualLength    = 150,
		ActualWidth     = 15
	},
	Preview = {
		Height = 90,
		FOV    = 60,
	},
})

Missiles.RegisterItem("Storm Shadow", "TAC", {
	Name		= "SCALP-EG Storm Shadow",
	Description	= "The stormshadow is a low observability, turbojet driven cruise missile. Though slow this ordinance has extreme range, good maneuverability, staying time. And will obliterate anything it touches.",
	Model		= "models/macc/Storm_Shadow_Open.mdl",
	Length		= 205 * 2.53,
	Caliber		= 480,
	Mass		= 1300,
	Year		= 2003,
	ReloadTime	= 12,
	ExhaustPos  = Vector(-29),
	Racks		= { ["1xRK"] = true },
	Guidance	= { Dumb = true, ["Tactical GPS Guided"] = true},
	Navigation  = "PN",
	Fuzes		= { Contact = true },
	ViewCone	= 40,
	SeekCone	= 10,
	Agility		= 0.0008,
	ArmDelay	= 0.5,
	Round = {
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
	},
	Preview = {
		Height = 90,
		FOV    = 60,
	},
})