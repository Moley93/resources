--███████╗██████╗  █████╗ ███╗   ███╗███████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗
--██╔════╝██╔══██╗██╔══██╗████╗ ████║██╔════╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝
--█████╗  ██████╔╝███████║██╔████╔██║█████╗  ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ 
--██╔══╝  ██╔══██╗██╔══██║██║╚██╔╝██║██╔══╝  ██║███╗██║██║   ██║██╔══██╗██╔═██╗ 
--██║     ██║  ██║██║  ██║██║ ╚═╝ ██║███████╗╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗
--╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝ ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝


ESX, QBCore = nil, nil
JobData, GangData, on_duty, Identifier = {}, {}, true, nil

CreateThread(function()
    if Config.Framework == 'esx' then
        while ESX == nil do
            TriggerEvent(Config.FrameworkTriggers.main, function(obj) ESX = obj end)
            if ESX == nil then
                ESX = exports[Config.FrameworkTriggers.resource_name]:getSharedObject()
            end
            Wait(100)
        end
        JobData = ESX.PlayerData.job or {}
        if JobData.onDuty ~= nil and Config.UseDutySystem then on_duty = JobData.onDuty end 

        RegisterNetEvent(Config.FrameworkTriggers.load)
        AddEventHandler(Config.FrameworkTriggers.load, function(xPlayer)
            JobData = xPlayer.job or {}
            if JobData.onDuty ~= nil and Config.UseDutySystem then on_duty = JobData.onDuty end
        end)

        RegisterNetEvent(Config.FrameworkTriggers.job)
        AddEventHandler(Config.FrameworkTriggers.job, function(job)
            JobData = job or {}
        end)  

    elseif Config.Framework == 'qbcore' then
        while QBCore == nil do
            TriggerEvent(Config.FrameworkTriggers.main, function(obj) QBCore = obj end)
            if QBCore == nil then
                QBCore = exports[Config.FrameworkTriggers.resource_name]:GetCoreObject()
            end
            Wait(100)
        end
        JobData = QBCore.Functions.GetPlayerData().job or {}
        GangData = QBCore.Functions.GetPlayerData().gang or {}
        if #JobData > 0 and Config.UseDutySystem then on_duty = QBCore.Functions.GetPlayerData().job.onduty end

        RegisterNetEvent(Config.FrameworkTriggers.load)
        AddEventHandler(Config.FrameworkTriggers.load, function()
            JobData = QBCore.Functions.GetPlayerData().job or {}
            GangData = QBCore.Functions.GetPlayerData().gang or {}
            if Config.UseDutySystem then
                on_duty = QBCore.Functions.GetPlayerData().job.onduty
            end
        end)

        RegisterNetEvent(Config.FrameworkTriggers.job)
        AddEventHandler(Config.FrameworkTriggers.job, function(JobInfo)
            JobData = JobInfo or {}
        end)

        RegisterNetEvent('QBCore:Client:SetDuty')
        AddEventHandler('QBCore:Client:SetDuty', function(boolean)
            if on_duty == boolean and not Config.UseDutySystem then return end
            on_duty = boolean
        end)

        RegisterNetEvent('QBCore:Client:OnGangUpdate')
        AddEventHandler('QBCore:Client:OnGangUpdate', function(gang)
            GangData = gang
        end)
    
    elseif Config.Framework == 'standalone' then

        Identifier = Callback('get_identifier')

    elseif Config.Framework == 'other' then
        --add your framework code here.

    end

    if not Config.UseDutySystem then
        on_duty = true
    end

    while true do
        Wait(100)
        if NetworkIsSessionStarted() then
            TriggerServerEvent('cd_doorlock:PlayerLoaded')
            break
        end
    end
end)

function GetPermsData()
    if Config.Framework == 'esx' then
        while JobData.name == nil do Wait(0) end
        return {job_name = JobData.name, job_grade = JobData.grade}
    
    elseif Config.Framework == 'qbcore' then
        while JobData.name == nil do Wait(0) end
        while GangData.name == nil do Wait(0) end
        return {job_name = JobData.name, job_grade = JobData.grade.level, gang_name = GangData.name, gang_grade = GangData.grade.level}

    elseif Config.Framework == 'standalone' then
        return {identifier = Identifier}

    elseif Config.Framework == 'other' then
        return {name = 'unemployed', grade = 0} --return a players job name (string).
    end
