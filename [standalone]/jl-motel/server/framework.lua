lib.locale()
Core = nil
if Config.Framework == "esx" then
    Core = exports['es_extended']:getSharedObject()
elseif Config.Framework == "qb" then
    Core = exports['qb-core']:GetCoreObject()
end


--- Getting the offline player data
---@param identifier string
---@return table | nil
function GetOfflinePlayerData(identifier)
    if Config.Framework == "qbcore" then
        local success, xPlayer = pcall(Core.Player.GetOfflinePlayer, identifier)
        if not success then
            local result = MySQL.single.await('SELECT * FROM players WHERE citizenid = ?', { identifier })
            if result then
                local player = {}
                player.Offline = true
                player.PlayerData = {}
                player.PlayerData.charinfo = json.decode(result.charinfo)
                return player
            end
        else
            return xPlayer
        end
    elseif Config.Framework == "esx" then
        local result = MySQL.Sync.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
            ['@identifier'] = identifier
        })
        if result and result[1] then
            local player = {}
            player.Offline = true
            player.name = result[1].firstname .. ' ' .. result[1].lastname
            player.identifier = result[1].identifier
            return player
        end
    end
    return nil
end

RegisterNetEvent('jl-motel:server:logout', function()
    local src = source
    if not src then return end
    if Config.Framework == "esx" then
        TriggerEvent('esx:playerLogout', src)
    elseif Config.Framework == "qb" then
        Core.Player.Save(src)
        Core.Player.Logout(src)
        TriggerClientEvent('qb-multicharacter:client:chooseChar', src)
    end
end)
