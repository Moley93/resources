Crafting = {
	Tools = {
		{ ['mechanic_tools'] = { ['iron'] = 50, } },
		{ ['toolbox'] = { ['iron'] = 50, } },
		{ ['ducttape'] = { ['plastic'] = 50, } },
		{ ['paintcan'] = { ['aluminum'] = 50, } },
		{ ['tint_supplies'] = { ['iron'] = 50, } },
		{ ['underglow_controller'] = { ['iron'] = 50, } },
		{ ['cleaningkit'] = { ['rubber'] = 50, } },

				-- Example : Delete me --
		-- Support for multiple items in recipes --
		-- Support for multiple resulting items --
		-- Support to limit items to certain job roles --
		{ ['cleaningkit'] = { ['rubber'] = 1, ["engine2"] = 1, ['plastic'] = 1 },
				["amount"] = 2, ["job"] = { ["mechanic"] = 4, ["tuner"] = 4, } },
				-- Example : Delete me --

	},
	Perform = {
		{ ['turbo'] = { ['steel'] = 25, ['iron'] = 15, ['copper'] = 15, } },
		{ ['car_armor'] = { ['steel'] = 35, ['iron'] = 25, ['plastic'] = 20, ['iron'] = 15, } },
		{ ['engine1'] = { ['steel'] = 35, ['iron'] = 25, } },
		{ ['engine2'] = { ['steel'] = 45, ['iron'] = 25, } },
		{ ['engine3'] = { ['steel'] = 55, ['iron'] = 25, } },
		{ ['engine4'] = { ['steel'] = 65, ['iron'] = 30, } },
		{ ['transmission1'] = { ['steel'] = 25, ['copper'] = 15, } },
		{ ['transmission2'] = { ['steel'] = 35, ['copper'] = 15, } },
		{ ['transmission3'] = { ['steel'] = 45, ['copper'] = 15, } },
		{ ['brakes1'] = { ['steel'] = 35, ['copper'] = 15, } },
		{ ['brakes2'] = { ['steel'] = 45, ['copper'] = 15, } },
		{ ['brakes3'] = { ['steel'] = 55, ['copper'] = 15, } },
		{ ['suspension1'] = { ['steel'] = 15, ['rubber'] = 20, } },
		{ ['suspension2'] = { ['steel'] = 25, ['rubber'] = 20, } },
		{ ['suspension3'] = { ['steel'] = 35, ['rubber'] = 20, } },
		{ ['suspension4'] = { ['steel'] = 45, ['rubber'] = 20, } },
		{ ['bprooftires'] = { ['rubber'] = 300, } },
		{ ['drifttires'] = { ['rubber'] = 200, } },
		{ ['nos'] = { ['noscan'] = 2, ['plastic'] = 30, } },
		{ ['noscan'] = { ['steel'] = 100, ['iron'] = 15, ['plastic'] = 30, ['copper'] = 15, } },
	},
	Cosmetic = {
		{ ['hood'] = { ['plastic'] = 50, ['steel'] = 10, } },
		{ ['roof'] = { ['plastic'] = 50, ['steel'] = 10, } },
		{ ['spoiler'] = { ['plastic'] = 50, ['steel'] = 10, } },
		{ ['bumper'] = { ['plastic'] = 50, ['steel'] = 10, } },
		{ ['skirts'] = { ['plastic'] = 50, ['steel'] = 10, } },
		{ ['exhaust'] = { ['iron'] = 50, ['steel'] = 25, } },
		{ ['seat'] = { ['plastic'] = 50, ['rubber'] = 10, } },
		{ ['livery'] = { ['plastic'] = 50 }, },
		{ ['tires'] = { ['rubber'] = 50, } },
		{ ['horn'] = { ['plastic'] = 50, } },
		{ ['internals'] = { ['plastic'] = 50, ['steel'] = 10, } },
		{ ['externals'] = { ['plastic'] = 50, ['steel'] = 10, } },
		{ ['customplate'] = { ['steel'] = 50, } },
		{ ['headlights'] = { ['plastic'] = 50, ['steel'] = 10, } },
		{ ['rims'] = { ['iron'] = 50, ['steel'] = 50, } },
		{ ['rollcage'] = { ['steel'] = 50, } ['iron'] = 20, },
		{ ['noscolour'] = { ['plastic'] = 50, } },
	},
}

Stores = {
	ToolItems = {
		label = Loc[Config.Lan]["stores"].tools,
		items = {
			{ name = "mechanic_tools", price = 250, amount = 10, info = {}, type = "item", },
			{ name = "toolbox", price = 250, amount = 10, info = {}, type = "item", },
			{ name = "ducttape", price = 250, amount = 100, info = {}, type = "item", },
			{ name = "paintcan", price = 250, amount = 50, info = {}, type = "item", },
			{ name = "tint_supplies", price = 1000, amount = 50, info = {}, type = "item", },
			{ name = "underglow_controller", price = 1000, amount = 50, info = {}, type = "item", },
			{ name = "cleaningkit", price = 1000, amount = 100, info = {}, type = "item", },
		},
	},
	PerformItems = {
		label = Loc[Config.Lan]["stores"].perform,
		items = {
			{ name = "turbo", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "engine1", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "engine2", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "engine3", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "engine4", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "transmission1", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "transmission2", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "transmission3", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "brakes1", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "brakes2", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "brakes3", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "car_armor", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "suspension1", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "suspension2", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "suspension3", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "suspension4", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "bprooftires", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "drifttires", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "nos", price = 10000, amount = 50, info = {}, type = "item", },
		},
	},
	StoreItems = {
		label = Loc[Config.Lan]["stores"].cosmetic,
		items = {
			{ name = "hood", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "roof", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "spoiler", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "bumper", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "skirts", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "exhaust", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "seat", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "livery", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "tires", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "horn", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "internals", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "externals", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "customplate", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "headlights", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "rims", price = 10000, amount = 100, info = {}, type = "item", },
			{ name = "rollcage", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "noscolour", price = 10000, amount = 50, info = {}, type = "item", },
		},
	},
}

-- No Touch
	-- This is corrective code to help simplify the stores for people removing the slot info
	-- Jim shops doesn't use it but other inventories do
	-- Most people don't even edit the slots, these lines generate the slot info autoamtically
Stores.StoreItems.slots = #Stores.StoreItems.items
for k in pairs(Stores.StoreItems.items) do Stores.StoreItems.items[k].slot = k end
Stores.PerformItems.slots = #Stores.PerformItems.items
for k in pairs(Stores.PerformItems.items) do Stores.PerformItems.items[k].slot = k end
Stores.ToolItems.slots = #Stores.ToolItems.items
for k in pairs(Stores.ToolItems.items) do Stores.ToolItems.items[k].slot = k end