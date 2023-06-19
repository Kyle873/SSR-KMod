function IsBool(value)
	return value == "true" or "1" and true or false
end

function GetBag()
	return HackerInventory.Bags[1]
end
