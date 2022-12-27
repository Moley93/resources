fx_version 'cerulean'
game 'gta5'

author 'MonteChicken & JustTobii'
description 'Converted from esx to qbcore'

version '1.0.1'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
	'config.lua'
}

server_scripts {
	'server.lua'
}

client_scripts {
	'client.lua'
}

escrow_ignore {
  'stream/*',
}

files {
	'html/ui.html',
	'html/logo.png',
	'html/dmv.png',
	'html/styles.css',
	'html/scripts.js',
	'html/debounce.min.js'
}

ui_page 'html/ui.html'