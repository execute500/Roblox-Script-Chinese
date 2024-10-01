local HttpService = game:GetService("HttpService")
local baseURL = "https://raw.githubusercontent.com/execute500/Roblox-Script-Chinese/refs/heads/main/Doors/MSPaint"
local key = game:HttpGet(https://raw.githubusercontent.com/execute500/execute500/refs/heads/main/script-key.txt)
export type gameMapping = {
    exclusions: table?,
    main: string
}

if not getgenv().ExecutorSupport then
    loadstring(game:HttpGet(baseURL .. "/executorTest.lua" .. key))()
end

if not getgenv().BloxstrapRPC then
    local BloxstrapRPC = {}

    export type RichPresence = {
        details:     string?,
        state:       string?,
        timeStart:   number?,
        timeEnd:     number?,
        smallImage:  RichPresenceImage?,
        largeImage:  RichPresenceImage?
    }

    export type RichPresenceImage = {
        assetId:    number?,
        hoverText:  string?,
        clear:      boolean?,
        reset:      boolean?
    }

    function BloxstrapRPC.SendMessage(command: string, data: any)
        local json = HttpService:JSONEncode({
            command = command, 
            data = data
        })
        
        print("[BloxstrapRPC] " .. json)
    end

    function BloxstrapRPC.SetRichPresence(data: RichPresence)
        if data.timeStart ~= nil then
            data.timeStart = math.round(data.timeStart)
        end
        
        if data.timeEnd ~= nil then
            data.timeEnd = math.round(data.timeEnd)
        end
        
        BloxstrapRPC.SendMessage("SetRichPresence", data)
    end 

    getgenv().BloxstrapRPC = BloxstrapRPC
end

local mapping: gameMapping = HttpService:JSONDecode(game:HttpGet(baseURL .. "/mappings/" .. game.GameId .. ".json" .. key))
local scriptPath = mapping.main

if mapping.exclusions and mapping.exclusions[tostring(game.PlaceId)] then
    scriptPath = mapping.exclusions[tostring(game.PlaceId)]
end

loadstring(game:HttpGet(baseURL .. scriptPath))()
