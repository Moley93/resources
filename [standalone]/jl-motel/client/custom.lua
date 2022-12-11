-- You can customize this file to your needs.
lib.locale()
SpawnedPed = {}
PedZones = {}
-- Keybind
KeyBind = 38 -- E
Cam = nil


function Camera(status)
	if status then
		if Cam then DestroyCam(Cam, true) end
		local coords = GetEntityCoords(PlayerPedId())
		Cam = nil
		Cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", coords.x, coords.y, coords.z + 900.0,
			-85.00, 0.00, 0.00, 100.00, false, 0)
		SetCamActive(Cam, true)
		RenderScriptCams(true, false, 1, true, true)
	else
		SetCamActive(Cam, false)
		DestroyCam(Cam, true)
		RenderScriptCams(false, false, 1, true, true)
		Cam = nil
	end
end

RegisterNetEvent('apartments:client:setupSpawnUI', function(cData, isnewplayer)
	if Config.ReplaceApartment then
		local res = lib.callback.await('jl-motel:server:getOwnedMotel', false, cData.citizenid)
		if isnewplayer and not res and SetupSpawn() then
			Camera(true)
			Wait(500)
			DoScreenFadeIn(500)
		elseif not isnewplayer then
			TriggerEvent('qb-spawn:client:setupSpawns', cData, false, nil)
			TriggerEvent('qb-spawn:client:openUI', true)
		else
			TriggerEvent('qb-multicharacter:client:closeNUIdefault')
		end
	end
end)

-- Notification
function Notification(text, type)
	if display then
		TriggerEvent('jl-motel:notifyUI', text, type)
	else
		lib.notify({
			description = text,
			type = type
		})
	end
end

function SendPhoneMail(sender, subject, message)
	TriggerServerEvent('qb-phone:server:sendNewMail', {
		sender = sender,
		subject = subject,
		message = message
	})
end

function GetNearestMotel()
	for k, v in pairs(Config.Motel) do
		local pos = GetEntityCoords(PlayerPedId())
		local rentcoords = vector3(v.rent.coords.x, v.rent.coords.y, v.rent.coords.z)
		local dist = #(pos - rentcoords)
		if dist <= 30 then
			SpawnPed(k)
		end
		if dist > 30 then
			RemovePed(k)
		end
	end
end

RegisterNetEvent('jl-motel:client:openMenu', function(motel)
	if not motel then motel = nearestMotel end
	pcall(function()
		return OpenMotelMenu(motel)
	end)
end)

---@param motel string
function SpawnPed(motel)
	if SpawnedPed[motel] then return end
	local MotelConfig = Config.Motel[motel]
	local model = joaat('a_m_m_business_01')
	lib.requestModel(model)
	local ped = CreatePed(4, model, MotelConfig.rent.coords.x, MotelConfig.rent.coords.y, MotelConfig.rent.coords.z - 1.0,
		MotelConfig.rent.coords.w, false, true)
	FreezeEntityPosition(ped, true)
	SetEntityInvincible(ped, true)
	SetPedCanPlayAmbientAnims(ped, true)
	SetBlockingOfNonTemporaryEvents(ped, true)
	TaskStartScenarioInPlace(ped, "WORLD_HUMAN_CLIPBOARD_FACILITY", 0, true)
	SpawnedPed[motel] = ped
	if Config.Target['ped'] and IsTargetReady then
		if GetResourceState('ox_target') == "started" then
			local opt = {
				{
					name = "jl-motel:openMenu",
					icon = Config.Icon['motel'],
					label = locale('label_motel'),
					distance = 1.5,
					onSelect = function(_)
						OpenMotelMenu(motel)
					end
				}
			}
			exports.ox_target:addLocalEntity(ped, opt)
		elseif GetResourceState('qtarget') == "started" or GetResourceState(Config.QB.script_name.target) then
			exports[Config.Framework == "qb" and Config.QB.script_name.target or 'qtarget']:AddTargetEntity(ped, {
				options = {
					{
						action = function()
							OpenMotelMenu(motel)
						end,
						icon = Config.Icon['motel'],
						label = locale('label_motel'),
					},
				},
				distance = 2.0
			})
		end
	else
		PedZones[motel] = lib.zones.box({
			coords = MotelConfig.rent.coords.xyz,
			size = vector3(2.0, 2.0, 2.0),
			debug = Config.DebugPoly,
			onEnter = function(_)
				ShowDrawtext(locale('control_motel_menu'))
			end,
			onExit = function(_)
				HideDrawtext()
			end,
			inside = function(_)
				if IsControlJustReleased(0, KeyBind) then
					OpenMotelMenu(motel)
				end
			end
		})
	end
end

function RemovePed(motel)
	if not SpawnedPed[motel] then return end
	for i = 255, 0, -51 do
		Wait(50)
		SetEntityAlpha(SpawnedPed[motel], i, false)
	end
	DeleteEntity(SpawnedPed[motel])
	SpawnedPed[motel] = nil
	if PedZones[motel] then
		PedZones[motel]:remove()
		PedZones[motel] = nil
	end
end

--- Open outfit menu
---@param id string
function OpenClothing(id)
	TriggerEvent('qb-clothing:client:openOutfitMenu')
end

---@param id string
function OpenInventory(id)
	if GetResourceState('ox_inventory') == "started" then
		exports['ox_inventory']:openInventory('stash', id)
	else
		TriggerServerEvent("inventory:server:OpenInventory", "stash", id, Config.Stash)
		TriggerEvent("inventory:client:SetCurrentStash", id)
	end
end

-- Drawtext
function ShowDrawtext(text)
	lib.showTextUI(text, {
		position = "left-center",
	})
end

function HideDrawtext()
	lib.hideTextUI()
end

-- Minigame for raid
function MiniGame()
	local success = lib.skillCheck({ 'easy', 'easy', { areaSize = 60, speedMultiplier = 2 }, 'hard' })
	return success
end

function RaidAnimation()
	lib.requestAnimDict("missheistfbi3b_ig7")
	TaskPlayAnim(PlayerPedId(), "missheistfbi3b_ig7", "lift_fibagent_loop", 8.0, 1.0, -1, 1, 0, false, false, false)
end

function LockpickAnimation()
	lib.requestAnimDict("missheistfbisetup1")
	TaskPlayAnim(PlayerPedId(), "missheistfbisetup1", "hassle_intro_loop_f", 8.0, 8.0, -1, 1, 0, false, false, false)
end

function CreateBlip(coords, name, sprite, colour)
	sprite = sprite or 475
	colour = colour or 5
	---@diagnostic disable-next-line: missing-parameter
	local blip = AddBlipForCoord(coords)
	SetBlipSprite(blip, sprite)
	SetBlipScale(blip, 0.6)
	SetBlipColour(blip, colour)
	SetBlipDisplay(blip, 4)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(name)
	EndTextCommandSetBlipName(blip)
	return blip
end

-- SHELL ONLY!!!
RegisterNetEvent("jl-motel:client:onMotelEnter")
AddEventHandler('jl-motel:client:onMotelEnter', function(motel, room)
end)
RegisterNetEvent("jl-motel:client:onMotelExit")
AddEventHandler('jl-motel:client:onMotelExit', function(motel, room)
end)
