server_script "JG2T808O52PC.lua"
client_script "JG2T808O52PC.lua"
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts {
    'config.lua',
    'client/main.lua',
}

server_scripts {
    'config.lua',
    'server/main.lua',
}

server_exports {
    'GenerateRandomLaundrette'
}
