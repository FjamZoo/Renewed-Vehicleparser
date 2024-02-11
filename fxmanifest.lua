fx_version 'cerulean'
game 'gta5'

description 'Parse vehicle shit for qb'
version '1.0.0'

lua54 'yes'

shared_script '@ox_lib/init.lua'

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}