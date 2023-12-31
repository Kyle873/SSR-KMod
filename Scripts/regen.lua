HealthRegenEnabled = false
HealthRegenDelay = 10000
EnergyRegenEnabled = false
EnerygRegenDelay = 2000

LoopAsync(HealthRegenDelay, function()
    if HealthRegenEnabled and GetHackerPawn():IsValid() then
        local health = GetAttribs().Health:GetValue()
            
        GetAttribs().Health:SetBaseValue(health + 1)
    end
end)

LoopAsync(EnerygRegenDelay, function()
    if EnergyRegenEnabled and GetHackerPawn():IsValid() then
        local energy = GetAttribs().Energy:GetValue()
        
        GetAttribs().Energy:SetBaseValue(energy + 1)
    end
end)
