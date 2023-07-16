require "utils"
require "commands"
require "cheats"
require "qol"
require "regen"

RegisterKeyBind(Key.DEL, function()
	--[[
	-- Class Name, Roll Chance (0-1)
	local LootTable =
	{
		-- Weapons
		["/Game/Blueprints/Inventory/Items/Weapons/WEAPON_MonkeyWrench/WEAPON_MonkeyWrench.WEAPON_MonkeyWrench"] = 1
	}
	
	local bags = FindAllOf("UInventoryBag_C")
	
	for _, bag in pairs(bags) do
		for class, chance in pairs(LootTable) do
			local item = nil

			bag:AddItem(item)
		end
	end
	--]]
end)
