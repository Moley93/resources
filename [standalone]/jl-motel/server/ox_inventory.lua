AddEventHandler('onServerResourceStart', function(resname)
    if resname == "ox_inventory" or resname == GetCurrentResourceName() then
        if GetResourceState('ox_inventory') == "started" then
            for _, v in pairs(Config.Motel) do
                for k2, v2 in pairs(v.motel) do
                    local data = {
                        id = k2,
                        label = v2.label,
                        slots = 50,
                        weight = 100000,
                    }
                    exports['ox_inventory']:RegisterStash(data.id, data.label, data.slots, data.weight)
                end
            end
        end
    end
end)
