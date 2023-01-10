Config = {}
function L(cd) if Locales[Config.Language][cd] then return Locales[Config.Language][cd] else print('Locale is nil ('..cd..')') end end
--███████╗██████╗  █████╗ ███╗   ███╗███████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗
--██╔════╝██╔══██╗██╔══██╗████╗ ████║██╔════╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝
--█████╗  ██████╔╝███████║██╔████╔██║█████╗  ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ 
--██╔══╝  ██╔══██╗██╔══██║██║╚██╔╝██║██╔══╝  ██║███╗██║██║   ██║██╔══██╗██╔═██╗ 
--██║     ██║  ██║██║  ██║██║ ╚═╝ ██║███████╗╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗
--╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝ ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝


Config.Framework = 'esx' ---[ 'esx' / 'qbcore' / 'standalone' / 'other' ] Choose your framework.
Config.Language = 'EN' --[ 'EN' / 'NL' ] You can add your own locales to the Locales.lua. But make sure to add it here.

Config.FrameworkTriggers = { --You can change the esx/qbcore events (IF NEEDED).
    main = 'esx:getSharedObject',   --ESX = 'esx:getSharedObject'   QBCORE = 'QBCore:GetObject'
    load = 'esx:playerLoaded',      --ESX = 'esx:playerLoaded'      QBCORE = 'QBCore:Client:OnPlayerLoaded'
    job = 'esx:setJob',             --ESX = 'esx:setJob'            QBCORE = 'QBCore:Client:OnJobUpdate'
	resource_name = 'es_extended'   --ESX = 'es_extended'           QBCORE = 'qb-core'
}

Config.NotificationType = { --[ 'esx' / 'qbcore' / 'mythic_old' / 'mythic_new' / 'chat' / 'other' ] Choose your notification script.
    server = 'esx',
    client = 'esx'
}


--██╗███╗   ███╗██████╗  ██████╗ ██████╗ ████████╗ █████╗ ███╗   ██╗████████╗
--██║████╗ ████║██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝██╔══██╗████╗  ██║╚══██╔══╝
--██║██╔████╔██║██████╔╝██║   ██║██████╔╝   ██║   ███████║██╔██╗ ██║   ██║   
--██║██║╚██╔╝██║██╔═══╝ ██║   ██║██╔══██╗   ██║   ██╔══██║██║╚██╗██║   ██║   
--██║██║ ╚═╝ ██║██║     ╚██████╔╝██║  ██║   ██║   ██║  ██║██║ ╚████║   ██║   
--╚═╝╚═╝     ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝


Config.Debug = {
    prints = false, --To enable debug prints.
    drawLines = false, --The outlines of the seperate ranges.
    outerLines = {
        ['LS'] = {
            front_left = vector3(12.22,-1091.27,29.9),
            front_right = vector3(20.81,-1094.38,29.9),
            rear_left = vector3(13.98,-1084.10,29.9),
            rear_right =  vector3(23.19,-1087.49,29.9),
        },
        ['SF'] = {
            front_left = vector3(824.89,-2168.94,29.9),
            front_right = vector3(815.67,-2169.01,29.9),
            rear_left = vector3(825.42,-2176.50,29.9),
            rear_right =  vector3(815.72,-2176.58,29.9),
        },
    }
}


--███╗   ███╗ █████╗ ██╗███╗   ██╗
--████╗ ████║██╔══██╗██║████╗  ██║
--██╔████╔██║███████║██║██╔██╗ ██║
--██║╚██╔╝██║██╔══██║██║██║╚██╗██║
--██║ ╚═╝ ██║██║  ██║██║██║ ╚████║
--╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝


Config.timeRange = 15 -- in seconds. Time for which you can shoot for.
Config.waitCooldown = 5 -- in seconds. Time to wait before you can actually start shooting


