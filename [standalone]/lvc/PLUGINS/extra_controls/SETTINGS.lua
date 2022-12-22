--------------------EXTRA INTEGRATION SETTINGS---------------------
ec_masterswitch = true
--	Determines if extra_integration plugin can be activated.
allow_custom_controls = true
--	Enabled/Disables menu which allows for custom controls to be set.
--[[ Documentation / Wiki: https://github.com/TrevorBarns/luxart-vehicle-control/wiki/Extra-Controls ]]

	EXTRA_CONTROLS = {
		['DEFAULT'] = { 
					--  	{ '<name>', Extras = {<extras table>}, Combo = <default combo>, Key = <default key>, (opt.) Audio = < button soundFX> }
							{ Name = 'Takedowns', Extras = { toggle = 12, repair = true }, Combo = 326, Key = 188, Audio = true },
				},	
	}

CONTROLS = {
	--	   COMBOS = { <list of index/key ID of approved combo-keys> }, List of Controls: https://docs.fivem.net/docs/game-references/controls/
	--	   KEYS = { <list of index/key ID of approved toggle keys> }
	-- ex: COMBOS = { 326, 155, 19, 349 },	--LCTRL, LSHIFT, LALT, TAB
	-- ex: KEYS = { 187, 188, 189, 190, 20 }, -- ARROW LFT, DWN, UP, RGT, Z
	COMBOS = { 326, 155, 19, 349 },	--LCTRL, LSHIFT, LALT, TAB
	KEYS = { 187, 188, 189, 190, 20 }, -- ARROW LFT, DWN, UP, RGT, Z
}