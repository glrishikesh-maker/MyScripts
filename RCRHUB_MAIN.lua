local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/lucid.lua"))()
local Window = Library:CreateWindow("RCR HUB")

local MainTab = Window:CreateTab("Home")
local VisualTab = Window:CreateTab("Visuals")

-- HOME TAB
MainTab:CreateButton("fps booster", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Optiz-FpsBooster-60070"))()
end)

MainTab:CreateButton("stretched res", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Stretched-Resolution-Higher-FOV-48170"))()
end)

MainTab:CreateButton("MODERN", function()
    loadstring(game:HttpGet('https://exploit.plus/Loader'))()
end)

MainTab:CreateButton("xorfee", function()
    getgenv().Config = {
        victim = 716661842,
        helper = "",
        level = 979,
        streak = 1927,
        elo = 92802829228922892829272,
        keys = 0,
        premium = true,
        verified = false,
        unlockall = true,
        platform = "DESKTOP",
        join = "discord.gg/rivalscomp"
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/UDRCRFRAMESCRIPT.lua"))()
end)

MainTab:CreateButton("nosniy", function()
    getgenv().Config = {
        victim = 20349956,
        helper = "",
        level = 1126,
        streak = 1927,
        elo = 92802829228922892829272,
        keys = 1000,
        premium = true,
        verified = false,
        unlockall = true,
        platform = "DESKTOP",
        join = "discord.gg/rivalscomp"
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/UDRCRFRAMESCRIPT.lua"))()
end)

MainTab:CreateButton("yabujin", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/yashitcrack.lua"))()
end)

MainTab:CreateButton("Discord", function()
    if setclipboard then setclipboard("https://discord.gg/zeCVjkB29y") end
end)

-- VISUALS TAB
VisualTab:CreateButton("Universal ESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/Main.lua"))()
end)

VisualTab:CreateButton("FullBright", function()
    game:GetService("Lighting").Brightness = 2
    game:GetService("Lighting").ClockTime = 14
    game:GetService("Lighting").GlobalShadows = false
end)