Config.gunRangeLocation = { --⚠️PLEASE READ⚠️; DONT CHANGE THESE IF YOU DONT KNOW WHAT YOUR DOING.
    ['LS'] = {
        propTarget = `gr_prop_gr_target_05c`, --The main gunrange target prop.
        propArm = `prop_target_arm_b`, --The arm/handle of the main gunrange target prop.
        target_mirror = true,
        scoring = 'ammunation',
        [1] = {
            defaultCoords = vector3(14.65,-1085.87,30.9695),
            frontCoords = vector3(12.650,-1091.39,30.9695),
            backCoords = vector3(15.15,-1084.49,30.9695),
            booth = {
                right = vector3(11.15,-1096.07,29.80),
                left= vector3(10.79,-1095.98,29.80)
            }
        },
        [2] = {
            defaultCoords = vector3(16.1398,-1085.875,30.9695),
            frontCoords = vector3(13.98,-1091.80,30.9),
            backCoords = vector3(16.45,-1085.0,30.9695),
            booth = {
                right = vector3(12.59,-1096.47,29.80),
                left= vector3(12.0,-1096.28,29.80)
            }
        },
        [3] = {
            defaultCoords = vector3(16.48412,-1088.877,30.9695),
            frontCoords = vector3(15.30,-1092.30,30.9),
            backCoords = vector3(17.75,-1085.53,30.9),
            booth = {
                right = vector3(13.89,-1096.94,29.80),
                left= vector3(13.33,-1096.74,29.80)
            }
        },
        [4] = {
            defaultCoords = vector3(18.31554,-1088.023,30.9695),
            frontCoords = vector3(16.60,-1092.72,30.9),
            backCoords = vector3(19.05,-1086.0,30.9),
            booth = {
                right = vector3(15.20,-1097.42,29.80),
                left= vector3(14.64,-1097.22,29.80)
            }
        },
        [5] = {
            defaultCoords = vector3(20.25432,-1086.745,30.9695),
            frontCoords = vector3(18.0,-1093.10,30.9),
            backCoords = vector3(20.35,-1086.53,30.9),
            booth = {
                right = vector3(16.46,-1098.0,29.80),
                left= vector3(15.90,-1097.82,29.80)
            }
        },
        [6] = {
            defaultCoords = vector3(21.02761,-1088.689,30.9695),
            frontCoords = vector3(19.30,-1093.54,30.9),
            backCoords = vector3(21.60,-1087.0,30.9),
            booth = {
                right = vector3(17.77,-1098.49,29.80),
                left= vector3(17.20,-1098.30,29.80)
            }
        },
        [7] = {
            defaultCoords = vector3(21.84576,-1090.49,30.9695),
            frontCoords = vector3(20.56,-1094.0,30.9),
            backCoords = vector3(22.95,-1087.51,30.9),
            booth = {
                right = vector3(19.07,-1098.96,29.80),
                left= vector3(18.52,-1098.76,29.80)
            }
        }
    },
    ['SF'] ={
        target_mirror = true,
        propTarget = `gr_prop_gr_target_05c`, --The main gunrange target prop.
        propArm = `prop_target_arm_b`, --The arm/handle of the main gunrange target prop.
        scoring = 'ammunation',
        [1] = {
            defaultCoords = vector3(824.3883,-2174.764,30.79148),
            frontCoords = vector3(824.42,-2168.83,30.79148),
            backCoords = vector3(824.42,-2176.46,30.79148),
            booth = {
                right = vector3(824.04,-2164.16,29.62),
                left= vector3(824.68,-2164.13,29.62)
            }
        },
        [2] = {
            defaultCoords = vector3(822.993,-2175.272,30.79148),
            frontCoords = vector3(823.0,-2168.85,30.79148),
            backCoords = vector3(823.0,-2176.48,30.79148),
            booth = {
                right = vector3(822.71,-2164.08,29.80),
                left= vector3(823.35,-2164.12,29.80)
            }
        },
        [3] = {
            defaultCoords = vector3(821.6084,-2172.475,30.79148),
            frontCoords = vector3(821.75,-2168.90,30.79148),
            backCoords = vector3(821.75,-2176.53,30.79148),
            booth = {
                right = vector3(821.32,-2164.12,29.80),
                left= vector3(821.94,-2164.05,29.80)
            }
        },
        [4] = {
            defaultCoords = vector3(820.2137,-2173.998,30.79148),
            frontCoords = vector3(820.37,-2168.82,30.79148),
            backCoords = vector3(820.37,-2176.35,30.79148),
            booth = {
                right = vector3(819.93,-2164.10,29.80),
                left= vector3(820.54,-2164.05,29.80)
            }
        },
        [5] = {
            defaultCoords = vector3(818.829,-2175.862,30.79148),
            frontCoords = vector3(819.02,-2168.90,30.79148),
            backCoords = vector3(819.02,-2176.03,30.79148),
            booth = {
                right = vector3(818.54,-2164.11,29.80),
                left= vector3(819.09,-2164.13,29.80)
            }
        },
        [6] = {
            defaultCoords = vector3(817.4376,-2174.30,30.79148),
            frontCoords = vector3(817.61,-2168.93,30.79148),
            backCoords = vector3(817.61,-2176.16,30.79148),
            booth = {
                right = vector3(817.15,-2164.11,29.80),
                left= vector3(817.75,-2164.0,29.80)
            }
        },
        [7] = {
            defaultCoords = vector3(816.0527,-2172.887,30.79148),
            frontCoords = vector3(816.06,-2168.86,30.79148),
            backCoords = vector3(816.06,-2175.86,30.79148),
            booth = {
                right = vector3(815.76,-2164.10,29.80),
                left= vector3(816.36,-2164.10,29.80)
            }
        }
    },
    --[[ SOON TM
    ['MRPD'] ={
        target_mirror = true,
        propTarget = -429999573, --The main gunrange target prop.
        propArm = nil, --The arm/handle of the main gunrange target prop.
        scoring = 'mrpd',
        [1] = {
            defaultCoords = vector3(477.6246,-1005.546,32.765256),
            frontCoords = vector3(481.31,-1005.48,32.765256),
            backCoords = vector3(473.82,-1005.45,32.765256),
            booth = {
                right = vector3(484.67,-1005.09,30.71),
                left= vector3(484.69,-1006.04,30.71)
            }
        },
        [2] = {
            defaultCoords = vector3(474.3677,-1007.268,32.765256),
            frontCoords = vector3(481.33,-1007.19,32.765256),
            backCoords = vector3(474.15,-1007.21,32.765256),
            booth = {
                right = vector3(484.76,-1006.55,30.71),
                left= vector3(484.64,-1007.77,30.71)
            }
        },
        [3] = {
            defaultCoords = vector3(476.0225,-1008.991,32.765256),
            frontCoords = vector3(481.19,-1009.1,32.765256),
            backCoords = vector3(473.87,-1009.06,32.765256),
            booth = {
                right = vector3(484.75,-1008.69,30.71),
                left= vector3(484.75,-1009.35,30.71)
            }
        },
        [4] = {
            defaultCoords = vector3(474.8187,-1010.713,32.765256),
            frontCoords = vector3(481.08,-1010.96,32.765256),
            backCoords = vector3(473.84,-1010.65,32.765256),
            booth = {
                right = vector3(484.65,-1010.42,30.71),
                left= vector3(484.63,-1011.08,30.71)
            }
        },
        [5] = {
            defaultCoords = vector3(476.9908,-1012.435,32.765256),
            frontCoords = vector3(481.29,-1012.64,32.765256),
            backCoords = vector3(473.96,-1012.38,32.765256),
            booth = {
                right = vector3(484.70,-1012.03,30.71),
                left= vector3(484.66,-1012.83,30.71)
            }
        },
        [6] = {
            defaultCoords = vector3(476.796,-1014.157,32.765256),
            frontCoords = vector3(481.21,-1014.27,32.765256),
            backCoords = vector3(474.01,-1014.15,32.765256),
            booth = {
                right = vector3(484.68,-1013.73,30.71),
                left= vector3(484.66,-1014.65,30.71)
            }
        },
    }
    ]]
}

