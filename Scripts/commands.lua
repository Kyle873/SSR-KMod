RegisterConsoleCommandGlobalHandler("SetHealth", function(FullCommand, Parameters, OutputDevice)
	GetAttribs().Health:SetBaseValue(tonumber(Parameters[1]))
	
	return true
end)

RegisterConsoleCommandGlobalHandler("SetHealthMax", function(FullCommand, Parameters, OutputDevice)
	GetAttribs().HealthMax:SetBaseValue(tonumber(Parameters[1]))
	
	return true
end)

RegisterConsoleCommandGlobalHandler("SetEnergy", function(FullCommand, Parameters, OutputDevice)
	GetAttribs().Energy:SetBaseValue(tonumber(Parameters[1]))
	
	return true
end)

RegisterConsoleCommandGlobalHandler("SetEnergyMax", function(FullCommand, Parameters, OutputDevice)
	GetAttribs().EnergyMax:SetBaseValue(tonumber(Parameters[1]))
	
	return true
end)

RegisterConsoleCommandGlobalHandler("SetItemSlotCount", function(FullCommand, Parameters, OutputDevice)
	local slot = tonumber(Parameters[1])
	local count = tonumber(Parameters[2])
	
	GetBag().ItemSlots[slot].Count = count
	
	return true
end)

RegisterConsoleCommandGlobalHandler("ToggleDebugCamera", function(FullCommand, Parameters, OutputDevice)
	GetGISinglePlayer():ToggleDebugCamera()
	
	return true
end)

RegisterConsoleCommandGlobalHandler("GrantItem", function(FullCommand, Parameters, OutputDevice)
	--[[
	local obj = StaticFindObject(Parameters[1])
	
	if obj:IsValid() then
		print(tostring(obj))
		local class = obj:GetClass()
		print(tostring(class))
		local item =
		{
			["ItemClass_3_01EE21D44E1DD8DA5C524AB06895108B"] = class,
			["Count_6_87A0BD234069F7B9A42C4580EC90AD3D"] = tonumber(Parameters[2]) or 1
		}
		local result = {}
		
		GetHackerInventory():GrantItem(item, result)
	else
		print("Could not find a UObject for " .. Parameters[1])
	end
	--]]

	return true
end)

RegisterConsoleCommandGlobalHandler("SpawnObject", function(FullCommand, Parameters, OutputDevice)
	LoadAsset(Parameters[1])
	
	local obj = StaticFindObject(Parameters[1])
	
	if obj:IsValid() then
		local hacker = FindFirstOf("ShockPlayerController")
		local pos = hacker:K2_GetPawn():K2_GetActorLocation()
		local rot = { X = 0, Y = 0, Z = 0, W = 0 }
		
		for i = 1, tonumber(Parameters[2]) or 1 do
			hacker:GetWorld():SpawnActor(obj, pos, rot)
		end
	else
		print("Could not find a UObject for " .. Parameters[1])
	end
	
	return true
end)

RegisterConsoleCommandGlobalHandler("RevealMap", function(FullCommand, Parameters, OutputDevice)
	GetHacker():RevealMap()
	
	return true
end)

RegisterConsoleCommandGlobalHandler("RefillVitals", function(FullCommand, Parameters, OutputDevice)
	GetHacker()RefillVitals()
	
	return true
end)

RegisterConsoleCommandGlobalHandler("SetDetectable", function(FullCommand, Parameters, OutputDevice)
	GetHacker():SetDetectable(IsBool(Parameters[1]))
	
	return true
end)

RegisterConsoleCommandGlobalHandler("SetGodMode", function(FullCommand, Parameters, OutputDevice)
	GetHacker():SetGodMode(IsBool(Parameters[1]))
	
	return true
end)

RegisterConsoleCommandGlobalHandler("TeleportToTerminalByIndex", function(FullCommand, Parameters, OutputDevice)
	GetHacker():TeleportToTerminalByIndex(Parameters[1])
	
	return true
end)

RegisterConsoleCommandGlobalHandler("TeleportToElevatorByIndex", function(FullCommand, Parameters, OutputDevice)
	GetHacker():TeleportToElevatorByIndex(Parameters[1])
	
	return true
end)

RegisterConsoleCommandGlobalHandler("TeleportToLocation", function(FullCommand, Parameters, OutputDevice)
	GetHacker():TeleportToLocation(Parameters[1], Parameters[2], Parameters[3])
	
	return true
end)

RegisterConsoleCommandGlobalHandler("MoveToFloor", function(FullCommand, Parameters, OutputDevice)
	-- TODO
	
	return true
end)

RegisterConsoleCommandGlobalHandler("SetDifficulty", function(FullCommand, Parameters, OutputDevice)
	GetGISinglePlayer():SetDifficultyValues(tonumber(Parameters[1]), tonumber(Parameters[2]), tonumber(Parameters[3]), tonumber(Parameters[4]))
	
	return true
end)

RegisterConsoleCommandGlobalHandler("DestroyComputerNodes", function(FullCommand, Parameters, OutputDevice)
	GetGMSinglePlayer():CmdDestroyComputerNodes()
	
	return true
end)

RegisterConsoleCommandGlobalHandler("KillEnemies", function(FullCommand, Parameters, OutputDevice)
	GetGMSinglePlayer():CmdKillEnemies()
	
	return true
end)

RegisterConsoleCommandGlobalHandler("KillCameras", function(FullCommand, Parameters, OutputDevice)
	GetGMSinglePlayer():CmdKillCameras()
	
	return true
end)

RegisterConsoleCommandGlobalHandler("SetCombatIntensity", function(FullCommand, Parameters, OutputDevice)
	GetGISinglePlayer():SetCurrentCombatIntensity(tonumber(Parameters[1]))	
	
	return true
end)
