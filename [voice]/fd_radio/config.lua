Config = {}
Config.Framework = 'qb' -- Server core: QB - QBCore, ESX - ESX, none - Standalone
Config.CoreResource = 'qb-core' -- Only used for QBCore servers

Config.DefaultColor = "red" -- Options: default, white, red, blue, green, yellow
Config.AllowColorChange = true -- Allow personal color switch

Config.DefaultVolume = 50 -- 0 - 100
Config.MicClicks = true -- This enables pma-voice mic clicks
Config.RadioAnims = true -- This enables pma-voice radio animations
Config.CanMoveWhileRadioIsOpen = false -- Allow user to move while radio is open
Config.CanMoveWhileQuickRadioListIsOpen = false -- Allow user to move while quick radio list is open, what a name
Config.MaxFrequency = 999

Config.OpenRadioCommand = "radio" -- Command to open radio, false to disable
Config.UseItem = true -- Use item to open radio, this will work only for QB or ESX
Config.UseItemName = "radio" -- Item name to open radio
Config.UseRadioKey = 'u' -- Use radio key to open radio, if you want to disable this set it to false (command should be enabled if you want to use keybind)

Config.UseRanges = true
Config.DisableRangesForJobs = { 'police', 'ambulance' } -- disable ranges for custom jobs, example: { 'police', 'ambulance' }, used only for ESX and QB
Config.disableAutoSpectateModeDetection = false -- If disabled, ranges wont take effect on person who is spectating
Config.DefaultRadioFilter = {
    { name = "freq_low", value = 100.0 },
    { name = "freq_hi", value = 5000.0 },
    { name = "rm_mod_freq", value = 300.0 },
    { name = "rm_mix", value = 0.1 },
    { name = "fudge", value = 4.0 },
    { name = "o_freq_lo", value = 300.0 },
    { name = "o_freq_hi", value = 5000.0 },
    volume = {
        frontLeftVolume = 0.25,
        frontRightVolume = 1.0,
        rearLeftVolume = 0.0,
        rearRightVolume = 0.0,
        channel5Volume = 1.0,
        channel6Volume = 1.0
    },
}

Config.Ranges = {
    {
        effect = {
            { name = "freq_low", value = 100.0 },
            { name = "freq_hi", value = 5000.0 },
            { name = "rm_mod_freq", value = 300.0 },
            { name = "rm_mix", value = 0.5 },
            { name = "fudge", value = 11.0 },
            { name = "o_freq_lo", value = 300.0 },
            { name = "o_freq_hi", value = 5000.0 },
        },
        volume = {
            frontLeftVolume = 0.25,
            frontRightVolume = 1.0,
            rearLeftVolume = 0.0,
            rearRightVolume = 0.0,
            channel5Volume = 1.0,
            channel6Volume = 1.0
        },
        ranges = {
            min = 900,
            max = 1300.0
        }
    },
    {
        effect = {
            { name = "freq_low", value = 100.0 },
            { name = "freq_hi", value = 5000.0 },
            { name = "rm_mod_freq", value = 300.0 },
            { name = "rm_mix", value = 0.8 },
            { name = "fudge", value = 17.0 },
            { name = "o_freq_lo", value = 300.0 },
            { name = "o_freq_hi", value = 5000.0 },
        },
        volume = {
            frontLeftVolume = 0.25,
            frontRightVolume = 1.0,
            rearLeftVolume = 0.0,
            rearRightVolume = 0.0,
            channel5Volume = 1.0,
            channel6Volume = 1.0
        },
        ranges = {
            min = 1300.0,
            max = 1700.0
        }
    },
    {
        effect = {
            { name = "freq_low", value = 100.0 },
            { name = "freq_hi", value = 5000.0 },
            { name = "rm_mod_freq", value = 1500.0 },
            { name = "rm_mix", value = 1.3 },
            { name = "fudge", value = 25.0 },
            { name = "o_freq_lo", value = 300.0 },
            { name = "o_freq_hi", value = 5000.0 },
        },
        volume = {
            frontLeftVolume = 0.25,
            frontRightVolume = 1.0,
            rearLeftVolume = 0.0,
            rearRightVolume = 0.0,
            channel5Volume = 1.0,
            channel6Volume = 1.0
        },
        mute = true,
        ranges = {
            min = 1700.0,
            max = 2300.0
        }
    }
}