Config.scoreCategory = { --⚠️PLEASE READ⚠️; DONT CHANGE THESE IF YOU DONT KNOW WHAT YOUR DOING.
    [1] = {
        name='Special weapons',
        weaponList = {
            `weapon_stungun`,
            `weapon_flaregun`,
            `weapon_raypistol`,
        },
    },
    [2] = {
        name='Handguns',
        weaponList = {
            `weapon_appistol`,
            `weapon_combatpistol`,
            `weapon_doubleaction`,
            `weapon_heavypistol`,
            `weapon_revolver_mk2`,
            `weapon_revolver`,
            `weapon_pistol50`,
            `weapon_pistol_mk2`,
            `weapon_pistol`,
            `weapon_snspistol_mk2`,
            `weapon_snspistol`,
            `weapon_vintagepistol`,
            `weapon_marksmanpistol`
        },
    },
    [3] = {
        name='SMG',
        weaponList = {
            `weapon_machinepistol`,
            `weapon_microsmg`,
            `weapon_minismg`,
            `weapon_smg_mk2`,
            `weapon_smg`,
            `weapon_assaultsmg`
        }
    },
    [4] = {
        name='Snipers',
        weaponList = {
            `weapon_heavysniper_mk2`,
            `weapon_heavysniper`,
            `weapon_marksmanrifle_mk2`,
            `weapon_marksmanrifle`,
            `weapon_sniperrifle`,
            `weapon_musket`,
        }
    },
    [5] = {
        name='LMG',
        weaponList = {
            `weapon_mg`,
            `weapon_gusenberg`,
            `weapon_combatmg`,
            `weapon_combatmg_mk2`,
        }
    },
    [6] = {
        name='Assault Rifles',
        weaponList = {
            `weapon_advancedrifle`,
            `weapon_assaultrifle_mk2`,
            `weapon_bullpuprifle_mk2`,
            `weapon_bullpuprifle`,
            `weapon_carbinerifle_mk2`,
            `weapon_carbinerifle`,
            `weapon_compactrifle`,
            `weapon_specialcarbine_mk2`,
            `weapon_specialcarbine`,
            `weapon_assaultrifle`
        }
    },
    [7] = {
        name='Shotguns',
        weaponList = {
            `weapon_assaultshotgun`,
            `weapon_bullpupshotgun`,
            `weapon_dbshotgun`,
            `weapon_heavyshotgun`,
            `weapon_pumpshotgun`,
            `weapon_pumpshotgun_mk2`,
            `weapon_autoshotgun`,
            `weapon_sawnoffshotgun`
        }
    },
}

