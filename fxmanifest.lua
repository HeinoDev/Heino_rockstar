fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'Heino'
shared_scripts {
    '@ox_lib/init.lua'
}

client_scripts {
    'config.lua',
    'cl_rockstar.lua'
}

files {
    'locales/*.json'
}

dependencies {
    'ox_lib'
}
