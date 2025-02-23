local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "epik v1.0 beta",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "epik",
   LoadingSubtitle = "by aufa",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   getgenv().TPPlayer = "string"

   DisableRayfieldPrompts = false,
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
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"botak"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "look",
   Content = "zidanbot",
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

local Dropdown = mainTab:CreateDropdown({
   Name = "Dropdown Example",
   Options = {"super low power", "slow power", "low power", "normal power", "low high power", "my faforite power", "power", "high power", "super high power"},
   CurrentOption = {"normal power"},
   MultipleOptions = false,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
   getgenv().TPPlayer = (Value)
   end,
})

local Button = mainTab:CreateButton({
   Name = "Button Example",
   Callback = function()
  if getgenv().TPPlayer == "super low power" then
Game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 1
Game.Players.LocalPlayer.Character.Humanoid.JumpPower = 5
elseif getgenv().TPPlayer == "slow power" then
Game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 5
Game.Players.LocalPlayer.Character.Humanoid.JumpPower = 10
      end
if getgenv().TPPlayer == "low power" then
Game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 12
Game.Players.LocalPlayer.Character.Humanoid.JumpPower = 30
elseif getgenv().TPPlayer == "normal power" then
Game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
Game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
      end
if getgenv().TPPlayer == "low high power" then
Game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 18
Game.Players.LocalPlayer.Character.Humanoid.JumpPower = 70
elseif getgenv().TPPlayer == "my faforite power" then
Game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 19
Game.Players.LocalPlayer.Character.Humanoid.JumpPower = 65
      end
if getgenv().TPPlayer == "power" then
Game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 70
Game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
elseif getgenv().TPPlayer == "high power" then
Game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
Game.Players.LocalPlayer.Character.Humanoid.JumpPower = 250
      end
if getgenv().TPPlayer == "super high power" then
Game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
Game.Players.LocalPlayer.Character.Humanoid.JumpPower = 500
      end
   end,
})
