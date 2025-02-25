--[[-------------------------------------------------------------------------
Purpose: This is where you set up everything for your schema. Title, description,
author, currency, custom flags.
---------------------------------------------------------------------------]]

-- Schema Info
SCHEMA.name = "Skeleton"
SCHEMA.author = "berko"
SCHEMA.desc = "A template project to kickstart an NutScript Schema development."

-- Set the currency,
-- symbol, singular tense of currency, plural tense of currency.
nut.currency.set("$", "Dollar", "Dollars")

-- Custom flag, flags are used to give access to certain restrictions,
-- the list of flags can be found in the F1 menu in 'Help' tab.
nut.flag.add("C", "Gives access to the custom class.")

-- Additional files that aren't auto-included should be included here using nut.util.include,
-- while doing so make sure that the file has the proper naming scheme.

-- The prefixes in front indicate how the file should be loaded.

-- i.e
-- "cl_example.lua" for clientside files
-- "sh_example.lua" for shared files
-- "sv_example.lua" for serverside files

-- Include Additional Clientside Files

-- Include Additional Shared Files

-- Include Additional Serverside Files
nut.util.include("sv_hooks.lua")
