AddEventHandler('cd_gunrange:ToggleNUIFocus', function()
    Wait(100)
    NUI_status = true
    while NUI_status do
        Wait(5)
        SetNuiFocus(NUI_status, NUI_status)
    end
    SetNuiFocus(false, false)
end)

function GetClosestShootingRange()
    local playerCoords = GetEntityCoords(PlayerPedId())
    local closestCoords = -100.0
    local range = 0
    if closestRange == nil then
        return
    end
    for i=1,#Config.gunRangeLocation[closestRange],1 do
        if #(Config.gunRangeLocation[closestRange][i].booth.left - playerCoords) < 1.0 and  #(Config.gunRangeLocation[closestRange][i].booth.right - playerCoords) < 1.0 then
            if closestCoords < #(Config.gunRangeLocation[closestRange][i].booth.left - playerCoords) - #(Config.gunRangeLocation[closestRange][i].booth.right - playerCoords) then
                closestCoords = #(Config.gunRangeLocation[closestRange][i].booth.left - playerCoords) - #(Config.gunRangeLocation[closestRange][i].booth.right - playerCoords)
                range = i
            end
        end
    end
    return range
end