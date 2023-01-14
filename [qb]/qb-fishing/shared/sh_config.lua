Shared = {} or Shared

Shared.CastTimeMin = 5 -- Minimum Time in seconds between fishing and minigame
Shared.CastTimeMax = 8 -- Maximum Time in seconds between fishing and minigame

Shared.MinigameCirclesMin = 2 -- Minigame: Minimum amount of circles
Shared.MinigameCirclesMax = 3 -- Minigame: Maximum amount of circles
Shared.MinigameTime = 20 -- Minigame: Amount of time in seconds

Shared.SellLocation = vector4(1348.36, 4317.34, 37.04, 83.71)

Shared.FishingZones = {
    [1] = { -- Example of a BoxZone (box = true)
        coords = vector3(713.31, 4113.7, 35.78),
        heading = 179,
        length = 44.4,
        width = 50.0,
        minZ = 33.78,
        maxZ = 36.98,
        box = true,
    },
    [2] = { -- Example of a BoxZone (box = true)
        coords = vector3(1310.93, 4229.13, 33.92),
        heading = 179,
        length = 44.4,
        width = 50.0,
        minZ = 33.78,
        maxZ = 36.98,
        box = true,
    },  
}