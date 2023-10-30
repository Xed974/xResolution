CreateThread(function()
    while true do
        Wait(cfgResolution.interval)
        if not GetIsWidescreen() then
            TriggerServerEvent("xResolution:kickPlayer")
        end
    end
end)