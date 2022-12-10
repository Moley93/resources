Config = {
    Framework = "qb-core",
    -- Replace qb apartments
    ReplaceApartment = true,
    ESX = {
        script_name = {},
        event_name = {
            get_society = "esx_society:getSociety",
            get_shared_account = "esx_addonaccount:getSharedAccount"
        }
    },

    QB = {
        script_name = {
            target = "qb-target",
            management = "qb-management",
            menu = 'qb-menu'
        },
        event_name = {
            doorlock_updatestate = "qb-doorlock:server:updateState",
            weathersync = "qb-weathersync:client:EnableSync",
            playerunload = "QBCore:Client:OnPlayerUnload",
            playerloaded = "QBCore:Client:OnPlayerLoaded",
            setplayerdata = "QBCore:Player:SetPlayerData",
            choosechar = "jl-multicharacter:client:chooseChar",
            createlog = "qb-log:server:CreateLog",
        }
    },

    Renew = '2w',

    OxLib = {
        menu = true
    },

    DisableLogout = false,

    OxDoorlock = false,

    Logs = true,

    KeyLimit = 3,

    Stash = {
        slot = 20,
        maxweight = 1000000,
        -- it mean only the owner can unlock the stash
        owneronly = true
    },

    Icon = {
        stash = 'fas fa-briefcase',
        outfit = 'fas fa-tshirt',
        logout = 'fas fa-user',
        motel = 'fas fa-home',
        lock = 'fas fa-lock',
        unlock = 'fas fa-lock-open',
        lock_door = 'fas fa-door-closed',
        unlock_door = 'fas fa-door-open',
        inside_menu = 'fas fa-hand',
        exit = 'fas fa-door-open'
    },

    Police = {
        'police'
    },

    DebugPoly = false,

    Target = {
        stash = true,
        logout = true,
        outfit = false,
        exit = false,
        ped = true
    },

    DefaultImage = "https://media.discordapp.net/attachments/1011890882968031272/1012744448104480869/wallpaperflare.com_wallpaper_1.jpg",

    MinZOffset = 30,

    Motel = {}

}
