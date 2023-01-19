resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'DVL_identity'

version '1.0.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'server.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'client.lua'
}

ui_page 'html/index.html'

files {
	'html/*',
	'html/css/*',
	'html/img/*',
	'html/js/*'
}

dependency 'es_extended'