end

function CheckDoorPerms(door_perms_data)
    local result = false
    if Config.Framework == 'esx' then
        local perms_data = GetPermsData()
        for c, d in pairs(door_perms_data.job) do
            if perms_data.job_name == d.name and perms_data.job_grade >= d.grade and on_duty then
                result = true
            end
        end
    
    elseif Config.Framework == 'qbcore' then
        local perms_data = GetPermsData()
        for c, d in pairs(door_perms_data.job) do
            if (perms_data.job_name == d.name and perms_data.job_grade >= d.grade and on_duty) or (perms_data.gang_name == d.name and perms_data.gang_grade >= d.grade) then
                result = true
            end
        end

    elseif Config.Framework == 'identifiers' then
        for c, d in pairs(door_perms_data.identifier) do
            if Identifier == d then
                result = true
            end
        end

    elseif Config.Framework == 'other' then
        --add your own permissions check here (boolean).
        result = true
        
    end
    return result
end

function CheckAdminPerms()
    return Callback('check_admin_perms')
end


--██╗  ██╗███████╗██╗   ██╗███████╗     █████╗ ███╗   ██╗██████╗      ██████╗ ██████╗ ███╗   ███╗███╗   ███╗ █████╗ ███╗   ██╗██████╗ ███████╗
--██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔════╝    ██╔══██╗████╗  ██║██╔══██╗    ██╔════╝██╔═══██╗████╗ ████║████╗ ████║██╔══██╗████╗  ██║██╔══██╗██╔════╝
--█████╔╝ █████╗   ╚████╔╝ ███████╗    ███████║██╔██╗ ██║██║  ██║    ██║     ██║   ██║██╔████╔██║██╔████╔██║███████║██╔██╗ ██║██║  ██║███████╗
--██╔═██╗ ██╔══╝    ╚██╔╝  ╚════██║    ██╔══██║██║╚██╗██║██║  ██║    ██║     ██║   ██║██║╚██╔╝██║██║╚██╔╝██║██╔══██║██║╚██╗██║██║  ██║╚════██║
--██║  ██╗███████╗   ██║   ███████║    ██║  ██║██║ ╚████║██████╔╝    ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║██║  ██║██║ ╚████║██████╔╝███████║
--╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝    ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝      ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝


TriggerEvent('chat:addSuggestion', '/'..Config.OpenDoorMenu.command, Config.OpenDoorMenu.description)
RegisterCommand(Config.OpenDoorMenu.command, function()
    TriggerEvent('cd_doorlock:OpenDoorLockMenu')
end)

RegisterKeyMapping(Config.ToggleDoorLock.command, Config.ToggleDoorLock.description, 'keyboard', Config.ToggleDoorLock.key)
TriggerEvent('chat:addSuggestion', '/'..Config.ToggleDoorLock.command, Config.ToggleDoorLock.description)
RegisterCommand(Config.ToggleDoorLock.command, function()
    TriggerEvent('cd_doorlock:ToggleDoorState')
end)


-- ██╗      ██████╗  ██████╗██╗  ██╗██████╗ ██╗ ██████╗██╗  ██╗██╗███╗   ██╗ ██████╗ 
-- ██║     ██╔═══██╗██╔════╝██║ ██╔╝██╔══██╗██║██╔════╝██║ ██╔╝██║████╗  ██║██╔════╝ 
-- ██║     ██║   ██║██║     █████╔╝ ██████╔╝██║██║     █████╔╝ ██║██╔██╗ ██║██║  ███╗
-- ██║     ██║   ██║██║     ██╔═██╗ ██╔═══╝ ██║██║     ██╔═██╗ ██║██║╚██╗██║██║   ██║
-- ███████╗╚██████╔╝╚██████╗██║  ██╗██║     ██║╚██████╗██║  ██╗██║██║ ╚████║╚██████╔╝
-- ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ 


function StartLockpicking()
    local result = exports['cd_keymaster']:StartKeyMaster()
    return result --You must return a boolean (true or false).
end


