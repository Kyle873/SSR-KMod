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
	GISinglePlayer:ToggleDebugCamera()
	
	return true
end)

RegisterConsoleCommandGlobalHandler("GrantItem", function(FullCommand, Parameters, OutputDevice)
	-- TODO: Figure this shit out, what does it want to be passed exactly?
	CONHacker:GrantItem(Parameters[1])
	
	return true
end)

RegisterConsoleCommandGlobalHandler("SpawnObject", function(FullCommand, Parameters, OutputDevice)
	local obj = StaticFindObject(Parameters[1])
	
	if obj:IsValid() then
		local pos = PAWNHackerImplant:K2_GetActorLocation()
		local rot = { X = 0, Y = 0, Z = 0, W = 0 }
		
		CONHacker:GetWorld():SpawnActor(obj, pos, rot)
	else
		print("Could not find a UObject for " .. Parameters[1])
	end
	
	return true
end)

RegisterConsoleCommandGlobalHandler("RevealMap", function(FullCommand, Parameters, OutputDevice)
	CONHacker:RevealMap()
	
	return true
end)

RegisterConsoleCommandGlobalHandler("RefillVitals", function(FullCommand, Parameters, OutputDevice)
	CONHacker:RefillVitals()
	
	return true
end)

RegisterConsoleCommandGlobalHandler("SetDetectable", function(FullCommand, Parameters, OutputDevice)
	CONHacker:SetDetectable(IsBool(Parameters[1]))
	
	return true
end)

RegisterConsoleCommandGlobalHandler("SetGodMode", function(FullCommand, Parameters, OutputDevice)
	CONHacker:SetGodMode(IsBool(Parameters[1]))
	
	return true
end)

RegisterConsoleCommandGlobalHandler("TeleportToTerminalByIndex", function(FullCommand, Parameters, OutputDevice)
	CONHacker:TeleportToTerminalByIndex(Parameters[1])
	
	return true
end)

RegisterConsoleCommandGlobalHandler("TeleportToElevatorByIndex", function(FullCommand, Parameters, OutputDevice)
	CONHacker:TeleportToElevatorByIndex(Parameters[1])
	
	return true
end)

RegisterConsoleCommandGlobalHandler("TeleportToLocation", function(FullCommand, Parameters, OutputDevice)
	CONHacker:TeleportToLocation(Parameters[1], Parameters[2], Parameters[3])
	
	return true
end)

RegisterConsoleCommandGlobalHandler("DestroyComputerNodes", function(FullCommand, Parameters, OutputDevice)
	GMSinglePlayer:CmdDestroyComputerNodes()
	
	return true
end)

RegisterConsoleCommandGlobalHandler("KillEnemies", function(FullCommand, Parameters, OutputDevice)
	GMSinglePlayer:CmdKillEnemies()
	
	return true
end)

RegisterConsoleCommandGlobalHandler("KillCameras", function(FullCommand, Parameters, OutputDevice)
	GMSinglePlayer:CmdKillCameras()
	
	return true
end)

RegisterConsoleCommandGlobalHandler("SetCombatIntensity", function(FullCommand, Parameters, OutputDevice)
	GISinglePlayer:SetCurrentCombatIntensity(tonumber(Parameters[1]))	
	
	return true
end)
