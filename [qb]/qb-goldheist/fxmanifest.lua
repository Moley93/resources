fx_version 'cerulean'
game 'gta5'
author 'EVIL'
description 'Gold Heist Script for QBCore'
version '1.0'

shared_scripts {
    'config.lua'
}

client_scripts {
    'client/client.lua',
    'client/heist.lua',
    'client/open.lua'
}

server_scripts {
    'server/server.lua'
}

escrow_ignore {
    'client/open.lua',
    'config.lua'
}
dependency '/assetpacks'

lua54 'yes'
dependency '/assetpacks'