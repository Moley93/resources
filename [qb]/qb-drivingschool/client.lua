QBCore = exports['qb-core']:GetCoreObject()

local CurrentTest = nil
local CurrentTestType = nil
local CurrentVehicle = nil
local CurrentCheckPoint = 0
local LastCheckPoint = -1
local CurrentBlip = nil
local CurrentZoneType = nil
local mistakepoints = 0
local IsAboveSpeedLimit = false
local LastVehicleHealth = nil
local seatbelterr = {}
local wrongvehicle = false
local notinvehicle = false
local peds = {}
local multilang = {}

local function StartTheoryTest()
	CurrentTest = 'theory'
	SendNUIMessage({
		openQuestion = true,
		multilang = {
			question = Lang:t('info.question'),
			mtheader = Lang:t('info.driving_school'),
			mlcontent = Lang:t('info.mlcontent'),
			mlbt = Lang:t('info.mlbt'),
			mlprogression = Lang:t('info.mlprogression'),
			mlresultgood = Lang:t('info.mlresultgood'),
			mlresultbad = Lang:t('info.mlresultbad'),
			submit = Lang:t('info.mlsubmit'),
			mlclose = Lang:t('info.mlclose'),
			questionlist = {
				{
					question = Lang:t('info.questionlist1q'),
					propositionA = Lang:t('info.questionlist1a'),
					propositionB = Lang:t('info.questionlist1b'),
					propositionC = Lang:t('info.questionlist1c'),
					propositionD = Lang:t('info.questionlist1d'),
					reponse = Lang:t('info.questionlist1r'),
				},
				{
					question = Lang:t('info.questionlist2q'),
					propositionA = Lang:t('info.questionlist2a'),
					propositionB = Lang:t('info.questionlist2b'),
					propositionC = Lang:t('info.questionlist2c'),
					propositionD = Lang:t('info.questionlist2d'),
					reponse = Lang:t('info.questionlist2r'),
				},
				{
					question = Lang:t('info.questionlist3q'),
					propositionA = Lang:t('info.questionlist3a'),
					propositionB = Lang:t('info.questionlist3b'),
					propositionC = Lang:t('info.questionlist3c'),
					propositionD = Lang:t('info.questionlist3d'),
					reponse = Lang:t('info.questionlist3r'),
				},
				{
					question = Lang:t('info.questionlist4q'),
					propositionA = Lang:t('info.questionlist4a'),
					propositionB = Lang:t('info.questionlist4b'),
					propositionC = Lang:t('info.questionlist4c'),
					propositionD = Lang:t('info.questionlist4d'),
					reponse = Lang:t('info.questionlist4r'),
				},
				{
					question = Lang:t('info.questionlist5q'),
					propositionA = Lang:t('info.questionlist5a'),
					propositionB = Lang:t('info.questionlist5b'),
					propositionC = Lang:t('info.questionlist5c'),
					propositionD = Lang:t('info.questionlist5d'),
					reponse = Lang:t('info.questionlist5r'),
				},
				{
					question = Lang:t('info.questionlist6q'),
					propositionA = Lang:t('info.questionlist6a'),
					propositionB = Lang:t('info.questionlist6b'),
					propositionC = Lang:t('info.questionlist6c'),
					propositionD = Lang:t('info.questionlist6d'),
					reponse = Lang:t('info.questionlist6r'),
				},
				{
					question = Lang:t('info.questionlist7q'),
					propositionA = Lang:t('info.questionlist7a'),
					propositionB = Lang:t('info.questionlist7b'),
					propositionC = Lang:t('info.questionlist7c'),
					propositionD = Lang:t('info.questionlist7d'),
					reponse = Lang:t('info.questionlist7r'),
				},
				{
					question = Lang:t('info.questionlist8q'),
					propositionA = Lang:t('info.questionlist8a'),
					propositionB = Lang:t('info.questionlist8b'),
					propositionC = Lang:t('info.questionlist8c'),
					propositionD = Lang:t('info.questionlist8d'),
					reponse = Lang:t('info.questionlist8r'),
				},
				{
					question = Lang:t('info.questionlist9q'),
					propositionA = Lang:t('info.questionlist9a'),
					propositionB = Lang:t('info.questionlist9b'),
					propositionC = Lang:t('info.questionlist9c'),
					propositionD = Lang:t('info.questionlist9d'),
					reponse = Lang:t('info.questionlist9r'),
				},
				{
					question = Lang:t('info.questionlist10q'),
					propositionA = Lang:t('info.questionlist10a'),
					propositionB = Lang:t('info.questionlist10b'),
					propositionC = Lang:t('info.questionlist10c'),
					propositionD = Lang:t('info.questionlist10d'),
					reponse = Lang:t('info.questionlist10r'),
				},
			}
		}
	})
	SetTimeout(200, function()
		SetNuiFocus(true, true)
	end)
