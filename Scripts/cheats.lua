CheatsEnabled = false
CheatUpdateDelay = 10

if CheatsEnabled then
    LoopAsync(CheatUpdateDelay, function()
    end)
end

RegisterKeyBind(Key.NUM_ONE, function()
	GetHacker():RefillVitals()
end)

RegisterKeyBind(Key.NUM_TWO, function()
	GetGMSinglePlayer():CmdKillEnemies()
end)

RegisterKeyBind(Key.NUM_SEVEN, function()
	--[[
	local pickups = FindAllOf("PICKUP_Base_C")
	local pos = GetHackerPawn():K2_GetActorLocation()

	print("Pickups: " .. tostring(#pickups))
	for k, v in pairs(pos) do
		print(tostring("Player " .. k .. ": " .. v))
	end

	for _, pickup in pairs(pickups) do
		local t = {}
		local name = "Name" -- pickup:GetName()
		local class = "Class" -- pickup:GetClass()
		local loc = pickup:K2_GetActorLocation()
		local rot = pickup:GetRotation()

		print("================================================================================")
		print("Object " .. name .. " ()" .. class .. ")")
		print("Old Location:")
		for k, v in pairs(loc) do
			print(tostring(k .. ": " .. v))
		end
		local result = pickup:K2_SetActorLocation(pos, false, t, true)
		print("Teleport Result: " .. tostring(result))
		print("New Location:")
		for k, v in pairs(loc) do
			print(tostring(k .. ": " .. v))
		end
		print("================================================================================")
	end
	--]]
end)
