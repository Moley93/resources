Config = {}

Config.Blip = {
    ["id"] = 477,
    ["color"] = 64,
    ["scale"] = 0.6
}

Config.TruckerCenter = {
    interaction = vector3(1208.73, -3115.13, 5.54),
    truck = {model = "phantom3", spawnCoords = vector4(1244.79, -3149.07, 5.72, 270.32)},
    trailerSpawnCoords = vector4(1276.44, -3160.18, 5.9, 90.73),
    truckReturnCoords = vector4(1244.79, -3149.07, 5.72, 270.32)
}

Config.minHealth = 900 --Vehicles Health is from 0-1000, if the trailer is delivered with health above the value set player is eligible for the pristine boost

Config.Upgrades = {
    --[[ Player will level up every 100 EXP earned ]]--
    --[[ Players start by default at level 0, that equals to NO BOOST activated ]]--
    --If the player have an higher level than the ones here configurated, script will always get the higher leveled for the boost

    ["distance"] = {--Distance level will increase your EXP earnings
        --You can add more boost levels 

        --Price required to upgrade // Required trucker level to upgrade // Percentage that will increase
        [1] = {price = 5000, requiredTruckerLevel = 0, percentageBoost = 10},
        [2] = {price = 10000, requiredTruckerLevel = 1, percentageBoost = 20},
        [3] = {price = 20000, requiredTruckerLevel = 2, percentageBoost = 40}
    },
    ["pristine"] = {--Pristine level will increase your money earnings when the trailer is delivered in good condition
        --You can add more boost levels

        --Price required to upgrade // Required trucker level to upgrade // Percentage that will increase
        [1] = {price = 5000, requiredTruckerLevel = 0, percentageBoost = 5},
        [2] = {price = 10000, requiredTruckerLevel = 1, percentageBoost = 10},
        [3] = {price = 20000, requiredTruckerLevel = 2, percentageBoost = 20}
    }
}

Config.WareHouses = {
    --You can add more warehouses
    --You can set different crates between warehouses

    [1] = {
        forkliftCoords = vector4(1097.64, -2231.58, 29.68, 227.97), --Spawn coords of the forklift
        crateModel = "prop_boxpile_06a",--The prop that will be created
        crates = {
            --You can add more crates
            vector4(1103.5, -2227.35, 30.32, 260.16),
            vector4(1106.61, -2227.87, 30.28, 261.45),
            vector4(1109.6, -2228.35, 30.26, 260.58)
        },
        beingUsed = false --Dont change this value
    }
}

Config.Routes = {
    --Routes are separated for each player trucker level
    --You can add more Levels
    --If the player have an higher level than the ones here configurated, script will always get the higher leveled Route Category
    --If you set the materialWarehouse value as 0, script will skip the forklift stage

    [0] = {
        --You can add more Routes to this level
        [1] = {trailerModel = "trailers4", materialWarehouse = 1, delivery = {dropCoords = vector4(2041.76, 3172.26, 44.98, 155.2), pedCoords = vector4(2041.86, 3163.47, 45.27, 46.98)}, rewardMoney = 250, rewardEXP = 10}
    },
    [1] = {
        --You can add more Routes to this level
        [1] = {trailerModel = "trailers2", materialWarehouse = 1, delivery = {dropCoords = vector4(2041.76, 3172.26, 44.98, 155.2), pedCoords = vector4(2041.86, 3163.47, 45.27, 46.98)}, rewardMoney = 500, rewardEXP = 15}
    },
    [2] = {
        --You can add more Routes to this level
        [1] = {trailerModel = "tanker", materialWarehouse = 0, delivery = {dropCoords = vector4(2041.76, 3172.26, 44.98, 155.2), pedCoords = vector4(2041.86, 3163.47, 45.27, 46.98)}, rewardMoney = 1000, rewardEXP = 25}
    },
    [3] = {
        --You can add more Routes to this level
        [1] = {trailerModel = "armytanker", materialWarehouse = 0, delivery = {dropCoords = vector4(2041.76, 3172.26, 44.98, 155.2), pedCoords = vector4(2041.86, 3163.47, 45.27, 46.98)}, rewardMoney = 2500, rewardEXP = 35}
    }
}

Locales = {
    ["BlipText"] = "Trucker center",
    ["openMenu"] = "[~o~E~w~] Access laptop",
    ["statsButton"] = "Your stats",
    ["upgradeButton"] = "Upgrades",
    ["startJobButton"] = "Start working",
    ["statLevel"] = "Trucker level: ",
    ["statEXP"] = "Trucker EXP: ",
    ["statDistance"] = "Distance level: ",
    ["statPristine"] = "Pristine level: ",
    ["upgradesTitle"] = "List of upgrades",
    ["distanceTitle"] = "Distance ",
    ["pristineTitle"] = "Pristine ",
    ["alreadyMaxLevel"] = "You already have the max level",
    ["levelRequired"] = "Level required: ",
    ["priceUpgrade"] = "Price: ",
    ["boostAmount"] = "Boost: ",
    ["percent"] = "%",
    ["distanceInfo"] = "This will increase the amount of EXP earnings.",
    ["pristineInfo"] = "This will increase the amount of MONEY earnings when the trailer is delivered in good condition.",
    ["noLevelRequired"] = "You dont have the required level",
    ["noMoney"] = "Insuficient money",
    ["successUpgrade"] = "Successfully upgraded",
    ["startButton"] = "Start looking for a route",
    ["pendingDelivery"] = "You have a pending delivery",
    ["spawnBlocked"] = "There is already some vehicle at the spawnpoint",
    ["routeFound"] = "Go outside, and get the trailer attached to the truck",
    ["driveWarehouse"] = "Drive to the warehouse so you can get the trailer loaded",
    ["warehouseBlip"] = "Warehouse",
    ["warehouseUsed"] = "This warehouse is currently being used by another trucker, you will have to wait him",
    ["forkliftStage"] = "The warehouse manager left the packages so you can load it",
    ["putContainerOnTrailer"] = "[~o~E~w~] Put the container",
    ["forkliftDone"] = "All crates has been loaded, get into your truck",
    ["driveToDelivery"] = "Drive to the delivery location at your GPS",
    ["deliveryBlip"] = "Delivery",
    ["parkStage"] = "Park the trailer correctly so you can talk to the guy",
    ["giveClipboard"] = "[~o~E~w~] Give the sign board",
    ["stillAttached"] = "Detach the trailer, or do you want to run with it?",
    ["parkIncorrect"] = "Park the trailer correctly, or do you want me to call your boss?",
    ["requestPen"] = "Do you have a ~g~pen~w~?",
    ["returnTruck"] = "Drive back to the truck center to get paid",
    ["returnTruckInteract"] = "[~o~E~w~] Return truck",
    ["paidNotification"] = "You received: ",
    ["returnNotTruck"] = "This is not the truck we provided you"
}

function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 100)
    ClearDrawOrigin()
end