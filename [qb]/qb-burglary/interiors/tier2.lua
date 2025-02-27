-- T2 house interiors
Config.T2_Interiors = {
    --[[****************************INTERIOR ID #1***************************--]]
    --[[**********************IPL 346.63, -1013.04, -99.2********************--]]
    [1] = {
        -- ipl_spawn: Interior spawn coords
        ["ipl_spawn"] = vector3(346.63, -1013.04, -99.2),
        -- locations: Search & pickup locations
        ["locations"] = {
            [1] = {
                ["name"] =  { "cabinet" },
                ["spawn"] = { vector3(345.8148, -1001.735, -99.31391), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [2] = {
                ["name"] = { "bookshelves" },
                ["spawn"] = { vector3(345.31, -996.68, -99.2), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [3] = {
                ["name"] = { "bookshelves" },
                ["spawn"] = { vector3(345.38, -993.86, -99.2), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [4] = {
                ["name"] = { "USB", "trojan_usb" },
                ["spawn"] = { vector3(341.21, -996.033, -99.65697), },
                ["rotation"] = { vector3(0.0, -0.0, 95.3), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "hei_prop_hst_usb_drive",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [5] = {
                ["name"] = { "laptop", "laptop" },
                ["spawn"] = { vector3(339.0254, -994.3307, -99.5625), },
                ["rotation"] = { vector3(0, 0, 165.3627), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_laptop_01a",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [6] = {
                ["name"] = { "iPhone", "iphone" },
                ["spawn"] = { vector3(341.2273, -996.6380, -99.5858 - 0.14), },
                ["rotation"] = { vector3(-90, -179.99, 0.0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_phone_ing",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [7] = {
                ["name"] = { "shelves" },
                ["spawn"] = { vector3(340.87, -1003.45, -99.2), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [8] = {
                ["name"] = { "TV", "bigtv" },
                ["spawn"] = { vector3(338.11, -996.59, -99.2), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_tv_flat_01",
                ["create"] = false,
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [9] = {
                ["name"] = { "drawers" },
                ["spawn"] = { vector3(339.26, -1003.42, -99.2), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [10] = {
                ["name"] = { "coffee", "coffee" },
                ["spawn"] = { vector3(339.6874, -1000.875, -99.46332), },
                ["rotation"] = { vector3(0, 0, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "v_club_vu_coffeecup",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [11] = {
                ["name"] = { "watch", "rolex" },
                ["spawn"] = { vector3(339.2371, -1002.125, -99.46332), },
                ["rotation"] = { vector3(0.0, -0.0, 168.09), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "p_watch_01",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [12] = {
                ["name"] = { "microwave", "microwave" },
                ["spawn"] = { vector3(344.07, -1002.07, -99.2), },
                ["rotation"] = { vector3(0, 0, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_micro_01",
                ["create"] = false,
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [13] = {
                ["name"] = { "sandwich", "sandwich" },
                ["spawn"] = { vector3(342.0264, -1003.767, -99.23022), },
                ["rotation"] = { vector3(0.0000, 0.0000, 174.7007), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_sandwich_01",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [14] = {
                ["name"] = { "cash" },
                ["spawn"] = { vector3(344.6635, -1003.612, -99.23022), },
                ["rotation"] = { vector3(0, 0, 0), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_cash_pile_02",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [15] = {
                ["name"] = { "bedside Cabinet" },
                ["spawn"] = { vector3(348.9243, -994.858, -99.6392), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [16] = {
                ["name"] = { "drawers" },
                ["spawn"] = { vector3(351.2568, -999.6083, -99.25986), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [17] = {
                ["name"] = { "storage Box" },
                ["spawn"] = { vector3(351.98, -998.76, -99.2), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["poly"] = false,
                ["animation"] = "idle_e",
                ["animDict"] = "random@train_tracks",
                ["time"] = math.random(5500, 7500),
            },
            [18] = {
                ["name"] = { "pills?", "oxy" },
                ["spawn"] = { vector3(351.9172, -999.6716, -99.25986), },
                ["rotation"] = { vector3(0, 0, -54.5556), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_cs_pills",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [19] = {
                ["name"] = { "pills?", "oxy" },
                ["spawn"] = { vector3(347.8461, -992.6426, -99.18221), },
                ["rotation"] = { vector3(0, 0, -54.5556), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_cs_pills",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
            [20] = {
                ["name"] = { "pills?", "oxy" },
                ["spawn"] = { vector3(347.5933, -992.5989, -99.18221), },
                ["rotation"] = { vector3(0, 0, -54.5556), },
                ["searched"] = false,
                ["chance"] = { math.random(100), 75 },
                ["model"] = "prop_cs_pills",
                ["create"] = true,
                ["poly"] = false,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
        },
        -- security: Security panel locations
        ["security"] = {
            [1] = {
                ["spawn"] = { 
                    vector3(347.8694, -1003.035, -98.79631),
                    vector3(342.0334, -1000.475, -98.6573),
                    vector3(341.3936, -1000.452, -98.6573)
                },
                ["rotation"] = {
                    vector3(0, 0, 180.0),
                    vector3(0, 0, 90.33),
                    vector3(0, 0, 269.0)
                },
                ["disabled"] = false,
                ["model"] = "prop_ld_keypad_01",
                ["create"] = true,
                ["beeps"] = 25,
            },
        },
        -- safe: Safe box locations
        ["safe"] = {
            [1] = {
                ["name"] = "Safe",
                ["spawn"] = {
                    --vector3(345.7524, -993.5848, -100.055),
                    --vector3(349.1863, -995.5352, -100.1962),
                    vector3(352.724, -992.8073, -100.1962)
                },
                ["rotation"] = {
                    --vector3(0, 0, 0),
                    --vector3(0, 0, 0),
                    vector3(0, 0, 0)
                },
                ["searched"] = false,
                ["model"] = "prop_box_guncase_01a",
                ["chance"] = { math.random(100), 100 },
                ["create"] = true,
                ["animation"] = "idle_a",
                ["animDict"] = "amb@world_human_bum_wash@male@low@idle_a",
                ["time"] = math.random(5500, 7500),
            },
        },
        -- key: Safe box key locations
        ["key"] = {
            [1] = {
                ["name"] = { "Key", "t2_safe_key" },
                ["spawn"] = { 
                    vector3(339.7308, -1001.358, -99.46332), 
                    vector3(350.5808, -999.7192, -99.25986), 
                    vector3(343.5361, -994.2501, -99.74443)
                },
                ["rotation"] = { 
                    vector3(0, 0, 0), 
                    vector3(0, 0, 0), 
                    vector3(0, 0, 0) 
                },
                ["model"] = "prop_cuff_keys_01",
                ["chance"] = { math.random(100), 100 },
                ["create"] = true,
                ["animation"] = "putdown_low",
                ["animDict"] = "pickup_object",
                ["time"] = math.random(750, 1500),
            },
        },
        -- residents: Homeowner ped locations
        ["residents"] = {
            [1] = {
                ["spawn"] = { vector4(349.4, -996.53, -98.54 - 1.0, 3.11), },
                ["model"] = { "a_f_y_fitness_01", },
                ["chance"] = { math.random(100), 65 },
                ["animation"] = { "idle_c" },
                ["animDict"] = { "timetable@tracy@sleep@" },
                ["weapon"] = { "", },
            },
            [2] = {
                ["spawn"] = { vector4(350.67, -1008.25, -99.2 - 1.0, 90.64), },
                ["model"] = { "a_m_m_beach_01", },
                ["chance"] = { math.random(100), 55 },
                ["animation"] = { "idle_a" },
                ["animDict"] = { "amb@world_human_stand_guard@male@idle_a" },
                ["weapon"] = { "WEAPON_BAT", },
            },
        },
        -- sneaky: Hiding spot locations
        ["sneaky"] = {
            [1] = {
                ["spawn"] = { vector3(349.93, -993.56, -99.2) },
                ["rotation"] = { vector3(0, 0, 0) },
                ["heading"] = { 355.87 },
                ["chance"] = { math.random(100), 75 },
                ["create"] = false,
            },
            [2] = {
                ["spawn"] = { vector3(347.73, -995.53, -99.11) },
                ["rotation"] = { vector3(0, 0, 0) },
                ["heading"] = { 185.72 },
                ["chance"] = { math.random(100), 75 },
                ["create"] = false,
            },
        },
        -- poly: Do not change
        ["poly"] = false,
    },
}