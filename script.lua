local gameid = game.PlaceId
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

local scripts = {
    [142823291] = function()
        print("*L* MM2 Detected")
        -- loadstring() <-- still not done
    end,
    [6516141723] = function()
        print("*L* Doors Detected")
        -- loadstring() <-- still not done
    end,
}

if scripts[gameid] then
    scripts[gameid]()
else
    -- Unsupported game
    Notification:Notify(
        {
            Title = "Lunaris",
            Description = "Unsupported game detected. Would you like to execute Infinite Yield instead?"
        },
        {
            OutlineColor = Color3.fromRGB(80, 80, 80),
            Time = 5,
            Type = "option"
        },
        {
            Image = "http://www.roblox.com/asset/?id=6023426923",
            ImageColor = Color3.fromRGB(255, 84, 84),
            Callback = function(State)
                print(tostring(State))
                if State == true then
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
                end
            end
        }
    )
end
