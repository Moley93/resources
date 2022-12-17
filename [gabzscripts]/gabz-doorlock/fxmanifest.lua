fx_version 'cerulean'
game 'gta5'
author 'discord.gg/gabz'
description 'Gabz Door Lock'
version '1.0.1'
lua54 'yes'

shared_scripts {
    'configs/locales.lua',
    'configs/config.lua'
}

client_scripts {
    'configs/client_customise_me.lua',
    'client/*.lua'
}

server_scripts {
    'configs/server_customise_me.lua',
    'configs/server_webhooks.lua',
    'server/*.lua',
    'server/*.js'
}


ui_page {
    'html/index.html',
}
files {
    'configs/locales_ui.js',
    'configs/config_ui.js',
    'html/index.html',
    'html/assets/*.css',
    'html/assets/*.js',
    'html/fonts/*.woff2',
    'html/sounds/*.ogg',
    'html/css/vendor/*.css',
    'sounds/*.txt',
    'sounds/*.ogg',
    'sounds/*.mp4'
}

exports {
    'GetDoorState_closest',
    'GetDoorState_name'
}

dependencies {
    '/server:4960' -- ⚠️PLEASE READ⚠️; Requires at least server build 4960.
}

escrow_ignore {
    'client/functions.lua',
    'configs/*.lua',
    'server/version_check.lua'
}
dependency '/assetpacks'