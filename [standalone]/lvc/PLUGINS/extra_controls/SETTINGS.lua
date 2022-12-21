--------------------EXTRA INTEGRATION SETTINGS---------------------
ec_masterswitch = true
--	Determines if extra_integration plugin can be activated.
allow_custom_controls = true
--	Enabled/Disables menu which allows for custom controls to be set.
--[[ Documentation / Wiki: https://github.com/TrevorBarns/luxart-vehicle-control/wiki/Extra-Controls ]]
	
CONTROLS = {
	-- COMBOS = { <list of index/key ID of approved combo-keys> }, 
	-- KEYS = { <list of index/key ID of approved toggle keys> }
	COMBOS = { 326, 155, 19, 349 },    --LCTRL, LSHIFT, LALT, TAB
	KEYS = { 187, 188, 189, 190, 20 }  -- ARROW DWN, UP, LFT, RGT, Z
	}

	EXTRA_CONTROLS = {
		['DEFAULT'] = { 
					--  	{ '<name>', Extras = {<extras table>}, Combo = <default combo>, Key = <default key>, (opt.) Audio = < button soundFX> }
							{ Name = 'Takedowns', Extras = {toggle = 12}, Combo = 326, key = 188, Audio = true},
				},	
	}