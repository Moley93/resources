-- If Config.Reputation = true the player must reach this level to unlock T1 houses
Config.T1_RequiredLvl = 1

-- Set the T1 circle / ps-circle minigame difficulty - https://github.com/Nathan-FiveM/qb-lock
Config.T1_Difficulty = {
    ["circles"] = { 3, 4 }, -- [1] = min, [2] = max
    ["speed"] = { 8, 9 } -- [1] = min, [2] = max
}

-- T1 house locations
Config.T1_Houses = {
    --[[****************************GROVE STREET***************************--]]
    [1] = {
        ["interior"] = 1, -- Set the interior ID for this house, T1 interior list: interiors/tier1.lua
        ["location"] = vector3(29.54, -1854.5, 24.07), -- Set the entry door location for this house
        ["heading"] = 225.12, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [2] = {
        ["interior"] = 1, -- Set the interior ID for this house, T1 interior list: interiors/tier1.lua
        ["location"] = vector3(399.67, -1864.8, 26.72), -- Set the entry door location for this house
        ["heading"] = 138.31, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [3] = {
        ["interior"] = 1, -- Set the interior ID for this house, T1 interior list: interiors/tier1.lua
        ["location"] = vector3(45.9, -1864.33, 23.28), -- Set the entry door location for this house
        ["heading"] = 317.57, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [4] = {
        ["interior"] = 1, -- Set the interior ID for this house, T1 interior list: interiors/tier1.lua
        ["location"] = vector3(54.28, -1872.91, 22.8), -- Set the entry door location for this house
        ["heading"] = 309.59, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [5] = {
        ["interior"] = 1, -- Set the interior ID for this house, T1 interior list: interiors/tier1.lua
        ["location"] = vector3(39.2, -1911.35, 21.95), -- Set the entry door location for this house
        ["heading"] = 72.99, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [6] = {
        ["interior"] = 1, -- Set the interior ID for this house, T1 interior list: interiors/tier1.lua
        ["location"] = vector3(56.81, -1922.89, 21.91), -- Set the entry door location for this house
        ["heading"] = 147.18, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [7] = {
        ["interior"] = 1, -- Set the interior ID for this house, T1 interior list: interiors/tier1.lua
        ["location"] = vector3(114.34, -1961.2, 21.33), -- Set the entry door location for this house
        ["heading"] = 203.65, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [8] = {
        ["interior"] = 1, -- Set the interior ID for this house, T1 interior list: interiors/tier1.lua
        ["location"] = vector3(1261.47, -1616.83, 54.74), -- Set the entry door location for this house
        ["heading"] = 224.87, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [9] = {
        ["interior"] = 1, -- Set the interior ID for this house, T1 interior list: interiors/tier1.lua
        ["location"] = vector3(1193.47, -1622.27, 45.22), -- Set the entry door location for this house
        ["heading"] = 311.79, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
    [10] = {
        ["interior"] = 1, -- Set the interior ID for this house, T1 interior list: interiors/tier1.lua
        ["location"] = vector3(1365.65, -1721.74, 65.63), -- Set the entry door location for this house
        ["heading"] = 197.52, -- Set the entry door heading for this house
        ["unlocked"] = false, -- Do not change
        ["authorised"] = false, -- Do not change
        ["poly"] = false, -- Do not change
    },
}

-- Set the item used to break in to T1 houses
Config.T1_RequiredBreakIn = "lockpick"

-- Set the item used to crack in to T1 safes
Config.T1_RequiredSafeCracker = "lockpick"

-- Set the reward items for T1 search locations
Config.T1_RewardItems = {
    ["common"] = { ["chance"] = 100, ["exp"] = { 55, 95 },
        [1] = {
            ["item"] = "twerks_candy",
            ["amount"] = { 1, 2 },
        },
        [2] = {
            ["item"] = "joint",
            ["amount"] = { 1, 2 },
        },
        [3] = {
            ["item"] = "pistol_ammo",
            ["amount"] = { 1, 2 },
        },
        [4] = {
            ["item"] = "bandage",
            ["amount"] = { 1, 2 },
        },
    },
    ["uncommon"] = { ["chance"] = 55, ["exp"] = { 95, 135 },
        [1] = {
            ["item"] = "joint",
            ["amount"] = { 1, 3 },
        },
        [2] = {
            ["item"] = "trackerdisabler",
            ["amount"] = { 1, 2 },
        },
        [3] = {
            ["item"] = "advancedlockpick",
            ["amount"] = { 1, 3 },
        }
    },
    ["rare"] = { ["chance"] = 35, ["exp"] = { 135, 175 },
        [1] = {
            ["item"] = "femaleseed",
            ["amount"] = { 5, 10 },
        },
        [2] = {
            ["item"] = "t1_safe_key",
            ["amount"] = { 1, 1 },
        },
        [3] = {
            ["item"] = "laptop",
            ["amount"] = { 1, 1 },
        },
    },
    ["noway"] = { ["chance"] = 15, ["exp"] = { 175, 215 },
        [1] = {
            ["item"] = "vpn",
            ["amount"] = { 1, 1 },
        },
        [2] = {
            ["item"] = "mwkey",
            ["amount"] = { 1, 1 },
        },
        [3] = {
            ["item"] = "fitbit",
            ["amount"] = { 1, 5 },
        },
        [4] = {
            ["item"] = "smallscales",
            ["amount"] = { 1, 1 },
        }
    },
}

-- Set the reward items for T1 safes
Config.T1_SafeRewardItems = {
    ["common"] = { ["chance"] = 100, ["exp"] = { 100, 175 },
        [1] = {
            ["item"] = "twerks_candy",
            ["amount"] = { 1, 2 },
        },
        [2] = {
            ["item"] = "joint",
            ["amount"] = { 1, 2 },
        },
        [3] = {
            ["item"] = "pistol_ammo",
            ["amount"] = { 1, 2 },
        },
        [4] = {
            ["item"] = "bandage",
            ["amount"] = { 1, 2 },
        },
    },
    ["uncommon"] = { ["chance"] = 55, ["exp"] = { 125, 200 },
        [1] = {
            ["item"] = "joint",
            ["amount"] = { 1, 3 },
        },
        [2] = {
            ["item"] = "trackerdisabler",
            ["amount"] = { 1, 2 },
        },
        [3] = {
            ["item"] = "advancedlockpick",
            ["amount"] = { 1, 3 },
        }
    },
    ["rare"] = { ["chance"] = 35, ["exp"] = { 135, 200 },
        [1] = {
            ["item"] = "femaleseed",
            ["amount"] = { 5, 10 },
        },
        [2] = {
            ["item"] = "t1_safe_key",
            ["amount"] = { 1, 1 },
        },
        [3] = {
            ["item"] = "laptop",
            ["amount"] = { 1, 1 },
        },
    },
    ["noway"] = { ["chance"] = 15, ["exp"] = { 175, 215 },
        [1] = {
            ["item"] = "vpn",
            ["amount"] = { 1, 1 },
        },
        [2] = {
            ["item"] = "mwkey",
            ["amount"] = { 1, 1 },
        },
        [3] = {
            ["item"] = "fitbit",
            ["amount"] = { 1, 5 },
        },
        [4] = {
            ["item"] = "smallscales",
            ["amount"] = { 1, 1 },
        }
    },
}

-- Set the amount of cash rewarded for T1 cash piles
Config.T1_RewardCashAmount = { 150, 250 } -- [1] = min, [2] = max
