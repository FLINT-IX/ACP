-- GPS Terrain Avoidant guidance for ACF-3
-- Place this file in an ACF-loaded addon path:
-- lua/acf/entities/guidance/gps_terrain_avoidant.lua
--
-- This guidance inherits ACF's GPS-guided mode. The linked ACF GPS
-- transmitter is obtained through the guidance/rack computer interface.
-- ACF's stock GPS guidance reads the target from Computer.Coordinates.

local ACF = ACF
local Classes = ACF.Classes

Classes.DefineClass(
    "ACF.Missiles.Guidance.GPSTerrainAvoidant",
    "ACF.Missiles.Guidance.GPSGuided",
    function(CLASS, BASE)
        CLASS.Name = "GPS Terrain Avoidant"

        if CLIENT then
            CLASS.Description = "GPS guidance that follows terrain and avoids obstacles while navigating to a GPS transmitter's designated coordinates."
            return
        end

        local AheadDistance = 31500
        local TraceRadius = 100
        local GroundLookDown = 5000
        local GroundClearance = 100
        local HeightSmoothing = 20
        local LookAheadTime = 2.5

        local TraceFilter = function(Entity)
            -- Trace against the world only; ignore props and other entities.
            return Entity:GetClass() ~= "worldspawn"
        end

        function CLASS:OnLaunched(Missile)
            -- This performs ACF's normal GPS setup:
            -- obtains the linked rack computer, validates it, and captures
            -- Computer.Coordinates into self.TarPos.
            BASE.OnLaunched(self, Missile)

            self.Distance = nil
            self.TargetPos = nil
        end

        function CLASS:GetGuidance(Missile)
            local Target = self.TarPos
            if not isvector(Target) or Target == vector_origin then return end

            local Position = Missile.ACF_Position or Missile:GetPos()
            local Velocity = Missile.ACF_Velocity or vector_origin
            local Direction = Missile.CurDir or Velocity:GetNormalized()

            if Direction:LengthSqr() == 0 then
                Direction = (Target - Position):GetNormalized()
            else
                Direction = Direction:GetNormalized()
            end

            local Distance = Position:Distance(Target)
            local LastDistance = self.Distance or Distance
            local DeltaTime = math.max(Missile.ThinkDelay or engine.TickInterval(), engine.TickInterval())
            local ClosingSpeed = (LastDistance - Distance) / DeltaTime

            self.Distance = Distance

            local TimeLeft = 15
            if ClosingSpeed > 0.001 then
                TimeLeft = math.Clamp(Distance / ClosingSpeed, 0, 15)
            end

            local Difference = (Target - Position):GetNormalized()
            local HorizontalDirection = Vector(Difference.x, Difference.y, 0):GetNormalized()

            if HorizontalDirection:LengthSqr() == 0 then
                HorizontalDirection = Direction
            end

            -- Check for terrain/obstacles in the missile's projected path.
            local ForwardTrace = {
                start = Position,
                endpos = Position + Velocity * LookAheadTime,
                filter = TraceFilter,
                mins = Vector(-TraceRadius, -TraceRadius, -TraceRadius),
                maxs = Vector(TraceRadius, TraceRadius, TraceRadius),
                mask = bit.bor(MASK_WATER, CONTENTS_SOLID)
            }

            local ForwardResult = util.TraceHull(ForwardTrace)
            local Climb = 0

            if ForwardResult.Hit and not ForwardResult.HitSky then
                Climb = 3
            end

            -- Find the terrain height directly below the missile.
            ForwardTrace.start = Position + Vector(0, 0, 50)
            ForwardTrace.endpos = Position + Vector(0, 0, -GroundLookDown)
            ForwardTrace.mins = vector_origin
            ForwardTrace.maxs = vector_origin

            local GroundResult = util.TraceHull(ForwardTrace)
            local TerrainHeight = Position.z

            if GroundResult.Hit then
                TerrainHeight = GroundResult.HitPos.z + GroundClearance
            end

            if TimeLeft > 1.5 and Difference.z > -0.6 then
                if Climb > 0 then
                    self.TargetPos = Position
                        + Difference * AheadDistance
                        + Vector(0, 0, Climb * AheadDistance + 150)
                else
                    local HeightOffset = math.Clamp(
                        (TerrainHeight - Position.z) * HeightSmoothing,
                        -AheadDistance,
                        AheadDistance
                    )

                    self.TargetPos = Position
                        + HorizontalDirection * AheadDistance
                        + Vector(0, 0, HeightOffset)
                end
            else
                self.TargetPos = Target
            end

            return {
                TargetPos = self.TargetPos
            }
        end
    end
)
