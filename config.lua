Config = {}

Config.locale = "da" -- Options: "en" or "da"

-- Load locale
Config.strings = json.decode(LoadResourceFile(GetCurrentResourceName(), 'locales/' .. Config.locale .. '.json'))
