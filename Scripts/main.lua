require "globals"
require "utils"
require "commands"
require "hotkeys"

ExecuteInGameThread(function()
	CONHacker = FindFirstOf("CON_Hacker_C")
	GMSinglePlayer = FindFirstOf("GM_SinglePlayer_C")
	HackerInventory = FindFirstOf("COMP_HackerInventory_C")
	PAWNHackerImplant = FindFirstOf("PAWN_Hacker_Implant_C")

	print(string.format("CONHacker: %s", tostring(CONHacker)))
	print(string.format("GMSinglePlayer: %s", tostring(GMSinglePlayer)))
	print(string.format("HackerInventory: %s", tostring(HackerInventory)))
	print(string.format("PAWNHackerImplant: %s", tostring(PAWNHackerImplant)))
	
	print("KMod Initialized!")
end)
