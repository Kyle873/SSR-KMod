function IsBool(value)
	return value == "true" or "1" and true or false
end

function GetHacker()
    return FindFirstOf("CON_Hacker_C")
end

function GetHackerPawn()
	return FindFirstOf("PAWN_Hacker_Implant_C")
end

function GetHackerInventory()
	return FindFirstOf("COMP_HackerInventory_C")
end

function GetBag()
	return HackerInventory.Bags[1]
end

function GetAttribs()
	return
	{
		Health = GetHackerPawn().COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_Health.ATTRIB_Health")),
		HealthMax = GetHackerPawn().COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_HealthMax.ATTRIB_HealthMax")),
		Energy = GetHackerPawn().COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_Energy.ATTRIB_Energy")),
		EnergyMax = GetHackerPawn().COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_MaxEnergy.ATTRIB_MaxEnergy")),
	}
end

function GetGISinglePlayer()
    return FindFirstOf("GI_SinglePlayer_C")
end

function GetGMSinglePlayer()
    return FindFirstOf("GM_SinglePlayer_C")
end