end

local function StopTheoryTest(success)
	CurrentTest = nil
	SendNUIMessage({
		openQuestion = false,
		multilang = {}
	})
	SetNuiFocus(false)
	if success then
		TriggerServerEvent('qb-drivingschool:server:addLicense', 'N')
		TriggerEvent('QBCore:Notify', Lang:t('info.passed_testtheory'), 'success', 2000)
	else
		TriggerEvent('QBCore:Notify', Lang:t('info.test_failedtheory'), 'error', 2000)
	end
end

local function StartDriveTest(type)
	TriggerEvent('QBCore:Notify', Lang:t('info.get_in_vehicle'), 'primary', 4000)
	QBCore.Functions.SpawnVehicle(Config.VehicleModels[type], function(vehicle)
		SetVehicleNumberPlateText(vehicle, 'TL' .. string.format('%06d', math.random(1, 999999)))
		SetEntityHeading(vehicle, Config.Zones.VehicleSpawnPoint.Pos.w)
		exports['LegacyFuel']:SetFuel(vehicle, 100.0)
		TriggerEvent('vehiclekeys:client:SetOwner', QBCore.Functions.GetPlate(vehicle))		
		SetVehicleCustomPrimaryColour(vehicle, 0, 0, 0)
        SetVehicleDirtLevel(vehicle)
        SetVehicleUndriveable(vehicle, false)
        WashDecalsFromVehicle(vehicle, 1.0)
		CurrentTest = 'drive'
		CurrentTestType = type
		CurrentCheckPoint = 0
		LastCheckPoint = -1
		CurrentZoneType = 'residence'
		mistakepoints = 0
		IsAboveSpeedLimit = false
		CurrentVehicle = vehicle
		LastVehicleHealth = GetEntityHealth(vehicle)
		local playerPed = PlayerPedId()
	end, Config.Zones.VehicleSpawnPoint.Pos, true)
end

local function StopDriveTest(success)
	if success then
		TriggerServerEvent('qb-drivingschool:server:addLicense', CurrentTestType)
		TriggerEvent('QBCore:Notify', Lang:t('info.passed_drivingtest', {class = CurrentTestType}), 'success', 2000)
	else
		TriggerEvent('QBCore:Notify', Lang:t('info.failed_drivingtest', {class = CurrentTestType}), 'error', 2000)
	end
	CurrentTest     = nil
	CurrentTestType = nil
	seatbelterr = {}
end

local function SetCurrentZoneType(type)
	CurrentZoneType = type
end

