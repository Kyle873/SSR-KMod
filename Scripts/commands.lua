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

RegisterConsoleCommandGlobalHandler("GrantItem", function(FullCommand, Parameters, OutputDevice)
	CONHacker:GrantItem(Parameters[1])
	
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