--███╗   ██╗ ██████╗ ████████╗██╗███████╗██╗ ██████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗███████╗
--████╗  ██║██╔═══██╗╚══██╔══╝██║██╔════╝██║██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
--██╔██╗ ██║██║   ██║   ██║   ██║█████╗  ██║██║     ███████║   ██║   ██║██║   ██║██╔██╗ ██║███████╗
--██║╚██╗██║██║   ██║   ██║   ██║██╔══╝  ██║██║     ██╔══██║   ██║   ██║██║   ██║██║╚██╗██║╚════██║
--██║ ╚████║╚██████╔╝   ██║   ██║██║     ██║╚██████╗██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║███████║
--╚═╝  ╚═══╝ ╚═════╝    ╚═╝   ╚═╝╚═╝     ╚═╝ ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝


function Notification(notif_type, message)
    if notif_type and message then
        if Config.NotificationType.client == 'esx' then
            ESX.ShowNotification(message)
        
        elseif Config.NotificationType.client == 'qbcore' then
            if notif_type == 1 then
                QBCore.Functions.Notify(message, 'success')
            elseif notif_type == 2 then
                QBCore.Functions.Notify(message, 'primary')
            elseif notif_type == 3 then
                QBCore.Functions.Notify(message, 'error')
            end

        elseif Config.NotificationType.client == 'mythic_old' then
            if notif_type == 1 then
                exports['mythic_notify']:DoCustomHudText('success', message, 10000)
            elseif notif_type == 2 then
                exports['mythic_notify']:DoCustomHudText('inform', message, 10000)
            elseif notif_type == 3 then
                exports['mythic_notify']:DoCustomHudText('error', message, 10000)
            end

        elseif Config.NotificationType.client == 'mythic_new' then
            if notif_type == 1 then
                exports['mythic_notify']:SendAlert('success', message, { ['background-color'] = '#ffffff', ['color'] = '#000000' })
            elseif notif_type == 2 then
                exports['mythic_notify']:SendAlert('inform', message, { ['background-color'] = '#ffffff', ['color'] = '#000000' })
            elseif notif_type == 3 then
                exports['mythic_notify']:SendAlert('error', message, { ['background-color'] = '#ffffff', ['color'] = '#000000' })
            end

        elseif Config.NotificationType.client == 'chat' then
            TriggerEvent('chatMessage', message)
            
        elseif Config.NotificationType.client == 'other' then
            --add your own notification.
            
        end
    end
end

--██████╗ ███████╗██████╗ ██╗   ██╗ ██████╗ 
--██╔══██╗██╔════╝██╔══██╗██║   ██║██╔════╝ 
--██║  ██║█████╗  ██████╔╝██║   ██║██║  ███╗
--██║  ██║██╔══╝  ██╔══██╗██║   ██║██║   ██║
--██████╔╝███████╗██████╔╝╚██████╔╝╚██████╔╝
--╚═════╝ ╚══════╝╚═════╝  ╚═════╝  ╚═════╝ 


if Config.Debug then
    CreateThread(function()
        Wait(3000)
        print('^6-----------------------^0')
        print('^DEBUG^0')
        local job_data = GetPermsData()
        print('^6Framework: '..Config.Framework..'^0')
        if Config.Framework == 'esx' then
            print('^6Job Name: '..job_data.job_name..'^0')
            print('^6Job Grade: '..job_data.job_grade..'^0')
            print('^6Duty System: '..tostring(Config.UseDutySystem)..'^0')
            print('^6Language: '..Config.Language..'^0')
        
        elseif Config.Framework == 'qbcore' then
            print('^6Job Name: '..job_data.job_name..'^0')
            print('^6Job Grade: '..job_data.job_grade..'^0')
            print('^Gang Name: '..job_data.gang_name..'^0')
            print('^Gang Grade: '..job_data.gang_grade..'^0')
            print('^6Duty System: '..tostring(Config.UseDutySystem)..'^0')
            print('^6Language: '..Config.Language..'^0')

        elseif Config.Framework == 'standalone' then
            print('^6Identifier: '..job_data.Identifier..'^0')
            print('^Identifier Type: '..Config.IdentifierType..'^0')
            print('^6Language: '..Config.Language..'^0')
        end
        print('^6Admin Access: '..tostring(CheckAdminPerms())..'^0')
        print('^6-----------------------^0')
        TriggerServerEvent('cd_doorlock:Debug')
    end)
end