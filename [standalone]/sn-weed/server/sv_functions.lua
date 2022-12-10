function Notify(src ,msg, type, time)
    TriggerClientEvent('QBCore:Notify', src, msg, type, time)
end

function CustomNotify(src, header, msg, icon, colour, length)
    TriggerClientEvent('qb-phone:client:CustomNotification', src,
            header or "NO HEADER",
            msg or "NO MSG",
            icon or "fas fa-phone-square",
            colour or "#e84118",
            length or 7500
        )
end

function cleanMoney(src)
    local Player = QBCore.Functions.GetPlayer(src)
    local chance = math.random(0 , 100)
    if chance < Config.BandsLaunderingChance then
        local bagAmount = exports[Config.Inventory]:GetItemByName(src, Config.BandsItem)
        if bagAmount then
            if bagAmount.amount > 0 then
                local random = math.random(Config.MinBandsToClean,Config.MaxBandsToClean)
                local giaBand = math.random(Config.MinBandsPayout, Config.MaxBandsPayout)
                if bagAmount.amount >= random then
                    Player.Functions.AddMoney('cash', random * giaBand)
                    Player.Functions.RemoveItem(Config.BandsItem, random)
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.BandsItem], "remove", random)
                else
                    Player.Functions.AddMoney('cash', bagAmount.amount * giaBand)
                    Player.Functions.RemoveItem(Config.BandsItem, bagAmount.amount)
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.BandsItem], "remove", bagAmount.amount)
                end
            end
        end
    end
    if chance < Config.RollsLaunderingChance then
        local bagAmount = exports[Config.Inventory]:GetItemByName(src, Config.RollsItem)
        if bagAmount then
            if bagAmount.amount > 0 then
                local random = math.random(Config.MinRollsToClean,Config.MaxRollsToClean)
                local giaRoll = math.random(Config.MinRollsToCleanPayout, Config.MaxRollsToCleanPayout)
                if bagAmount.amount >= random then
                    Player.Functions.AddMoney('cash', random * giaRoll)
                    Player.Functions.RemoveItem(Config.RollsItem, random)
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RollsItem], "remove", random)
                else
                    Player.Functions.AddMoney('cash', bagAmount.amount * giaRoll)
                    Player.Functions.RemoveItem(Config.RollsItem, bagAmount.amount)
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RollsItem], "remove", bagAmount.amount)
                end
            end
        end
    end
end