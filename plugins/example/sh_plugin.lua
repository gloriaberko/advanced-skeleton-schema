local PLUGIN = PLUGIN

-- Sets the name for this plugin
PLUGIN.name = "Example Plugin"
-- The one who created this plugin
PLUGIN.author = "Zoephix"
-- A description to explain what the plugin does,
-- it would show up in the 'plugins' tab in the F1 'Help' menu if you did do this.
PLUGIN.desc = "Adds a shared function to check whether the player is in observer."
-- If you didn't put anything or didn't have it for the PLUGIN.name/author/desc,
-- it would show as 'Annonymous' for the name of the Author.

local playerMeta = FindMetaTable("Player")

-- Returns whether a player is currently in observer
function playerMeta:isObserving()
	if self:GetMoveType() == MOVETYPE_NOCLIP and not self:InVehicle() then
		return true
	else
		return false
	end
end
