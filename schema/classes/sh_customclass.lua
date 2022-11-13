-- Set the display name for this class
CLASS.name = "Custom Class"
-- Set the description for this class
CLASS.desc = "Custom Class tutorial for the class."
-- Which faction this class belongs to
CLASS.faction = FACTION_CUSTOMFACTION
-- A function to return whether the player can use the class
function CLASS:onCanBe(client)
	-- Check if the client has the required flags for this faction,
	-- you can change the flags if you go into your 'sh_schema.lua' file.
	if (client:getChar():hasFlags("C")) then
		return true
	end
end
-- Set a unique identifier for this class,
-- this is used when deriving the class from the player.
CLASS_CUSTOM = CLASS.index
