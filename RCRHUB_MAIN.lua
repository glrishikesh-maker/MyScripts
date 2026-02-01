local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RIVALS || RCRHUB || FREE",
   LoadingTitle = "RCR System",
   LoadingSubtitle = "by gold3en_rishi",
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

MainTab:CreateSection("Bypass")

MainTab:CreateButton({
   Name = "Universal AC Bypass",
   Callback = function()
       local gmt = getrawmetatable(game)
       setreadonly(gmt, false)
       local old = gmt.__namecall
       gmt.__namecall = newcclosure(function(self, ...)
           local method = getnamecallmethod()
           if method == "FireServer" and self.Name == "MainEvent" then
               return 
           end
           return old(self, ...)
       end)
       setreadonly(gmt, true)
       Rayfield:Notify({Title = "Bypass", Content = "Universal Anti-Cheat Bypass Active", Duration = 5})
   end,
})

MainTab:CreateSection("Utilities")

MainTab:CreateButton({
   Name = "Skin Changer",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/RIVALS-Skin-Changer-74896"))()
   end,
})

MainTab:CreateButton({
   Name = "MENU TOGGLE: [ K ]",
   Callback = function()
       Rayfield:Notify({Title = "Info", Content = "Press 'K' to hide or show this menu!", Duration = 3})
   end,
})

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
   Name = "slingshot",
   Callback = function()
       getgenv().Config = {
           victim = 719253194,
           helper = "",
           level = 456,
           streak = 1927,
           elo = 0,
           keys = 1000,
           premium = true,
           verified = true,
           unlockall = true,
           platform = "DESKTOP",
           join = "discord.gg/rivalscomp"
       }
       loadstring(game:HttpGet("https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/UDRCRFRAMESCRIPT.lua"))()
   end,
})

MainTab:CreateButton({
   Name = "Jvke",
   Callback = function()
       getgenv().Config = {
           victim = 5041464410,
           helper = "",
           level = 979,
           streak = 23530,
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
   Name = "z3us",
   Callback = function()
       loadstring(game:HttpGet(('https://raw.githubusercontent.com/blackowl1231/ZYPHERION/refs/heads/main/main.lua')))()
   end,
})

MainTab:CreateButton({
   Name = "MODERN (click ctrl to open)",
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

local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input, gameProcessed)
   if not gameProcessed and input.KeyCode == Enum.KeyCode.K then
       Window:Toggle()
   end
end)
