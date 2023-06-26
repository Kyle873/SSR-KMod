function IsBool(value)
	return value == "true" or "1" and true or false
end

function PrintTable(result)
	for k, v in pairs(result) do
		print(tostring(k) .. ": " .. tostring(v))
	end
end

function GetHacker()
    local result = FindFirstOf("CON_Hacker_C")

	if result:IsValid() then
		return result
	else
		error("Could not find CON_Hacker_C!")
	end
end

function GetHackerPawn()
	local result =  FindFirstOf("PAWN_Hacker_Implant_C")
	
	if result:IsValid() then
		return result
	else
		error("Could not find PAWN_Hacker_Implant_C!")
	end
end

function GetHackerInventory()
	local result = FindFirstOf("COMP_HackerInventory_C")
	
	if result:IsValid() then
		return result
	else
		error("Could not find COMP_HackerInventory_C!")
	end
end

function GetBag()
	local result = GetHackerInventory().Bags[1]
	
	if result:IsValid() then
		return result
	else
		error("Could not get GetHackerInventory().Bags[1]!")
	end
end

function GetAttribs()
	if GetHackerPawn():IsValid() then
		return
		{
			Health = GetHackerPawn().COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_Health.ATTRIB_Health")),
			HealthMax = GetHackerPawn().COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_HealthMax.ATTRIB_HealthMax")),
			Energy = GetHackerPawn().COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_Energy.ATTRIB_Energy")),
			EnergyMax = GetHackerPawn().COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_MaxEnergy.ATTRIB_MaxEnergy")),
		}
	end
end

function GetGISinglePlayer()
    local result = FindFirstOf("GI_SinglePlayer_C")
	
	if result:IsValid() then
		return result
	else
		error("Could not find GI_SinglePlayer_C!")
	end
end

function GetGMSinglePlayer()
    local result = FindFirstOf("GM_SinglePlayer_C")
	
	if result:IsValid() then
		return result
	else
		error("Could not find GM_SinglePlayer_C!")
	end
end

function GetElevator()
	local result = FindFirstOf("ELEVATOR_Base_C")
	
	if result:IsValid() then
		return result
	else
		error("Could not find ELEVATOR_Base_C!")
	end
end
