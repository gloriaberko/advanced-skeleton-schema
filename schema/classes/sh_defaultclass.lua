-- Set the display name for this class
CLASS.name = "Default Class"
-- Set the description for this class
CLASS.desc = "Default Class for the class."
-- Which faction this class belongs to
CLASS.faction = FACTION_DEFAULT
-- A function to return whether the player can use the class
function CLASS:onCanBe(client)
-- Set a unique identifier for this class,
-- this is used when deriving the class from the player.
CLASS_DEFAULT = CLASS.index
