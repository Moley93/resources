Core = nil
PlayerData = {}
IsPlayerLoaded = false
if Config.Framework == "esx" then
    Core = exports['es_extended']:getSharedObject()
elseif Config.Framework == "qb" then
    Core = exports['qb-core']:GetCoreObject()
end

---@diagnostic disable-next-line: param-type-mismatch
AddStateBagChangeHandler('isLoggedIn', nil, function(_bagName, _key, value, _reserved, _replicated)
    if value then
        PlayerData = Core.Functions.GetPlayerData()
        GetExpireTime()
    else
        PlayerUnload()
        table.wipe(PlayerData)
    end
    IsPlayerLoaded = value
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
    PlayerData = val
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
    Wait(100)
    PlayerLoaded()
    GetExpireTime()
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
    PlayerData = {}
    CreateThread(function()
        Wait(500)
        PlayerUnload()
    end)
end)

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(job)
    PlayerData.job = job
end)

AddEventHandler('onResourceStart', function(resource)
    if GetCurrentResourceName() ~= resource or (Config.Framework == "qb" and not LocalPlayer.state.isLoggedIn) or
        (Config.Framework == "esx" and not Core.IsPlayerLoaded) then return end
    if Config.Framework == "qb" then
        PlayerData = Core.Functions.GetPlayerData()
    elseif Config.Framework == "esx" then
        PlayerData = Core.GetPlayerData()
    end
    IsPlayerLoaded = true
end)

CreateThread(function()
    if GetResourceState('ox_inventory'):match("start") then
        while not IsPlayerLoaded do
            Wait(1000)
        end
        exports.ox_inventory:displayMetadata({
           motel_label = "Motel: ",
           room_label = "Room: ",
        })
    end
end)
