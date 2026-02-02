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

MainTab:CreateSection("Emergency")

MainTab:CreateButton({
   Name = "OFF ALL (Reset & Close)",
   Callback = function()
       local lighting = game:GetService("Lighting")
       lighting.Brightness = 1
       lighting.ClockTime = 12
       lighting.FogEnd = 1000
       lighting.GlobalShadows = true
       getgenv().Config = nil
       local player = game.Players.LocalPlayer
       if player.Character and player.Character:FindFirstChild("Humanoid") then
           player.Character.Humanoid.WalkSpeed = 16
       end
       Rayfield:Notify({Title = "RCR SYSTEM", Content = "Cleaning up and closing menu...", Duration = 3})
       task.wait(1)
       Rayfield:Destroy()
   end,
})

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

MainTab:CreateSection("Movement")

MainTab:CreateSlider({
   Name = "WalkSpeed",
   Info = "Default speed is 16",
   Range = {16, 200},
   Increment = 1,
   Suffix = " Speed",
   CurrentValue = 16,
   Flag = "WS_Slider",
   Callback = function(Value)
       local player = game.Players.LocalPlayer
       if player.Character and player.Character:FindFirstChild("Humanoid") then
           player.Character.Humanoid.WalkSpeed = Value
       end
   end,
})

MainTab:CreateSection("Utilities")

MainTab:CreateButton({
   Name = "Stretched Res",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Stretched-Resolution-Higher-FOV-48170"))()
   end,
})

MainTab:CreateButton({
   Name = "Skin Changer",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/RIVALS-Skin-Changer-74896"))()
   end,
})

MainTab:CreateButton({
   Name = "fps booster",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Optiz-FpsBooster-60070"))()
   end,
})

MainTab:CreateButton({
   Name = "Take the L (Emote Swap)",
   Callback = function()
       local ReplicatedStorage = game:GetService("ReplicatedStorage")
       local EmotesFolder = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Emotes")
       local shoulderBrush = EmotesFolder:FindFirstChild("Shoulder Brush")
       local takeTheL = EmotesFolder:FindFirstChild("Take The L")

       if shoulderBrush and takeTheL then
           local oldRequire
           oldRequire = hookfunction(require, function(module)
               if module == shoulderBrush then
                   return require(takeTheL)
               end
               return oldRequire(module)
           end)
           Rayfield:Notify({Title = "Emote Active", Content = "Shoulder Brush now plays Take The L!", Duration = 5})
       end
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
