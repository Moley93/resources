Config = {}

--!!! NOTE YOU HAVE TO CONFIGURE EACH AND EVERYTHING TO RUN IT PROPERLY! !!!

-- Evil
Config.CoreFolderName = 'qb-core' -- Core Folder Name
Config.TargetFolderName = 'qb-target' -- Target Folder Name
Config.MenuFolderName = 'qb-menu' -- Menu Folder Name
Config.Blip = true -- Blips to set to false if you want the heist starter ped to be hidden from the players. 'Better'
Config.UseMinigame = true -- Use minigame? if set to true then you should have ps-ui installed 
Config.PoliceHeist = false -- if set to true people with police job can also do heist
Config.CustomNotification = false -- If set to False it will use the qb-core drawtext, if set to true will use custom notification nativeUI
Config.SmeltingTarget = true -- If set to false Then will Highly Increase the MS should be (on suggested)
Config.OkokNotifyfolder = 'okokNotify'
Config.OkokNotify = false
Config.ItemsNeeded = 'rolex' -- Item Needed 
Config.RewardsItems = 'rolex' -- the item the player will receive after completing the heist
Config.GoldBar = 'goldbar' -- Items you will get after smelting
Config.GoldVan = 'rumpo' -- Heist Car Name
Config.VehicleNumberPlate = 'GOLD' -- Vehicle Plate Number'
Config.RemoveItemNeededPerUse = 10 -- How much item you want to remove to create one goldbar
Config.MoneyForHeist = 0 -- Money required to start the heist
Config.RobInterval = 1600 -- Interval after Each Gold Heist
Config.WinMoney = 1000 -- Amount of Money Per Goldbar
Config.RewardsItemsAmount = 100 -- Amount of the rewards items the player will receive
Config.HeistPedCoords = vector4(-1211.584,-1576.063,3.608,130.331) -- Location of the ped
Config.GoldSmeltingPoint = vector3(1110.87, -2011.33, 30.9) -- Location of Melting the Gold
Config.GoldSellingPoint = vector3(118.83, -1080.17, 29.19) -- Gold Selling Point

Config.RequiredCops = 0 -- Cops Required to Start the heist

Config.Discord = {
    ['webhook'] = '',
    ['name'] = '',
    ['image'] = '',

}

-- Location where get mission from NPC:
Config.GoldDelivery = {
	vector3(3333.92,5161.19,18.31),
}

Config.GoldHeistCoords = {
	{
		Location = vector3(2196.13,5608.19,53.51),
		Heading = 342.84,
		EnemieSpawn = {
			[1] = {
				x = 2201.42,
				y = 5610.36,
				z = 53.53,
				h = 339.79,
				ped = 'g_f_importexport_01',
				weapon = 'WEAPON_HEAVYPISTOL',
			},
			[2] = {
				x = 2194.21,
				y = 5614.47,
				z = 54.17,
				h = 271.37,
				ped = 'g_f_importexport_01',
				weapon = 'WEAPON_HEAVYPISTOL',
			},
			[3] = {
				x = 2194.11,
				y = 5608.79,
				z = 53.64,
				h = 332.48,
				ped = 'g_f_importexport_01',
				weapon = 'WEAPON_HEAVYPISTOL',
			}
		}
	},
    -- You can add more in it but the format should be same
}


Config.Lang = { -- Custom Language
	['WhatsupOfficer'] = "What's up officer!",
	['Smeltinginp'] = "Smelting in progress!",
	['itemsneededforg'] = "You Need "..Config.RemoveItemNeededPerUse.." "..Config.ItemsNeeded.." To make one",
	['gotolocationonm'] = "Go the location on your map",
	['nogoldbartosell'] = "You Don't Even have any goldbar to sell",
	['failedheist'] = "You Failed and it hears like sirens",
	['meltwatches'] = "Press E | to Melt the watches",
	['gotolocation'] = "Go to the location to sell the Gold Bar(s)",
	-- Menu
	['menuheader'] = "Gold",
	['menutext'] = "Heist",
	['closemenu'] = "Close",
	['closemenutext'] = "Menu",
	-- Blip
	['smeltingblip'] = "Smelting Point",
	['sellingblip'] = "Selling",
	['deliverveh'] = "Deliver Vehicle",
	['heist'] = "Heist",
	-- Heist
	['heiststarted'] = "Heist Started!",
	['heistcomplete'] = "Heist Completed!",
	['killenemies'] = "Kill the people guarding the van",
	['delivervanon'] = "Deliver the van to the new destination on your map!",
	['delivervehiclef'] = "Press | E | to Deliver the vehicle",
	['missionfailedd'] = "Mission Failed.. You Died.",
	-- Extras
	['notenoughpolice'] = "Not Enough Police, "..Config.RequiredCops.." are needed",
	['wait'] = "Wait ",
	['minute'] = " minute",
	['moneyforheist'] = "Money Required in cash $"..Config.MoneyForHeist.." To start the heist",
	['notenoughbars'] = "You don't have "..Config.GoldBar.." to sell",
	['smelt'] = "Smelt"

	-- DC logs
}
