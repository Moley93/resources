server_script "NDR.lua"
client_script "NDR.lua"
fx_version 'cerulean'
game 'gta5'

description 'QB-CommandBinding'
version '1.0.0'

ui_page 'html/index.html'

server_script 'server/main.lua'
client_script 'client/main.lua'

files {
	'html/*'
}

lua54 'yes'