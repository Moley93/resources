QBCore = exports['qb-core']:GetCoreObject()

local function CheckPlayers(vehicle) -- Check if there is someone in the car, if so, get that person out of the car
    for i = -1, 5,1 do                
        seat = GetPedInVehicleSeat(vehicle,i)
        if seat ~= 0 then
            TaskLeaveVehicle(seat,vehicle,0)
            SetVehicleDoorsLocked(vehicle)			
            Wait(3000)
            QBCore.Functions.DeleteVehicle(vehicle)
        end
   end
end

CustomFont = nil --[nil]: use system default font - or ['name of your custom font']: You need your_custum_font.gfx EX: CustomFont = 'Oswald'

Config = {}
Config.scoretopass = 5
Config.SpeedMultiplier = 3.6

Config.Prices = {
	N  = 500, -- theory
	A = 1500, -- bike
	B = 2000, -- car
	C = 5000, -- trunk
}

Config.VehicleModels = {
	A = 'sanchez',
	B = 'emperor',
	C = 'mule',
}

Config.SpeedLimits = {
	residence = 50,
	town      = 60,
	freeway   = 80
}

Config.Zones = {
	VehicleSpawnPoint = {
		Pos   = vector4(252.64, -1152.6, 29.27, 89.52),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = -1
	}
}

