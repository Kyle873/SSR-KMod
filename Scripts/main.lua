-- Lib
require "globals"
require "utils"

-- Modules
require "commands"
require "hotkeys"

LoopAsync(1000, function()
	CONHacker = FindFirstOf("CON_Hacker_C")
	GMSinglePlayer = FindFirstOf("GM_SinglePlayer_C")
	HackerInventory = FindFirstOf("COMP_HackerInventory_C")
	PAWNHackerImplant = FindFirstOf("PAWN_Hacker_Implant_C")
end)

-- Features
require "qol"
require "regen"
