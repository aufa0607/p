local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "murdermystery", HidePremium = false, IntroText = "aufa", SaveConfig = true, ConfigFolder = "murdermystery"})

OrionLib:MakeNotification({
	Name = "hey",
	Content = "dont forget to subcribe",
	Image = "rbxassetid://4483345998",
	Time = 5
})


local TutTab = Window:MakeTab({
	Name = "main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TutTab:AddSection({
	Name = "script section"
})

TutTab:AddButton({
	Name = "antilag",
	Callback = function(Value)
      		print("suscribe")
  	end    
})

TutTab:AddToggle({
	Name = "noclip",
	Default = false,
	Callback = function(Value)
		print(Value)
loadstring(game:HttpGet("https://raw.githubusercontent.com/aufa0607/p/main/p"))();
	end    
})

TutTab:AddToggle({
	Name = "fly",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

TutTab:AddToggle({
	Name = "esp",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

OrionLib:Init()
