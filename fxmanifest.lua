fx_version 'cerulean'

game 'gta5'

author 'Marttins#8421 (mt scripts) - QBox conversion by shifu-totto'

description 'mt-clothingbag - QBox / ox_inventory version'

version '1.0'

lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

dependencies {
    'ox_lib',
    'ox_inventory',
    'illenium-appearance'
}