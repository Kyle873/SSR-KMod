HealthRegenEnabled = true
HealthRegenDelay = 10000
EnergyRegenEnabled = true
EnerygRegenDelay = 2000

LoopAsync(HealthRegenDelay, function()
    if PAWNHackerImplant ~= nil and HealthRegenEnabled then
        local health = GetAttribs().Health:GetValue()
            
        GetAttribs().Health:SetBaseValue(health + 1)
    end
end)

LoopAsync(EnerygRegenDelay, function()
    if PAWNHackerImplant ~= nil and EnergyRegenEnabled then
        local energy = GetAttribs().Energy:GetValue()
        
        GetAttribs().Energy:SetBaseValue(energy + 1)
    end
end)
