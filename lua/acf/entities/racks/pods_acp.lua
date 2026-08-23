local Classes = ACF.Classes

Classes.DefineClass("ACF.Racks.VT1xPOD", "ACF.Racks.BaseRack", function(CLASS)
	CLASS.Name		= "VT-1 Single Tube"
	CLASS.Description	= "A single VT-1 round."
	CLASS.Model		= "models/missiles/arend/vt1_launcher.mdl"
	CLASS.EntType		= "Pod"
	CLASS.Caliber		= 152
	CLASS.Mass		= 85
	CLASS.Year		= 1970
	CLASS.Armor		= 2.5
	CLASS.Preview = {
		Height = 110,
		FOV    = 60,
	}

	CLASS.ProtectMissile = true
	CLASS.HideMissile = false

	CLASS.MountPoints = {
		{ Name = "missile1", Position = Vector(0, 0, 0) },
	}
end)

Classes.DefineClass("ACF.Racks.9m311xPOD", "ACF.Racks.BaseRack", function(CLASS)
	CLASS.Name		= "Single 9M311 Launch Tube"
	CLASS.Description	= "A single 9M311 round."
	CLASS.Model		= "models/missiles/arend/9m311_tube.mdl"
	CLASS.EntType		= "Pod"
	CLASS.Caliber		= 76
	CLASS.Mass		= 57
	CLASS.Year		= 1982
	CLASS.Armor		= 2.5
	CLASS.Preview = {
		Height = 110,
		FOV    = 60,
	}

	CLASS.ProtectMissile = true
	CLASS.HideMissile = false

	CLASS.MountPoints = {
		{ Name = "missile1", Position = Vector(0, 0, 0) },
	}
end)

Classes.DefineClass("ACF.Racks.9m331xPOD", "ACF.Racks.BaseRack", function(CLASS)
	CLASS.Name		= "Single 9M331 Launch Rack"
	CLASS.Description	= "A single 9M331 round."
	CLASS.Model		= "models/missiles/arend/9m331_launcher_4_v2.mdl"
	CLASS.EntType		= "Pod"
	CLASS.Caliber		= 235
	CLASS.Mass		= 35
	CLASS.Year		= 1986
	CLASS.Armor		= 2.5
	CLASS.Preview = {
		Height = 110,
		FOV    = 60,
	}

	CLASS.ProtectMissile = false
	CLASS.HideMissile = false

	CLASS.MountPoints = {
		{ Name = "missile1", Position = Vector(-8.30,-6.2) },
	}
end)