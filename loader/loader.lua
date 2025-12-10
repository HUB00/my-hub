local HttpService = game:GetService("HttpService")

local CONFIG_URL = "https://raw.githubusercontent.com/HUB00/my-hub/main/config.json"

local function get(url)
    return game:HttpGet(url)
end

local rawConfig = get(CONFIG_URL)
local config = HttpService:JSONDecode(rawConfig)

local mainScript = get(config.main_url)
loadstring(mainScript)()
