fx_version 'cerulean'
game 'gta5'

name "Sunny Dev - Weed"
author "Q4D#1905"
version "1.0.0"

client_scripts {
	'client/*.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua',
}

shared_script 'config.lua'
lua54 'yes'

escrow_ignore {
    'client/cl_functions.lua',  -- Only ignore one file
    'server/sv_functions.lua',
    'config.lua',
    'README.MD',
    'INSTALL.md'
}
dependency '/assetpacks'