Config.CheckPoints = {
	{
		Pos = vector3(252.64, -1152.6, 28.87),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			CreateThread(function()				
				local class = GetVehicleClass(vehicle)
				if class ~= 8 and class ~= 13 and class ~= 14 then
					TriggerEvent('QBCore:Notify', Lang:t('info.fasten_seatbelt'), 'primary', 4000)
					PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
					FreezeEntityPosition(vehicle, true)
					while not exports['qb-smallresources']:checkseatbelt() do
						Wait(2000)
						TriggerEvent('QBCore:Notify', Lang:t('info.fasten_your_seat_belt'), 'error', 4000)
					end
					Wait(4000)
					while not exports['qb-smallresources']:checkseatbelt() do
						Wait(100)
					end
					Wait(100)
					while not GetIsVehicleEngineRunning(vehicle) do
						Wait(100)
					end
					FreezeEntityPosition(vehicle, false)
					TriggerEvent('QBCore:Notify', Lang:t('success.next_point'), 'success', 4000)
				else
					TriggerEvent('QBCore:Notify', Lang:t('info.start_the_engine_to_start_the_test'), 'primary', 4000)
					PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
					FreezeEntityPosition(vehicle, true)
					Wait(4000)
					while not GetIsVehicleEngineRunning(vehicle) do
						Wait(100)
					end
					FreezeEntityPosition(vehicle, false)
					TriggerEvent('QBCore:Notify', Lang:t('success.next_point'), 'success', 4000)
				end
			end)
		end
	},
	{
		Pos = vector3(382.7, -1060.12, 28.010),
		Action = function(playerPed, vehicle, setCurrentZoneType)
        		PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
        		FreezeEntityPosition(vehicle, true)
        		Citizen.Wait(4000)
        		FreezeEntityPosition(vehicle, false)
			TriggerEvent('QBCore:Notify', Lang:t('info.go_to_the_next_point_the_speed_limit_is_x_kmh', {speed = Config.SpeedLimits['residence']}), 'primary', 4000)
		end
	},
	{
		Pos = vector3(449.12, -1142.16, 28.20),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
			TriggerEvent('QBCore:Notify', Lang:t('info.welcome'), 'primary', 4000)
			FreezeEntityPosition(vehicle, true)
			Citizen.Wait(4000)
			FreezeEntityPosition(vehicle, false)
			TriggerEvent('QBCore:Notify', Lang:t('info.instructor'), 'primary', 4000)
		end
	},
	{
		Pos = vector3(440.1, -1148.06, 28.12),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			CreateThread(function()
				TriggerEvent('QBCore:Notify', Lang:t('info.first_point'), 'primary', 4000)
			end)
		end
	},
	{
		Pos = vector3(433.00, -1164.18, 28.12),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town')
			CreateThread(function()
				TriggerEvent('QBCore:Notify', Lang:t('info.second_point_sign', {speed = Config.SpeedLimits['town']}), 'primary', 4000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Wait(4000)
				FreezeEntityPosition(vehicle, false)
				TriggerEvent('QBCore:Notify', Lang:t('info.second_point'), 'primary', 4000)
			end)
		end
	},
	{
		Pos = vector3(468.64, -1152.01, 28.12),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			TriggerEvent('QBCore:Notify', Lang:t('info.second_point_park'), 'primary', 4000)
		end
	},
	{
		Pos = vector3(473.49, -1155.67, 28.34),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			TriggerEvent('QBCore:Notify', Lang:t('info.third_point'), 'primary', 4000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
			FreezeEntityPosition(vehicle, true)
			Wait(4000)
			FreezeEntityPosition(vehicle, false)
			TriggerEvent('QBCore:Notify', Lang:t('info.third_point_drive'), 'primary', 4000)
		end
	},
	{
		Pos = vector3(480.14, -1167.87, 28.41),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			TriggerEvent('QBCore:Notify', Lang:t('info.fourth_point'), 'primary', 4000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
			FreezeEntityPosition(vehicle, true)
			Wait(4000)
			FreezeEntityPosition(vehicle, false)
		end
	},
	{
		Pos = vector3(491.98, -1157.68, 28.12),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			TriggerEvent('QBCore:Notify', Lang:t('info.bye_point'), 'primary', 4000)
			FreezeEntityPosition(vehicle, true)
			Wait(4000)
			FreezeEntityPosition(vehicle, false)
			TriggerEvent('QBCore:Notify', Lang:t('info.speed_limit', {speed = Config.SpeedLimits['town']}), 'primary', 4000)
		end
	},
	{
		Pos = vector3(498.37, -1250.06, 28.13),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			TriggerEvent('QBCore:Notify', Lang:t('info.go_to_the_next_point'), 'primary', 4000)
		end
	},
	{
		Pos = vector3(445.15, -1255.47, 29.6),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			TriggerEvent('QBCore:Notify', Lang:t('info.tank_first'), 'primary', 4000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
		end
	},
	{
		Pos = vector3(267.61, -1280.26, 28.00),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			TriggerEvent('QBCore:Notify', Lang:t('info.tank_second'), 'primary', 4000)
		end
	},
	{
		Pos = vector3(435.42, -548.36, 27.49),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('freeway')
			TriggerEvent('QBCore:Notify', Lang:t('info.hway_time', {speed = Config.SpeedLimits['freeway']}), 'primary', 4000)
		end
	},
	{
		Pos = vector3(1126.14, 371.76, 90.45),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			TriggerEvent('QBCore:Notify', Lang:t('info.gratz_stay_alert'), 'primary', 4000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
			Citizen.Wait(4000)
			TriggerEvent('QBCore:Notify', Lang:t('info.speed_limit', {speed = Config.SpeedLimits['town']}), 'primary', 4000)
			setCurrentZoneType('town')
		end
	},
	{
		Pos = vector3(703.51, 33.39, 83.1),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			TriggerEvent('QBCore:Notify', Lang:t('info.go_to_the_next_point'), 'primary', 4000)
		end
	},
	{
		Pos = vector3(264.02, -863.35, 28.15),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			TriggerEvent('QBCore:Notify', Lang:t('info.last_park'), 'primary', 4000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
		end
	},
	{
		Pos = vector3(266.28, -1155.65, 28.15),
		Action = function(playerPed, vehicle, setCurrentZoneType)
			CheckPlayers(vehicle)
		end
	}
}

Config.PedList = {
	{
		model = 'cs_bankman',
		coords = vector3(297.49, -1160.93, 28.27),                
		heading = 255.17,
		gender = 'male',
        scenario = 'WORLD_HUMAN_CLIPBOARD'
	},
}
