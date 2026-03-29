local Racks = ACF.Classes.Racks

Racks.Register("1x VT-1", {
	Name		= "VT-1 Single Tube",
	Description	= "A single VT-1 round.",
	Model		= "models/missiles/arend/vt1_launcher.mdl",
	EntType		= "Pod",
	Caliber		= 152,
	Mass		= 11,
	Year		= 1970,
	Armor		= 2.5,
	Preview = {
		Height = 110,
		FOV    = 60,
	},

	ProtectMissile = true,
	HideMissile = false,

	MountPoints = {
		{ Name = "missile1", Position = Vector(0, 0, 0) }
	}
})

Racks.Register("1x Javelin", {
	Name		= "FGM-148 Javelin Launch Tube",
	Description	= "A launch tube designed for the javelin.",
	Model		= "models/mac/Javelin_straight.mdl",
	EntType		= "Pod",
	Caliber		= 152,
	Mass		= 11,
	Year		= 1970,
	Armor		= 2.5,
	Preview = {
		Height = 110,
		FOV    = 60,
	},

	ProtectMissile = true,
	HideMissile = true,

	MountPoints = {
		{ Name = "missile1", Position = Vector(0, 0, 0) }
	}
})

Racks.Register("1x 9m311", {
	Name		= "Single 9M311 Launch Tube",
	Description	= "A single 9M311 round.",
	Model		= "models/missiles/arend/9m311_tube.mdl",
	EntType		= "Pod",
	Caliber		= 76,
	Mass		= 11,
	Year		= 1982,
	Armor		= 2.5,
	Preview = {
		Height = 110,
		FOV    = 60,
	},

	ProtectMissile = true,
	HideMissile = true,

	MountPoints = {
		{ Name = "missile1", Position = Vector(0, 0, 0) }
	}
})

Racks.Register("1x 9m331", {
	Name		= "Single 9M331 Launch Rack",
	Description	= "A single 9M331 round.",
	Model		= "models/missiles/arend/9m331_launcher_4_v2.mdl",
	EntType		= "Pod",
	Caliber		= 235,
	Mass		= 11,
	Year		= 1986,
	Armor		= 2.5,
	Preview = {
		Height = 110,
		FOV    = 60,
	},

	ProtectMissile = true,
	HideMissile = false,

	MountPoints = {
		{ Name = "missile1", Position = Vector(-8.3,0,-6.2) }
	}
})