Config.JammerFilter = {
    effect = {
        { name = "freq_low", value = 100.0 },
        { name = "freq_hi", value = 5000.0 },
        { name = "rm_mod_freq", value = 1500.0 },
        { name = "rm_mix", value = 1.3 },
        { name = "fudge", value = 30.0 },
        { name = "o_freq_lo", value = 300.0 },
        { name = "o_freq_hi", value = 5000.0 },
    },
    volume = {
        frontLeftVolume = 0.25,
        frontRightVolume = 1.0,
        rearLeftVolume = 0.0,
        rearRightVolume = 0.0,
        channel5Volume = 1.0,
        channel6Volume = 1.0
    },
}

Config.AllChanelsHaveUserList = false -- If enabled, all channels will have user list
Config.AllWhitelistedChannelsHaveUserList = true -- If enabled, all radio will have user list
Config.IsExternalUsersListEnabledByDefault = false -- If enabled, external users list will be enabled and shown
Config.CanExternalUsersListBeToggled = true -- if enabled, external users list can be toggled

Config.QuickJoinCommand = 'qradio' -- Command to join radio channel, to disable it set it to false

Config.UseCustomChannelNames = {
    [1] = "PD Radio Endless name",
    [1.11] = 'Chase 1',
    [1.12] = 'Chase 2'
}

Config.WhitelistedAccess = {
    [1] = {
        ['police'] = true,
        ['ambulance'] = true
    }
}

Config.ChannelsWhichHasList = {
    -- [1] = true
}

-- Disables range for specific channels
Config.DisableRangeForChannels = {
    [1] = true
}

Config.AllChannelsCanBeLocked = false -- Specify if all public channels can be locked (won't work on whitelisted channels)
Config.ChannelsWhichCanBeLocked = { -- if above is false, Specify which channels can be locked (won't work on whitelisted channels)
    [2] = true
}

Config.AllowJammers = false -- Allow jammers to be used
Config.JammerRadius = 20
Config.JammerPickUpUse = '3d' -- Avaiable: 3d (draws 3d text above jammer), qb-target, qtarget, ox_target
Config.PlaceJammerCommand = 'placejammer' -- Command to place jammer, to disable it set it to false (only work with Framework = none)
Config.UseJammerItem = false -- Item name to use as jammer, only works with QB or ESX, set false to disable
Config.JammerItemName = "radio_jammer"
Config.MinimumDistanceBetweenJammers = 100
Config.DisableJammerForJobs = { 'police' } -- Only works for QB or ESX
Config.DisableJammerForChannels = {
    [2] = true
}

-- Quick join list
Config.QuickListCommand = 'rlist' -- Command to open quick join list, to disable it set it to false
Config.QuickListKeyBind = 'l' -- Keybind to open quick join list, to disable it set it to false (command should be enabled if you want to use keybind)
Config.QuickListForJobs = {
    ['police'] = {
        [1] = 'General PD Channel',
        [2] = 'General PD Channel',
        [3] = 'General PD Channel',
        [4] = 'General PD Channel',
        [5] = 'General PD Channel',
        [6] = 'General PD Channel',
        [7] = 'General PD Channel',
        [8] = 'General PD Channel',
        [9] = 'General PD Channel',
        [10] = 'General PD Channel',
    }
}


-- Don't touch
Config.DefaultSettings = {
    volume = Config.DefaultVolume,
    frame = Config.DefaultColor,
    size = "medium",
    signs = {
        sign = '',
        name = '',
    },
    position = {
        bottom = 0,
        right = 0
    }
}
