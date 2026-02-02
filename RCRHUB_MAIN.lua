local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RCR HUB || RIVALS || FREE",
   LoadingTitle = "RCR System V4",
   LoadingSubtitle = "by gold3en_rishi",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false,
})

local MainTab = Window:CreateTab("Home", 4483362458)
local VisualTab = Window:CreateTab("Visuals", 4483362458)

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
                   return require(takeTheL)
               end
               return oldRequire(module)
           end)
           Rayfield:Notify({Title = "Emote Swapped", Content = "Shoulder Brush now executes Take the L!", Duration = 5})
       else
           Rayfield:Notify({Title = "Error", Content = "Emotes not found!", Duration = 5})
       end
   end,
})

MainTab:CreateButton({Name = "Stretched Res", Callback = function() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Stretched-Resolution-Higher-FOV-48170"))() end})
MainTab:CreateButton({Name = "Skin Changer", Callback = function() loadstring(game:HttpGet("https://rawscripts.net/raw/RIVALS-Skin-Changer-74896"))() end})
MainTab:CreateButton({Name = "FPS Booster", Callback = function() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Optiz-FpsBooster-60070"))() end})

MainTab:CreateSection("Movement")
MainTab:CreateSlider({Name = "WalkSpeed", Range = {16, 200}, Increment = 1, Suffix = " Speed", CurrentValue = 16, Callback = function(V) 
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = V 
    end
end})

MainTab:CreateSection("Spoofs")

MainTab:CreateButton({
   Name = "sync wu",
   Callback = function()
       getgenv().Config = {
           victim = 1796383039,
           helper = "",
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
       Rayfield:Notify({Title = "Spoof Loaded", Content = "Sync Wu profile applied!", Duration = 3})
   end,
})

MainTab:CreateButton({Name = "slingshot", Callback = function() getgenv().Config = {victim = 719253194, level = 456, streak = 1927, elo = 0, keys = 1000, premium = true, verified = true, unlockall = true, platform = "DESKTOP", join = "discord.gg/rivalscomp"} loadstring(game:HttpGet("https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/UDRCRFRAMESCRIPT.lua"))() end})
MainTab:CreateButton({Name = "nosniy", Callback = function() getgenv().Config = {victim = 20349956, level = 1126, streak = 1927, elo = 92802829228922892829272, keys = 1000, premium = true, verified = false, unlockall = true, platform = "DESKTOP", join = "discord.gg/rivalscomp"} loadstring(game:HttpGet("https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/UDRCRFRAMESCRIPT.lua"))() end})

MainTab:CreateSection("Other Executors")
MainTab:CreateButton({Name = "MODERN (Ctrl to Open)", Callback = function() loadstring(game:HttpGet('https://exploit.plus/Loader'))() end})
MainTab:CreateButton({Name = "z3us", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/blackowl1231/ZYPHERION/refs/heads/main/main.lua'))() end})

VisualTab:CreateSection("Visuals")
VisualTab:CreateButton({Name = "Universal ESP", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/Main.lua"))() end})

local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input, gameProcessed)
   if not gameProcessed and input.KeyCode == Enum.KeyCode.K then Window:Toggle() end
end)
