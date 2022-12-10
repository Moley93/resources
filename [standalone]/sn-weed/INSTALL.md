Made by Sunny Scripts
Discord: https://discord.gg/WK7nYmDhrN (24/7 support and updates)
Tebex: https://sunny-scripts.tebex.io/

# Dependencies

- [QBCore Framework](https://github.com/qbcore-framework)
- [Qb-menu]
- [Renewed-Weaponscarry](https://github.com/Renewed-Scripts/Renewed-Weaponscarry)
- Latest [Qb-target]
**Will support OX on later versions**

# SQL Installation:

CREATE TABLE IF NOT EXISTS `weed_plants` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`timestamp` varchar(255) DEFAULT NULL,
`x` varchar(255) DEFAULT NULL,
`y` varchar(255) DEFAULT NULL,
`z` varchar(255) DEFAULT NULL,
`gender` int(1) DEFAULT 0,
`water` float(2) DEFAULT 10,
`strain` text DEFAULT NULL,
`maleseeds` text DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `strain` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`owner` varchar(255) DEFAULT NULL,
`name` varchar(255) DEFAULT NULL,
`n` int(2) DEFAULT 0,
`p` int(2) DEFAULT 0,
`k` int(2) DEFAULT 0,
`rep` int(2) DEFAULT 0,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

----------------------
# Item installation

- Copy the image files from folder _img_ to your `qb-inventory > html > images` folder

- Add these codes to your `qb-core > shared >items.lua` under the Items section

```lua
-- sn-weed
['femaleseed'] 					 = {['name'] = 'femaleseed', 			 	  	  	['label'] = 'Female Marijuana Seed', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weed-seed.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Surely I can just plant this, right?'},
	['maleseed'] 					 = {['name'] = 'maleseed', 			 	  	  	['label'] = 'Male Marijuana Seed', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weed-seed.png', 				['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Add this to a planted female seed to make it pregnant? You are pretty sure this seed has a penis.'},
	['wateringcan'] 					 = {['name'] = 'wateringcan', 			 	  	  	['label'] = 'Watering Can', 					['weight'] = 7000, 		['type'] = 'item', 		['image'] = 'wateringcan.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Fill this at a river or lake.'},
	['fertilizer'] 				 	 = {['name'] = 'fertilizer', 			  	  	['label'] = 'Fertilizer', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fertilizer.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Cool'},
	['wetbud'] 					 = {['name'] = 'wetbud', 			 	  	  	['label'] = 'Wet Bud (100 grams)', 					['weight'] = 35000, 		['type'] = 'item', 		['image'] = 'wet.png', 				['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Needs to be stored somewhere dry.'},
	['driedbud'] 					 = {['name'] = 'driedbud', 			 	  	  	['label'] = 'Dried Bud (100 Grams)', 					['weight'] = 10000, 		['type'] = 'item', 		['image'] = 'driedbud.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Pack It?'},
	['smallbud'] 					 = {['name'] = 'smallbud', 			 	  	  	['label'] = 'Packed Bud (20 Grams)', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smallbud.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Sell It?'},
	['weedpackage'] 					 = {['name'] = 'weedpackage', 			 	  	  	['label'] = 'Suspicious Package', 					['weight'] = 25000, 		['type'] = 'item', 		['image'] = 'weedpackage.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Marked for Police Seizure'},
	['qualityscales'] 					 = {['name'] = 'qualityscales', 			 	  	  	['label'] = 'High Quality Scales', 					['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'qualityscales.png', 				['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Weighs Baggies with no loss'},
	['smallscales'] 					 = {['name'] = 'smallscales', 			 	  	  	['label'] = 'Small Scales', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smallscales.png', 				['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Weighs Baggies with minimal loss'},
	['emptybaggies'] 					 = {['name'] = 'emptybaggies', 			 	  	  	['label'] = 'Empty Baggies', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'emptybaggies.png', 				['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Empty Baggies'},
	['joint'] 					 = {['name'] = 'joint', 			 	  	  	['label'] = '2g Joint', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'joint.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Its a Joint, man.'},
	['weedbaggie'] 					 = {['name'] = 'weedbaggie', 			 	  	  	['label'] = 'Baggie (7g)', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weedbaggie.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Sold on the streets'},
	['rollingpaper'] 					 = {['name'] = 'rollingpaper', 			 	  	  	['label'] = 'Rolling Paper', 					['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'rollingpaper.png', 				['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Required to roll joints!'},

```

## Inventory strain metadata:

- Go to your `lj/qb-inventory > html > js > app.js`

- Search for 
```js
} else if (itemData.name == "harness") {
    $(".item-info-title").html("<p>" + itemData.label + "</p>");
    $(".item-info-description").html(
        "<p>" + itemData.info.uses + " uses left.</p>"
    );
```
- Directly underneath this add:
```js
             }else if (itemData.name == "maleseed") {
            $(".item-info-title").html("<p>" + itemData.label + "</p>");
            $(".item-info-description").html(
                "<p><strong>Strain: </strong>" + itemData.info.strain + ".</p>"
            );
        }else if (itemData.name == "joint") {
            $(".item-info-title").html("<p>" + itemData.label + "</p>");
            $(".item-info-description").html(
                "<p><strong>Strain: </strong>" + itemData.info.strain + ".</p>"
            );
        }else if (itemData.name == "weedbaggie") {
            $(".item-info-title").html("<p>" + itemData.label + "</p>");
            $(".item-info-description").html(
                "<p><strong>Strain: </strong>" + itemData.info.strain + ".</p>"
            );
        }else if (itemData.name == "femaleseed") {
            $(".item-info-title").html("<p>" + itemData.label + "</p>");
            $(".item-info-description").html(
                "<p><strong>Strain: </strong>" + itemData.info.strain + ".</p>"
            );
        }else if (itemData.name == "smallbud") {
            $(".item-info-title").html("<p>" + itemData.label + "</p>");
            $(".item-info-description").html(
                "<p><strong>Strain: </strong>" + itemData.info.strain + ".</p>"
            );
        }else if (itemData.name == "weedpackage") {
            $(".item-info-title").html("<p>" + itemData.label + "</p>");
            $(".item-info-description").html(
                "<p><strong>Strain: </strong>" + itemData.info.strain + ".</p>"
            );
        }else if (itemData.name == "driedbud") {
            $(".item-info-title").html("<p>" + itemData.label + "</p>");
            $(".item-info-description").html(
                "<p><strong>Strain: </strong>" + itemData.info.strain + ".</p>"
            );
        }else if (itemData.name == "wetbud") {
            $(".item-info-title").html("<p>" + itemData.label + "</p>");
            $(".item-info-description").html(
                "<p><strong>Strain: </strong><span>" +
                itemData.info.strain +
                "</span></p><p><strong>Dry: </strong><span>" +
                itemData.info.dry +"%.</p>"
            );   
        }else if (itemData.name == "wateringcan") {
            $(".item-info-title").html("<p>" + itemData.label + "</p>");
            $(".item-info-description").html(
                "<p><strong>Water: </strong>" + itemData.info.water + "%.</p>"
            );
```
After doing so, your inventory should now show strains information.

----------------------
### 
- Go to your `lj/qb-inventory > server > main.lua`

- Search for 
```lua
elseif itemData["name"] == "harness" then
```
- Directly underneath this, add:
```lua
elseif itemData["name"] == "femaleseed" then
					info.strain = "Unknown"
					info.n = 0
					info.p = 0
					info.k = 0
				elseif itemData["name"] == "driedbud" then
					info.strain = "Unknown"
					info.n = 0
					info.p = 0
					info.k = 0
				elseif itemData["name"] == "smallbud" then
					info.strain = "Unknown"
					info.n = 0
					info.p = 0
					info.k = 0
				elseif itemData["name"] == "weedpackage" then
					info.strain = "Unknown"
					info.n = 0
					info.p = 0
					info.k = 0
				elseif itemData["name"] == "weedbaggie" then
					info.strain = "Unknown"
					info.n = 0
					info.p = 0
					info.k = 0
				elseif itemData["name"] == "wetbud" then
					info.strain = "Unknown"
					info.n = 0
					info.p = 0
					info.k = 0
					info.dry = 0
				elseif itemData["name"] == "joint" then
					info.strain = "Unknown"
					info.dry = 0
					info.n = 0
					info.p = 0
					info.k = 0
				elseif itemData["name"] == "maleseed" then
					info.strain = "Unknown"
					info.n = 0
					info.p = 0
					info.k = 0
				elseif itemData["name"] == "wateringcan" then
					info.water = 0
          ```
----------------------
### 
```
- Go to your `lj/qb-inventory > server > main.lua`
--###Search for 
```lua
local function SaveStashItems(stashId, items)
```

add this after that whole function:
```lua
RegisterNetEvent('sn-weed:server:updateDry',function (stashId, slot, item)
	Stashes[stashId].items[slot] = item
	SaveStashItems(stashId, Stashes[stashId].items)
end)
```

- Search:
```lua
RegisterNetEvent('inventory:server:OpenInventory', function(name, id, other)
```

**before**
```lua
			elseif name == "trunk" then
```

add:
```lua
				local item = GetStashItems(id) or {}
				TriggerEvent('sn-weed:server:checkDry',id, item)
```

- **If u use qb-smallresources, delete use joint event**

- Go to your `Renewed-Weaponscarry`

add:
```lua
 ["weedpackage"] =  { carry = true, model = "hei_prop_heist_weed_block_01", bone = 28422, x = 0.01, y = -0.02, z = -0.12, xr = 0.0,
  yr = 0.0, zr = 0.0, blockAttack = true, blockCar = true, blockRun = true},
  ```