local function EnumerateEntitiesWithinDistance(entities, isPlayerEntities, coords, maxDistance)
	local nearbyEntities = {}
	if coords then
		coords = vector3(coords.x, coords.y, coords.z)
	else
		local playerPed = PlayerPedId()
		coords = GetEntityCoords(playerPed)
	end
	for k, entity in pairs(entities) do
		local distance = #(coords - GetEntityCoords(entity))
		if distance <= maxDistance then
			nearbyEntities[#nearbyEntities+1] = isPlayerEntities and k or entity
		end
	end
	return nearbyEntities
end

local function GetVehiclesInArea(coords, maxDistance)
	return EnumerateEntitiesWithinDistance(QBCore.Functions.GetVehicles(), false, coords, maxDistance) 
end

local function IsSpawnPointClear(coords, maxDistance)
	return #GetVehiclesInArea(coords, maxDistance) == 0 
end

RegisterNUICallback('question', function(data, cb)
	SendNUIMessage({
		openSection = 'question'
	})
	cb()
end)

RegisterNUICallback('close', function(data, cb)
	StopTheoryTest(true)
	cb()
end)

RegisterNUICallback('kick', function(data, cb)
	StopTheoryTest(false)
	cb()
end)

RegisterNetEvent('qb-drivingschool:client:startTheoryTest', function()
    CurrentTest = 'theory'
	SendNUIMessage({
		openQuestion = true
	})
	SetTimeout(200, function()
		SetNuiFocus(true, true)
	end)
end)

RegisterNetEvent('qb-drivingschool:client:startTest', function(type)
	if type ~= 'N' then
		StartDriveTest(type)
	else
		StartTheoryTest()
	end
end)

RegisterNetEvent('qb-drivingschool:client:payTest', function(data)
	PlayerData = QBCore.Functions.GetPlayerData()
	if data.type ~= 'N' then
		if PlayerData.metadata['licences'].N then
			if IsSpawnPointClear(vector3(Config.Zones.VehicleSpawnPoint.Pos.x, Config.Zones.VehicleSpawnPoint.Pos.y, Config.Zones.VehicleSpawnPoint.Pos.z), 2.5) then
				TriggerServerEvent('qb-drivingschool:server:payTest', Config.Prices[data.type], data.type)
			else
				TriggerEvent('QBCore:Notify', Lang:t('info.blocked_start'), 'error', 2000)
			end			
		else
			TriggerEvent('QBCore:Notify', Lang:t('info.failed_theorytest'), 'error', 2000)
		end
	else
		if PlayerData.metadata['licences'].N then
			TriggerEvent('QBCore:Notify', Lang:t('info.have_you_passed_the_theory_test'), 'error', 2000)
		else
			TriggerServerEvent('qb-drivingschool:server:payTest', Config.Prices[data.type], data.type)
		end
	end
end)

CreateThread(function() -- Drive test
	while true do
		Wait(0)
		if CurrentTest == 'drive' then
			local playerPed = PlayerPedId()
			local coords = GetEntityCoords(playerPed)
			local nextCheckPoint = CurrentCheckPoint + 1
			if Config.CheckPoints[nextCheckPoint] == nil then
				if DoesBlipExist(CurrentBlip) then
					RemoveBlip(CurrentBlip)
				end
				CurrentTest = nil
				TriggerEvent('QBCore:Notify', Lang:t('success.complete_drivingtest'), 'success', 2000)
				if (100 - mistakepoints) >= Config.scoretopass then
					StopDriveTest(true)
				else
					StopDriveTest(false)
				end
			else
				if IsPedInAnyVehicle(playerPed, false) then
					notinvehicle = false
					local vehin = GetVehiclePedIsIn(playerPed)
					local vehinplate = QBCore.Functions.GetPlate(vehin)
					local vehplate = QBCore.Functions.GetPlate(CurrentVehicle)
					if vehinplate ~= vehplate then
						if not wrongvehicle then
							TriggerEvent('QBCore:Notify', Lang:t('error.no_other_car'), 'error', 2000)
							wrongvehicle = true
						end
					else
						wrongvehicle = false
						if CurrentCheckPoint ~= LastCheckPoint then
							if DoesBlipExist(CurrentBlip) then
								RemoveBlip(CurrentBlip)
							end
							CurrentBlip = AddBlipForCoord(Config.CheckPoints[nextCheckPoint].Pos)
							SetBlipRoute(CurrentBlip, 1)
							LastCheckPoint = CurrentCheckPoint
						end
						local distance = #(coords - Config.CheckPoints[nextCheckPoint].Pos)
						if distance <= 100.0 then
							DrawMarker(1, Config.CheckPoints[nextCheckPoint].Pos, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 102, 204, 102, 100, false, true, 2, false, false, false, false)
						end
						if distance <= 3.0 then
							Config.CheckPoints[nextCheckPoint].Action(playerPed, CurrentVehicle, SetCurrentZoneType)
							CurrentCheckPoint = CurrentCheckPoint + 1
						end
					end
				else
					if CurrentCheckPoint > 1 then
						if not notinvehicle then
							TriggerEvent('QBCore:Notify', Lang:t('error.need_vehicle'), 'error', 2000)
							notinvehicle = true
						end
					end
				end
			end
		else			
			Wait(1000)
		end
	end
end)

local function NearPed(model, coords, heading, gender, animDict, animName, scenario)
	RequestModel(GetHashKey(model))
	while not HasModelLoaded(GetHashKey(model)) do
		Wait(1)
	end
	if gender == 'male' then
		genderNum = 4
	elseif gender == 'female' then 
		genderNum = 5
	else
	
	end	
	ped = CreatePed(genderNum, GetHashKey(v.model), coords, heading, false, true)
	SetEntityAlpha(ped, 0, false)
	FreezeEntityPosition(ped, true)
	SetEntityInvincible(ped, true)
	SetBlockingOfNonTemporaryEvents(ped, true)
	if animDict and animName then
		RequestAnimDict(animDict)
		while not HasAnimDictLoaded(animDict) do
			Wait(1)
		end
		TaskPlayAnim(ped, animDict, animName, 8.0, 0, -1, 1, 0, 0, 0)
	end
	if scenario then
		TaskStartScenarioInPlace(ped, scenario, 0, true) 
	end
	for i = 0, 255, 51 do
		Wait(50)
		SetEntityAlpha(ped, i, false)
	end
	return ped
end

CreateThread(function() -- Create Blips
    local blip = AddBlipForCoord(vector3(290.06, -1158.51, 29.29))
    SetBlipSprite(blip, 408)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.7)
    SetBlipColour(blip, 4)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName('STRING')
	if CustomFont ~= nil then
		AddTextComponentString('<font face=\'' .. CustomFont ..'\'>' .. Lang:t('info.driving_school') .. '</font>')
	else
		AddTextComponentString(Lang:t('info.driving_school'))
	end
    EndTextCommandSetBlipName(blip)
end)

