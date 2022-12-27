fx_version 'cerulean'
game 'gta5'

shared_scripts {
    'config.lua'
}

client_script 'client/functions.lua'
client_script 'client/main.lua'

server_script 'server/editable.lua'
server_script 'server/main.lua'

lua54 'yes'

escrow_ignore {
    'server/editable.lua',
    'client/functions.lua',
    'config.lua'
}
dependency '/assetpacks'