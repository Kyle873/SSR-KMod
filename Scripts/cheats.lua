CheatUpdateDelay = 10

RegisterKeyBind(Key.NUM_ONE, function()
    -- local patch = StaticConstructObject("PATCH_Medipatch_C", FindFirstOf("Engine").GameViewport)

    -- patch:K2_SetActorLocation(CONHacker:K2_GetActorLocation(), false, nil, true)
end)

LoopAsync(CheatUpdateDelay, function()
end)