local function NearPed(model, coords, heading, gender, animDict, animName, scenario)
	RequestModel(GetHashKey(model))
	while not HasModelLoaded(GetHashKey(model)) do
		Wait(1)
	end
	if gender == 'male' then
		genderNum = 4
	elseif gender == 'female' then 
		genderNum = 5
	else
	
	end	
	ped = CreatePed(genderNum, GetHashKey(v.model), coords, heading, false, true)
	SetEntityAlpha(ped, 0, false)
	FreezeEntityPosition(ped, true)
	SetEntityInvincible(ped, true)
	SetBlockingOfNonTemporaryEvents(ped, true)
	if animDict and animName then
		RequestAnimDict(animDict)
		while not HasAnimDictLoaded(animDict) do
			Wait(1)
		end
		TaskPlayAnim(ped, animDict, animName, 8.0, 0, -1, 1, 0, 0, 0)
	end
	if scenario then
		TaskStartScenarioInPlace(ped, scenario, 0, true) 
	end
	for i = 0, 255, 51 do
		Wait(50)
		SetEntityAlpha(ped, i, false)
	end
	return ped
end

CreateThread(function()
    local blip = AddBlipForCoord(vector3(290.06, -1158.51, 29.29))
    SetBlipSprite(blip, 408)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.7)
    SetBlipColour(blip, 4)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName('STRING')
	if CustomFont ~= nil then
		AddTextComponentString('<font face=\'' .. CustomFont ..'\'>' .. Lang:t('info.driving_school') .. '</font>')
	else
		AddTextComponentString(Lang:t('info.driving_school'))
	end
    EndTextCommandSetBlipName(blip)
end)

CreateThread(function() --Spawn Ped
	createMenu()

	while true do
		Wait(500)
		for k = 1, #Config.PedList, 1 do
			v = Config.PedList[k]
			local playerCoords = GetEntityCoords(PlayerPedId())
			local dist = #(playerCoords - v.coords)
			if dist < 50.0 and not peds[k] then
				local ped = NearPed(v.model, v.coords, v.heading, v.gender, v.animDict, v.animName, v.scenario)
				peds[k] = {ped = ped}
			end
			if dist >= 50.0 and peds[k] then
				for i = 255, 0, -51 do
					Wait(50)
					SetEntityAlpha(peds[k].ped, i, false)
				end
				DeletePed(peds[k].ped)
				peds[k] = nil
			end
		end
	end
end)
--

function createMenu()
	exports['qb-target']:AddBoxZone("drivingschool", vector3(297.49, -1160.93, 28.27), 3, 3, {
		name="drivingschool",
		heading=255.17,
		debugPoly=false,
		minZ= 29.47,
		maxZ= 31.47,
		}, {
			options = {
			{
				event = 'qb-drivingschool:client:payTest',
				icon = 'fas fa-id-card',
				label = Lang:t('menu.driving_theory_test', {price = Config.Prices.N}),
				type = 'N',
				canInteract = function()
					PlayerData = QBCore.Functions.GetPlayerData()
					if PlayerData.metadata['licences'].N then
						return false
					else
						return true
					end
				end
			},
			{
				event = 'qb-drivingschool:client:payTest',
				icon = 'fas fa-motorcycle',
				label = Lang:t('menu.a_class_driving_practice_test', {price = Config.Prices.A}),
				plant = peds[2],
				type = 'A',
				canInteract = function()
					PlayerData = QBCore.Functions.GetPlayerData()
					if PlayerData.metadata['licences'].N then
						if PlayerData.metadata['licences'].A then
							return false
						else
							return true
						end
					else
						return false
					end
				end
			},
			{
				event = 'qb-drivingschool:client:payTest',
				icon = 'fas fa-car',
				label = Lang:t('menu.b_class_driving_practice_test', {price = Config.Prices.B}),
				type = 'B',
				canInteract = function()
					PlayerData = QBCore.Functions.GetPlayerData()
					if PlayerData.metadata['licences'].N then
						if PlayerData.metadata['licences'].B then
							return false
						else
							return true
						end
					else
						return false
					end
				end
			},
			{
				event = 'qb-drivingschool:client:payTest',
				icon = 'fas fa-truck',
				label = Lang:t('menu.c_class_driving_practice_test', {price = Config.Prices.C}),
				type = 'C',
				canInteract = function()
					PlayerData = QBCore.Functions.GetPlayerData()
					if PlayerData.metadata['licences'].N then
						if PlayerData.metadata['licences'].C then
							return false
						else
							return true
						end
					else
						return false
					end
				end
			}
		},
		distance = 10.0
	})
end
