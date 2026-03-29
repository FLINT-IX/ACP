local ACF        = ACF
local Components = ACF.Classes.Components

	Components.RegisterItem("tac_gps", "GD-CPR", {
		Name        = "Tactical Missile Computer",
		Description = "A large computer for tactical scale GPS-based guided munitions.",
		Model       = "models/props_lab/reciever_cart.mdl",
		Mass        = 450,
		Inputs      = { "Coordinates (The vector to pass along to the linked rack) [VECTOR]" },
		Outputs     = {
			"Transmitting (Whether or not the transmitter is functioning)",
			"Jammed (Whether or not the transmitter is being countered)",
			"Current Coordinates (The vector currently being transmitted) [VECTOR]" },
		Preview = {
			FOV = 80,
		},
		CreateMenu = function(Data, Menu)
			Menu:AddLabel("Mass : " .. Data.Mass .. " kg")
			--Menu:AddLabel("This entity can be jammed.") -- Not yet

			ACF.SetClientData("PrimaryClass", "acf_computer")
		end,
		-- Serverside actions
		OnUpdate = function(Entity)
			Entity.IsTacGPS       = true
			Entity.IsJammed    = false
			Entity.InputCoords = Vector()
			Entity.Coordinates = Vector()
			Entity.Spread      = 0

			WireLib.TriggerOutput(Entity, "Current Coordinates", Vector())
			WireLib.TriggerOutput(Entity, "Transmitting", 0)
			WireLib.TriggerOutput(Entity, "Jammed", 0)
		end,
		OnLast = function(Entity)
			Entity.IsTacGPS       = nil
			Entity.IsJammed    = nil
			Entity.InputCoords = nil
			Entity.Coordinates = nil
			Entity.Spread      = nil
		end,
		OnOverlayTitle = function(Entity)
			if not Entity.IsTacGPS then return end
			if Entity.IsJammed then return "Jammed" end
			if Entity.InputCoords ~= Vector() then
				return "Transmitting"
			end
		end,
		OnOverlayBody = function(Entity, State)
			if not Entity.IsTacGPS then return end

			State:AddCoordinates("Coordinates", Entity.Coordinates:Unpack())
		end,
		OnDamaged = function(Entity)
			Entity.Spread = ACF.MaxDamageInaccuracy * (1 - math.Round(Entity.ACF.Health / Entity.ACF.MaxHealth, 2))
		end,
		OnEnabled = function(Entity)
			local Coordinates = Entity.Inputs.Coordinates

			if Coordinates and Coordinates.Path then
				Entity:TriggerInput("Coordinates", Coordinates.Value)
			end
		end,
		OnDisabled = function(Entity)
			Entity:TriggerInput("Coordinates", Vector())
		end,
		OnThink = function(Entity)
			if Entity.InputCoords == ZERO then return end

			local Spread = VectorRand(-Entity.Spread, Entity.Spread)

			Entity.Coordinates = Entity.InputCoords + Spread

			WireLib.TriggerOutput(Entity, "Current Coordinates", Entity.Coordinates)

			Entity:UpdateOverlay()
		end,
	})