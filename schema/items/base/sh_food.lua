-- Name of the base
ITEM.name = "Food Base"
-- Name / Model path of the item model
ITEM.model = "models/Gibs/HGIBS.mdl"
-- Item description
ITEM.desc = "Tasty food, or tasy drink."
-- used by the gridinv plugin, this allows to modify the size of the item within the inventory
ITEM.width = 1
-- used by the gridinv plugin, this allows to modify the size of the item within the inventory
ITEM.height = 1
ITEM.category = "Food"
-- How much health it gives to the player,
-- when they eat it.
ITEM.health = 0
ITEM.action = "consume"

--[[-------------------------------------------------------------------------
Purpose: Create a function that these items will use. ITEM.health and ITEM.action
were parameters that I created.
---------------------------------------------------------------------------]]
ITEM.functions.use = {
    -- Name of the function, if this doesn't exist it'll use "use"
    name = "Consume",
    -- Tip when hovering over the function
    tip = "Consume the item.",
    -- Icon for the function
    icon = "icon16/cup.png",
    onRun = function(item, data)
        -- Play a cool sound
        item.player:EmitSound("SOUND PATH")
        -- Give health to player when they consume
        item.player:SetHealth(item.player:Health() + item.health)
    end
}