function IsBool(value)
	return value == "true" or "1" and true or false
end

function GetAttribs()
	return
	{
		Health = PAWNHackerImplant.COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_Health.ATTRIB_Health")),
		HealthMax = PAWNHackerImplant.COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_HealthMax.ATTRIB_HealthMax")),
		Energy = PAWNHackerImplant.COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_Energy.ATTRIB_Energy")),
		EnergyMax = PAWNHackerImplant.COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_MaxEnergy.ATTRIB_MaxEnergy")),
	}
end

function GetBag()
	return HackerInventory.Bags[1]
end