Config.Scoring = { --⚠️PLEASE READ⚠️; DONT CHANGE THESE IF YOU DONT KNOW WHAT YOUR DOING.
    ['ammunation'] = {
        [1] = {
            points=10,
            name='headshot',
            location = {
                left = -3.525,
                right = 5.2223,
                topz = 56.0,
                botz = 48.009,
            }
        },
        [2] = {
            points=10,
            name='center',
            location = {
                left = -6.45,
                right = 7.15,
                topz = 6.605,
                botz = -9.99,
            }
        },
        [3] = {
            points = 9,
            name="inner1",
            location = {
                left = -13.754,
                right = 15.100,
                topz = 15.0644,
                botz = -16.569,
            }
        },
        [4] = {
            points = 8,
            name="inner2",
            location = {
                left = -20.5739,
                right = 22.2024,
                topz = 21.7667,
                botz = -23.907,
            }
        },
        [5] = {
            points = 7,
            name="inner3",
            location = {
                left = -29.8640,
                right = 29.318,
                topz = 31.62,
                botz = -31.794,
            }
        },
    },
    ['mrpd'] = {
        offsetSide = -15,
        offsetHeight = 82,
        [1] = {
            points=10,
            name='headshot',
            location = {
                left = 5.9655,
                right = -9.3481,
                topz = 42.9687,
                botz = 27.7698,
            }
        },
        [2] = {
            points=10,
            name='center',
            location = {
                left = 0.4235,
                right = -4.3249,
                topz = 5.8239,
                botz = -0.19013,
            }
        },
        [3] = {
            points = 9,
            name="inner1",
            location = {
                left = 4.512,
                right = -8.2006,
                topz = 12.9612,
                botz = -6.6121,
            }
        },
        [4] = {
            points = 8,
            name="inner2",
            location = {
                left = 8.5046,
                right = -11.1730,
                topz = 17.6636,
                botz = -11.26,
            }
        },
        [5] = {
            points = 7,
            name="inner3",
            location = {
                left = 11.6906,
                right = -14.9938,
                topz = 23.3333,
                botz = -16.7474,
            }
        },
    },
}



--██╗  ██╗███████╗██╗   ██╗███████╗     █████╗ ███╗   ██╗██████╗      ██████╗ ██████╗ ███╗   ███╗███╗   ███╗ █████╗ ███╗   ██╗██████╗ ███████╗
--██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔════╝    ██╔══██╗████╗  ██║██╔══██╗    ██╔════╝██╔═══██╗████╗ ████║████╗ ████║██╔══██╗████╗  ██║██╔══██╗██╔════╝
--█████╔╝ █████╗   ╚████╔╝ ███████╗    ███████║██╔██╗ ██║██║  ██║    ██║     ██║   ██║██╔████╔██║██╔████╔██║███████║██╔██╗ ██║██║  ██║███████╗
--██╔═██╗ ██╔══╝    ╚██╔╝  ╚════██║    ██╔══██║██║╚██╗██║██║  ██║    ██║     ██║   ██║██║╚██╔╝██║██║╚██╔╝██║██╔══██║██║╚██╗██║██║  ██║╚════██║
--██║  ██╗███████╗   ██║   ███████║    ██║  ██║██║ ╚████║██████╔╝    ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║██║  ██║██║ ╚████║██████╔╝███████║
--╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝    ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝      ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝


Config.Start = {
    ENABLE = true, --Do you want to allow player's to start a ranked gunrange session?
    command = 'gunrange_start',
    description = L('command_start'),
}

Config.MoveTarget = {
    ENABLE = true, --Do you want to allow player's to move the gunrange targets?
    command = 'gunrange_movetarget', --The chat command.
    description = L('command_movetarget'), --The chat command's description.
}

Config.ScoreBoard = {
    ENABLE = true, --Do you want to allow player's to view the scoreboard from ranked gunrange sessions?
    command ='gunrange_scoreboard',
    description = L('command_scoreboard')
}

Config.PracticeMode = {
    ENABLE = true, --Do you want to allow player's to practise in a unranked gunrange session?
    command = 'gunrange_practice',
    description = L('command_practice'),
}


-- ██████╗ ████████╗██╗  ██╗███████╗██████╗ 
--██╔═══██╗╚══██╔══╝██║  ██║██╔════╝██╔══██╗
--██║   ██║   ██║   ███████║█████╗  ██████╔╝
--██║   ██║   ██║   ██╔══██║██╔══╝  ██╔══██╗
--╚██████╔╝   ██║   ██║  ██║███████╗██║  ██║
-- ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝


function Round(cd) return math.floor(cd+0.5) end
function Trim(cd) return cd:gsub('%s+', '') end