Config = {}
Config.StressChance = 0.1 -- Default: 10% -- Percentage Stress Chance When Shooting (0-1)
Config.UseMPH = true -- If true speed math will be done as MPH, if false KPH will be used
Config.MinimumStress = 50 -- Minimum Stress Level For Screen Shaking
Config.MinimumSpeedUnbuckled = 50 -- Going Over This Speed Will Cause Stress
Config.MinimumSpeed = 100 -- Going Over This Speed Will Cause Stress

-- Stress

Config.WhitelistedWeapons = {
    'weapon_petrolcan',
    'weapon_hazardcan',
    'weapon_fireextinguisher'
}

Config.Intensity = {
    ["shake"] = {
        [1] = {
            min = 50,
            max = 60,
            intensity = 0.06,
        },
        [2] = {
            min = 60,
            max = 70,
            intensity = 0.09,
        },
        [3] = {
            min = 70,
            max = 80,
            intensity = 0.11,
        },
        [4] = {
            min = 80,
            max = 90,
            intensity = 0.14,
        },
        [5] = {
            min = 90,
            max = 100,
            intensity = 0.16,
        },
    }
}

Config.EffectInterval = {
    [1] = {
        min = 50,
        max = 60,
        timeout = math.random(40000, 50000)
    },
    [2] = {
        min = 60,
        max = 70,
        timeout = math.random(30000, 40000)
    },
    [3] = {
        min = 70,
        max = 80,
        timeout = math.random(20000, 30000)
    },
    [4] = {
        min = 80,
        max = 90,
        timeout = math.random(10000, 20000)
    },
    [5] = {
        min = 90,
        max = 100,
        timeout = math.random(5000, 15000)
    }
}