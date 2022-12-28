RegisterNetEvent('qb-goldheist:ps-ui:start', function ()
    -- This is for the minigame Part you change it to your likings
    exports['ps-ui']:Circle(function(success)
        if success then
            TriggerEvent('qb-goldheist:start:heist')
        else
            TriggerEvent('qb-goldheist:fail:heist')
        end
    end, 2, 20)
end)