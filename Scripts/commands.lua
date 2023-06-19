RegisterConsoleCommandGlobalHandler("GrantItem", function(FullCommand, Parameters, OutputDevice)
	GMSinglePlayer:CmdGrantItem(Parameters[1])
	
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
