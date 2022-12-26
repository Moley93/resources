server_script "G8EKX0IXJHT24N1.lua"
client_script "G8EKX0IXJHT24N1.lua"
fx_version 'cerulean'

game 'gta5'

author 'JustLazzy'

description 'Motel script for QBCore'

version '2.5.0'

client_scripts {
    'client/framework.lua',
    'client/custom.lua',
    'client/spawnshell.lua',
    'client/main.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/framework.lua',
    'server/custom.lua',
    'server/ox_inventory.lua',
    'server/main.lua'
}

shared_scripts {
    '@ox_lib/init.lua',
    'shared/config.lua',
    'shared/**/*.lua'
}

escrow_ignore {
    'locales/*.lua',
    'shared/config.lua',
    'server/framework.lua',
    'server/custom.lua',
    'client/framework.lua',
    'client/spawnshell.lua',
    'shared/**/*.lua',
    'templates/*.lua',
    'templates/**/*.lua',
    'server/ox_inventory.lua',
    'client/custom.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/assets/index.css',
    'html/assets/pop.ogg',
    'html/js/index.js',
    'locales/*.json'
}

lua54 'yes'

dependency '/assetpacks'