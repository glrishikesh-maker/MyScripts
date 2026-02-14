local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RCR HUB || RIVALS || FREE",
   LoadingTitle = "RCR System V5",
   LoadingSubtitle = "by gold3en_rishi",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false,
})

local MainTab = Window:CreateTab("Home", 4483362458)
local VisualTab = Window:CreateTab("Visuals", 4483362458)

-- SECURITY SECTION
MainTab:CreateSection("Security")

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
       Rayfield:Notify({Title = "Security", Content = "Anti-Cheat Bypass Active", Duration = 5})
   end,
})

-- UTILITIES SECTION
MainTab:CreateSection("Utilities")

MainTab:CreateButton({
   Name = "Take the L (Shoulder Brush Swap)",
   Callback = function()
       local ReplicatedStorage = game:GetService("ReplicatedStorage")
       local emotes = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Emotes")
       local shoulderBrush = emotes:FindFirstChild("Shoulder Brush")
       local takeTheL = emotes:FindFirstChild("Take The L")

       if shoulderBrush and takeTheL then
           local oldRequire
           oldRequire = hookfunction(require, function(module)
               if module == shoulderBrush then
                   return oldRequire(takeTheL)
               end
               return oldRequire(module)
           end)
           Rayfield:Notify({Title = "Success", Content = "Shoulder Brush is now Take the L", Duration = 5})
       else
           Rayfield:Notify({Title = "Error", Content = "Emotes not found!", Duration = 5})
       end
   end,
})

MainTab:CreateButton({
   Name = "Stretched Res",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Stretched-Resolution-Higher-FOV-48170"))()
   end,
})

MainTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 200},
   Increment = 1,
   Suffix = " Speed",
   CurrentValue = 16,
   Callback = function(Value)
       if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
       end
   end,
})

-- SPOOFS SECTION
MainTab:CreateSection("Spoofs")

MainTab:CreateButton({
   Name = "sync wu",
   Callback = function()
       getgenv().Config = {
           victim = 1796383039,
           level = 1242,
           streak = 1927,
           elo = 37899,
           keys = 0,
           premium = true,
           verified = false,
           unlockall = true,
           platform = "DESKTOP",
           join = "discord.gg/rivalscomp"
       }
       loadstring(game:HttpGet("https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/UDRCRFRAMESCRIPT.lua"))()
       Rayfield:Notify({Title = "Spoof", Content = "Sync Wu Profile Loaded", Duration = 3})
   end,
})

MainTab:CreateButton({
   Name = "Nosniy",
   Callback = function()
       getgenv().Config = {
           victim = 20349956,
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
       Rayfield:Notify({Title = "Spoof", Content = "Nosniy Profile Loaded", Duration = 3})
   end,
})

-- VISUALS TAB
VisualTab:CreateSection("ESP")

VisualTab:CreateButton({
   Name = "Universal ESP",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/reanimation/main/UniversalESP.lua"))()
   end,
})
