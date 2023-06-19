function IsBool(value)
	return value == "true" or "1" and true or false
end

function GetAttribs()
	return
	{
		Health = PAWNHackerImplant.COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_Health.ATTRIB_Health")),
		HealthMin = PAWNHackerImplant.COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_HealthMin.ATTRIB_HealthMin")),
		HealthMax = PAWNHackerImplant.COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_HealthMax.ATTRIB_HealthMax")),
		Energy = PAWNHackerImplant.COMP_AttribManager.AttribHandler:GetAttribInstance(StaticFindObject("/Game/Blueprints/Attributes/ATTRIB_Energy.ATTRIB_Energy")),
	}
end

function GetBag()
	return HackerInventory.Bags[1]
end
