QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-drivingschool:server:payTest', function(price, type)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local bankBalance = Player.PlayerData.money['bank']
	local cashBalance = Player.PlayerData.money['cash']	
	if bankBalance >= price then
		Player.Functions.RemoveMoney('bank', price, 'Pay the driving school test fee')
		TriggerClientEvent('qb-drivingschool:client:startTest', src, type)
	elseif cashBalance >= price then
		Player.Functions.RemoveMoney('cash', price, 'Pay the driving school test fee')
		TriggerClientEvent('qb-drivingschool:client:startTest', src, type)
	else
		TriggerClientEvent('QBCore:Notify', src, Lang:t('error.no_money'), 'error')
	end
end)

RegisterNetEvent('qb-drivingschool:server:addLicense', function(type)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local _type = ''

	if type ~= 'N' then
		if Player.PlayerData.metadata['licences'].A then
			_type = _type .. '- A '
		end
		if Player.PlayerData.metadata['licences'].B then
			_type = _type .. '- B '
		end
		if Player.PlayerData.metadata['licences'].C then
			_type = _type .. '- C '
		end
		
		local slots = exports['qb-inventory']:GetSlotsByItem(Player.PlayerData.items, 'driver_license')
		local items = 0
		for _, slot in pairs(slots) do
			if slot then
				items = items + 1
				local amount = Player.PlayerData.items[slot].amount
				Player.Functions.RemoveItem('driver_license', amount, slot)
			end
		end
		if items ~= 0 then
			TriggerClientEvent('QBCore:Notify', src, Lang:t('success.card_exchanged'), 'success', 7500)
		else
			if _type ~= '' then
				TriggerClientEvent('QBCore:Notify', src, Lang:t('error.lost_drivingcard'), 'error', 2500)
				Player.Functions.RemoveMoney('bank', 250)
			end
		end
	end
	
    local info = {}
	info.firstname = Player.PlayerData.charinfo.firstname
	info.lastname = Player.PlayerData.charinfo.lastname
	info.birthdate = Player.PlayerData.charinfo.birthdate
	info.type = _type .. type
	if type ~= 'N' then
		Player.Functions.AddItem('driver_license', 1, nil, info)
	end
    local licenses = {
		['N'] = Player.PlayerData.metadata['licences'].N,
		['A'] = Player.PlayerData.metadata['licences'].A,
		['B'] = Player.PlayerData.metadata['licences'].B,
		['C'] = Player.PlayerData.metadata['licences'].C,
		['driver'] = Player.PlayerData.metadata['licences'].driver,
        ['business'] = Player.PlayerData.metadata['licences'].business,
        ['weapon'] = Player.PlayerData.metadata['licences'].weapon
	}
	if type == 'N' then
		licenses = {
			['N'] = true,
			['A'] = Player.PlayerData.metadata['licences'].A,
			['B'] = Player.PlayerData.metadata['licences'].B,
			['C'] = Player.PlayerData.metadata['licences'].C,
			['driver'] = Player.PlayerData.metadata['licences'].driver,
			['business'] = Player.PlayerData.metadata['licences'].business,
			['weapon'] = Player.PlayerData.metadata['licences'].weapon
		}
	elseif type == 'A' then
		licenses = {
			['N'] = Player.PlayerData.metadata['licences'].N,
			['A'] = true,
			['B'] = Player.PlayerData.metadata['licences'].B,
			['C'] = Player.PlayerData.metadata['licences'].C,
			['driver'] = Player.PlayerData.metadata['licences'].driver,
			['business'] = Player.PlayerData.metadata['licences'].business,
			['weapon'] = Player.PlayerData.metadata['licences'].weapon
		}
	elseif type == 'B' then
		licenses = {
			['N'] = Player.PlayerData.metadata['licences'].N,
			['A'] = Player.PlayerData.metadata['licences'].A,
			['B'] = true,
			['C'] = Player.PlayerData.metadata['licences'].C,
			['driver'] = Player.PlayerData.metadata['licences'].driver,
			['business'] = Player.PlayerData.metadata['licences'].business,
			['weapon'] = Player.PlayerData.metadata['licences'].weapon
		}
	elseif type == 'C' then
		licenses = {
			['N'] = Player.PlayerData.metadata['licences'].N,
			['A'] = Player.PlayerData.metadata['licences'].A,
			['B'] = Player.PlayerData.metadata['licences'].B,
			['C'] = true,
			['driver'] = Player.PlayerData.metadata['licences'].driver,
			['business'] = Player.PlayerData.metadata['licences'].business,
			['weapon'] = Player.PlayerData.metadata['licences'].weapon
		}
	end
    Player.Functions.SetMetaData('licences', licenses)
	if type ~= 'N' then
		TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['driver_license'], 'add')
	end
end)

RegisterNetEvent('qb-drivingschool:server:removeLicense', function(source, type)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local licenses = {
		['N'] = Player.PlayerData.metadata['licences'].N,
		['A'] = Player.PlayerData.metadata['licences'].A,
		['B'] = Player.PlayerData.metadata['licences'].B,
		['C'] = Player.PlayerData.metadata['licences'].C,
		['driver'] = Player.PlayerData.metadata['licences'].driver,
        ['business'] = Player.PlayerData.metadata['licences'].business,
        ['weapon'] = Player.PlayerData.metadata['licences'].weapon
	}
	if type == 'N' then
		licenses = {
			['N'] = false,
			['A'] = Player.PlayerData.metadata['licences'].A,
			['B'] = Player.PlayerData.metadata['licences'].B,
			['C'] = Player.PlayerData.metadata['licences'].C,
			['driver'] = Player.PlayerData.metadata['licences'].driver,
			['business'] = Player.PlayerData.metadata['licences'].business,
			['weapon'] = Player.PlayerData.metadata['licences'].weapon
		}
	elseif type == 'A' then
		licenses = {
			['N'] = Player.PlayerData.metadata['licences'].N,
			['A'] = false,
			['B'] = Player.PlayerData.metadata['licences'].B,
			['C'] = Player.PlayerData.metadata['licences'].C,
			['driver'] = Player.PlayerData.metadata['licences'].driver,
			['business'] = Player.PlayerData.metadata['licences'].business,
			['weapon'] = Player.PlayerData.metadata['licences'].weapon
		}
	elseif type == 'B' then
		licenses = {
			['N'] = Player.PlayerData.metadata['licences'].N,
			['A'] = Player.PlayerData.metadata['licences'].A,
			['B'] = false,
			['C'] = Player.PlayerData.metadata['licences'].C,
			['driver'] = Player.PlayerData.metadata['licences'].driver,
			['business'] = Player.PlayerData.metadata['licences'].business,
			['weapon'] = Player.PlayerData.metadata['licences'].weapon
		}
	elseif type == 'C' then
		licenses = {
			['N'] = Player.PlayerData.metadata['licences'].N,
			['A'] = Player.PlayerData.metadata['licences'].A,
			['B'] = Player.PlayerData.metadata['licences'].B,
			['C'] = false,
			['driver'] = Player.PlayerData.metadata['licences'].driver,
			['business'] = Player.PlayerData.metadata['licences'].business,
			['weapon'] = Player.PlayerData.metadata['licences'].weapon
		}
	end
    Player.Functions.SetMetaData('licences', licenses)
end)
