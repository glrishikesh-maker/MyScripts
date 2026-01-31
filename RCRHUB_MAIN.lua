local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RCR HUB",
   LoadingTitle = "RCR System",
   LoadingSubtitle = "by me",
   ConfigurationSaving = { Enabled = false },
   Discord = {
      Enabled = true,
      Invite = "zeCVjkB29y",
      RememberJoins = true
   },
   KeySystem = false,
})

local MainTab = Window:CreateTab("Home", 4483362458) 
local VisualTab = Window:CreateTab("Visuals", 4483362458)

MainTab:CreateSection("Utilities")

MainTab:CreateButton({
   Name = "fps booster",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Optiz-FpsBooster-60070"))()
   end,
})

MainTab:CreateButton({
   Name = "stretched res",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Stretched-Resolution-Higher-FOV-48170"))()
   end,
})

MainTab:CreateSection("Executors")

MainTab:CreateButton({
   Name = "z3us",
   Callback = function()
       loadstring(game:HttpGet(('https://raw.githubusercontent.com/blackowl1231/ZYPHERION/refs/heads/main/main.lua')))()
   end,
})

MainTab:CreateButton({
   Name = "MODERN",
   Callback = function()
       loadstring(game:HttpGet('https://exploit.plus/Loader'))()
   end,
})

MainTab:CreateButton({
   Name = "xorfee",
   Callback = function()
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
   end,
})

MainTab:CreateButton({
   Name = "nosniy",
   Callback = function()
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
   end,
})

MainTab:CreateButton({
   Name = "yabujin",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/yashitcrack.lua"))()
   end,
})

MainTab:CreateButton({
   Name = "Copy Discord",
   Callback = function()
       if setclipboard then setclipboard("https://discord.gg/zeCVjkB29y") end
       Rayfield:Notify({Title = "Discord", Content = "Link Copied!", Duration = 3})
   end,
})

VisualTab:CreateSection("ESP & Lighting")

VisualTab:CreateButton({
   Name = "Universal ESP",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/Main.lua"))()
   end,
})

VisualTab:CreateButton({
   Name = "FullBright",
   Callback = function()
       local lighting = game:GetService("Lighting")
       lighting.Brightness = 2
       lighting.ClockTime = 14
       lighting.FogEnd = 100000
       lighting.GlobalShadows = false
   end,
})

Rayfield:Notify({
   Title = "RCR HUB",
   Content = "Successfully Loaded",
   Duration = 5,
})
