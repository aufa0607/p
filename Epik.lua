local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "epik v1.0 beta",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "epik",
   LoadingSubtitle = "by aufa",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
      
   DisableRayfieldPrompts = true,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "native",
      Subtitle = "Key System",
      Note = "call aufa", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"botak"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

getgenv().TPPlayer = "string"

function teleport(teleportplace)
  local player = game.Players.LocalPlayer
  player.Character.HumanoidRootPart.CFrame = teleportplace
end

Rayfield:Notify({
   Title = "look",
   Content = "zidan bot",
   Duration = 6.5,
   Image = 4483362458,
})

local mainTab = Window:CreateTab("🏠main", nil) -- Title, Image
local Section = mainTab:CreateSection("main")

local Slider = mainTab:CreateSlider({
   Name = "speed boost",
   Range = {0, 300},
   Increment = 1,
   Suffix = "speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = mainTab:CreateSlider({
   Name = "jump boost",
   Range = {0, 300},
   Increment = 1,
   Suffix = "jump",
   CurrentValue = 50,
   Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
         game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local Input = mainTab:CreateInput({
   Name = "tp player",
   CurrentValue = "1",
   PlaceholderText = "player",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
local p2 = (Text)
local pos = p1.CFrame

p1.CFrame = game.Players[p2].Character.HumanoidRootPart.CFrame
   end,
})

local Button = mainTab:CreateButton({
   Name = "favorite speed",
   Callback = function()
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 17
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = 51
   end,
})

local Button = mainTab:CreateButton({
   Name = "Button Example",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local murTab = Window:CreateTab("🗡️mm2", nil) -- Title, Image
local Section = murTab:CreateSection("esp")

local Button = murTab:CreateButton({
   Name = "esp",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/Releases/main/MurderMystery2HighlightESP"))();
   end,
})
