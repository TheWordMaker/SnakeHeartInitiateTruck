----------------------[ Universal Utilities ]----------------------
getgenv().Get = setmetatable({}, {__index = function(Self,Idx) return game:GetService(Idx) end})

local Players = Get.Players
local Player = Players.LocalPlayer
local PlayerCharacter = Player.Character
local PlayerGui = Player.PlayerGui
local Workspace = Get.Workspace
local RunService = Get.RunService
local Rep = Get.ReplicatedStorage
local HttpService = Get.HttpService
local TeleportService = Get.TeleportService
local VirtualInputManager = Get.VirtualInputManager

local ZoneDragonLord = Instance.new("Part")
	ZoneDragonLord.Name = "ZoneDragonLord"
	ZoneDragonLord.Size = Vector3.new(50, 3, 50)
	ZoneDragonLord.Position = Vector3.new(-274, -30, -957)
	ZoneDragonLord.Anchored = true
	ZoneDragonLord.Parent = Workspace
	ZoneDragonLord.CanCollide = true
	ZoneDragonLord.Transparency = 0

local FinalArg
spawn(function() -- Release Best Sword Label
	while wait(0.1) do
		CoupleSword = {}
		local LevelOrigin = Player.leaderstats.Level.Value
		local MyLevelBig = string.match(LevelOrigin, "%d+[,%d]*")
		if string.find(MyLevelBig, ",") then
			MyLevelBig = string.gsub(MyLevelBig, ",", "")
			MyLevelBig = tonumber(MyLevelBig) 
		else
			MyLevelBig = tonumber(MyLevelBig)
		end
		local SwordList = {}
		for _, v1 in pairs(MainGui.SwordsFrame.ScrollingFrame:GetChildren()) do
			if v1:IsA("ImageLabel") then
				local levelText = v1.info.levellabel.Text
				local detectbig = string.match(levelText, "%d+[,%d]*")
				if string.find(detectbig, ",") then
					detectbig = string.gsub(detectbig, ",", "")
					detectbig = tonumber(detectbig) 
				else
					detectbig = tonumber(detectbig)
				end
				table.insert(SwordList,{Name = v1.Name,Level = detectbig})
			end
		end
		local function comparerNiveaux(a, b)
			local niveauA = a.Level
			local niveauB = b.Level
			return niveauA < niveauB
		end
		local SwordName1,SwordLevel1
		local SwordName2,SwordLevel2
		table.sort(SwordList, comparerNiveaux)
		for _, niveau in ipairs(SwordList) do
			if MyLevelBig >= niveau.Level then
				SwordName1,SwordLevel1 = niveau.Name,niveau.Level
			end
		end
		table.insert(CoupleSword,{Name = SwordName1,Level = SwordLevel1})
		if MyLevelBig >= 2 then
			for _, niveau2 in ipairs(SwordList) do
				if SwordLevel1 > niveau2.Level then
					SwordName2,SwordLevel2 = niveau2.Name,niveau2.Level
				end
			end
			table.insert(CoupleSword,{Name = SwordName2,Level = SwordLevel2})
			arg2 = "\n2nd Sword : "..SwordName2.." Level : "..SwordLevel2
		else
			arg2 = "\n2nd Sword : None"
		end
		arg1 = "1st Sword : "..SwordName1.." Level : "..SwordLevel1
		FinalArg = arg1..arg2
	end
end)

local function levelToNumber(levelStr)
    local num, suffix = levelStr:match("(%d+%.?%d*)([Kk]?)")
    num = tonumber(num) or 0
    if suffix:lower() == "k" then
        num = num * 1000
    end
    return num
end
local enemies = {}
for _,v in pairs(Workspace.Enemies:GetChildren()) do
    local level = levelToNumber(v[" "].Head.Info.TextLabel.Text)
    table.insert(enemies,{Enemy = v,Level = level})
end
table.sort(enemies, function(a,b)
    return a.Level < b.Level
end)


----------------------[ Hub ]----------------------
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "S2602 Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
----------------------[ Tab Bonus ]----------------------
local TabBonus = Window:CreateTab("Bonus", 4483362458)

local ButtonTeleportZoneDragonLord = TabBonus:CreateButton({
	Name = "Teleport Zone DragonLord",
	Callback = function()
		PlayerCharacter.HumanoidRootPart.CFrame = CFrame.new(-274, -26, -957)
	end,
})

local TTZD = false
local ToggleTeleportZoneDragonLord = TabBonus:CreateToggle({
	Name = "Auto Teleport Zone DragonLord",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		TTZD = Value
		while TTZD do
			pcall(function()
				PlayerCharacter.HumanoidRootPart.CFrame = CFrame.new(-274, -26, -957)
			end)
			wait(0.1)
		end
	end,
})

----------------------[ Tab AutoFarm ]----------------------
local TabAutoFarm = Window:CreateTab("AutoFarm", 4483362458)

local EntityTarget1 = {"Dragon Lord","Dark Wizard"}
local TADW = false
local ToggleAutoDragonWizzard = TabAutoFarm:CreateToggle({
	Name = "Auto Dragon + Wizzard [Req : Lv20k]",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		TADW = Value
		while TADW do
			wait(0.1)
			for _, x001 in pairs(Workspace.Enemies:GetChildren()) do
				for _, x002 in pairs(x001:GetChildren()) do
					pcall(function()
						if x002:IsA("Model") then
							for _, x003 in pairs(EntityTarget1) do
								for _, x004 in pairs(CoupleSword) do
									if x001.Name == x003 then
										x002.HumanoidRootPart.CanCollide = false
										x002.HumanoidRootPart.Anchored = true
										x002.HumanoidRootPart.Transparency = 0.4
										x002.HumanoidRootPart.Size = Vector3.new(7, 7, 7)
										x002.HumanoidRootPart.CFrame = PlayerCharacter.HumanoidRootPart.CFrame * CFrame.new(0, 0, -7)
										PlayerCharacter:FindFirstChildOfClass("Tool"):Activate()
										wait(0.12) --0.12 0.113
										x002.HumanoidRootPart.CFrame = PlayerCharacter.HumanoidRootPart.CFrame * CFrame.new(0, 0, -15)
										Rep:WaitForChild("Events"):WaitForChild("PurchaseSword"):FireServer(x004.Name)
										wait(0.12) --0.12 0.113
									end
								end
							end
						end
					end)
				end	
			end
		end
	end,
})

local EntityTarget2 = {"Dragon Lord"}
local TAOSDL = false
local ToggleAutoOneShotDragonLord = TabAutoFarm:CreateToggle({
	Name = "Auto Dragon OneShot",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		TAOSDL = Value
		while TAOSDL do
			wait(0.1)
			for _, x001 in pairs(Workspace.Enemies:GetChildren()) do
				for _, x002 in pairs(x001:GetChildren()) do
					pcall(function()
						if x002:IsA("Model") then
							for _, x003 in pairs(EntityTarget2) do
								if x001.Name == x003 then
									x002.HumanoidRootPart.CanCollide = false
									x002.Humanoid.WalkSpeed = 0
									x002.HumanoidRootPart.Size = Vector3.new(20, 7, 20)
									x002.HumanoidRootPart.Transparency = 0.4
									x002.HumanoidRootPart.CFrame = PlayerCharacter.HumanoidRootPart.CFrame * CFrame.new(0, 0, -12)
									sethiddenproperty(Player,"SimulationRadius",math.huge)
									PlayerCharacter:FindFirstChildOfClass("Tool"):Activate()
									x002:FindFirstChild("Humanoid").Health = 0
									wait(0.2) --0.12
								end
							end
						end
					end)
				end	
			end
		end
	end,
})
for _,v in ipairs(enemies) do
    local v1 = v.Enemy
	local TFAM = false
	local ToggleAutoOneShotDragonLord = TabAutoFarm:CreateToggle({
		Name = "Auto "..v1.Name.." [Lv "..v1[" "].Head.Info.TextLabel.Text.."]",
		CurrentValue = false,
		Flag = "Toggle1",
		Callback = function(Value)
			TFAM = Value
			while TFAM do
				wait(0.1)
				pcall(function()
					for _, v2 in pairs(v1:GetChildren()) do
						if v2:IsA("Model") then
							for _, v3 in pairs(CoupleSword) do
								v2.HumanoidRootPart.CanCollide = false
								v2.HumanoidRootPart.Anchored = true
								v2.HumanoidRootPart.Transparency = 0.4
								v2.HumanoidRootPart.Size = Vector3.new(7, 7, 7)
								v2:FindFirstChild("HumanoidRootPart").Anchored = true
								v2:FindFirstChild("HumanoidRootPart").CFrame = PlayerCharacter.HumanoidRootPart.CFrame * CFrame.new(0, 0, -7)
								PlayerCharacter:FindFirstChildOfClass("Tool"):Activate()
								wait(0.12) --0.12 0.113
								Rep:WaitForChild("Events"):WaitForChild("PurchaseSword"):FireServer(v3.Name)
								wait(0.12) --0.12 0.113
							end
						end
					end
				end)
			end
		end,
	})
end
----------------------[ Tab Shop ]----------------------
local TabShop = Window:CreateTab("Shop", 4483362458)

local SectionPets = TabShop:CreateSection("Pets")

local ButtonBuyGhost = TabShop:CreateButton({
	Name = "Buy Ghost Pet",
	Callback = function()
		Rep:WaitForChild("Events").PurchaseEgg:InvokeServer("Ghostly Egg",1)
	end,
})

local TABG = false 
local ToggleAutoBuyGhost = TabShop:CreateToggle({
	Name = "Auto Buy Ghost",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		TABG = Value
		while TABG do
			pcall(function()
				for abc = 1,99 do
					Rep:WaitForChild("Events").PurchaseEgg:InvokeServer("Ghostly Egg",1)
				end
			end)
			wait(0.001)
		end
	end,
})

local LabelPricePrestige = TabShop:CreateLabel("[ None ]",4483362458)

spawn(function()
	while wait(0.1) do
		pcall(function()
			Workspace.RebirthPart.CFrame = getRoot(PlayerCharacter).CFrame
			wait(0.1)
			Workspace.RebirthPart.CFrame = CFrame.new(-578.497314, 0.161657274, 199.010956, 0, -1, -0, -1, 0, -0, 0, 0, -1)
			Workspace.RebirthPart.Transparency = 1
			PrestigePrice = MainGui.PurchaseRebirth.price.Text
			MainGui.PurchaseRebirth.ImageLabel.Transparency = 1
			MainGui.PurchaseRebirth.ImageLabel.TextLabel.TextTransparency = 1
			MainGui.PurchaseRebirth.ImageLabel.ImageTransparency = 1
			MainGui.PurchaseRebirth.TextLabel.Transparency = 1
			MainGui.PurchaseRebirth.yes.Transparency = 1
			MainGui.PurchaseRebirth.yes.TextLabel.TextTransparency = 1
			MainGui.PurchaseRebirth.yes.ImageTransparency = 1
			MainGui.PurchaseRebirth.no.Transparency = 1
			MainGui.PurchaseRebirth.no.TextLabel.TextTransparency = 1
			MainGui.PurchaseRebirth.no.ImageTransparency = 1
			MainGui.PurchaseRebirth.price.Transparency = 1
			MainGui.PurchaseRebirth.Transparency = 1
			MainGui.PurchaseRebirth.ImageTransparency = 1
			LabelPricePrestige:Set("[ "..PrestigePrice.." ]",4483362458)
		end)
	end
end)

local ButtonBuyPrestige = TabShop:CreateButton({
	Name = "Buy Prestige",
	Callback = function()
		Rep:WaitForChild("Events"):WaitForChild("PurchaseRebirth"):FireServer()
	end,
})

local TABP = false
local ToggleAutoBuyPrestige = TabShop:CreateToggle({
	Name = "Auto Buy Prestige",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		TABP = Value
		while TABP do
			pcall(function()
				Rep:WaitForChild("Events"):WaitForChild("PurchaseRebirth"):FireServer()
			end)
			wait(0.1)
		end
	end,
})

----------------------[ Tab Info Player ]----------------------
local TabInfoPlayer = Window:CreateTab("Info Player", 4483362458)

local GemsCalculed
local SynLetter = {
		{Name = "K",Value = 1000},
		{Name = "M",Value = 1000000},
		{Name = "B",Value = 1000000000},
		{Name = "T",Value = 1000000000000},
		{Name = "P",Value = 1000000000000000}
	}
	
local LabelLevelPlayer = TabInfoPlayer:CreateLabel("Level Player : ", 4483362458)
local LabelGemPlayer = TabInfoPlayer:CreateLabel("Gems Player : ", 4483362458)

spawn(function()
	while wait(0.1) do
		local Level = Player.leaderstats.Level.Value
		LabelLevelPlayer:Set("Level : "..Level, 4483362458)
		local Gems = MainGui.MainItems.Gems.TextLabel.Text
		local result1 = string.match(Gems, "%u")
		local NumberGemsPlayer = string.match(Gems, "[%d%p%d]+")
		for i,v in pairs(SynLetter) do
			if result1 == v.Name then
				NumberGemsPlayer = NumberGemsPlayer*v.Value
				GemsCalculed = NumberGemsPlayer
				LabelGemPlayer:Set("Gems : "..Gems, 4483362458)
			end
		end
	end
end)

local SectionSwordInfo = TabInfoPlayer:CreateSection("Pets")
local CoupleSword
local ParagraphInfoSword = TabInfoPlayer:CreateParagraph({Title = "Best Swords", Content = "1st Sword: None\n2nd Sword: None"})

spawn(function()
	while wait(0.1) do
		pcall(function()
			ParagraphInfoSword:Set({Title = "Best Swords", Content = FinalArg})
		end)
	end
end)

----------------------[ Tab Inventory ]----------------------
local TabInventory = Window:CreateTab("Inventory", 4483362458)

----------------------[ Tab Rebirth Pets ]----------------------
local TabRebirthPets = Window:CreateTab("Rebirth Pets", 4483362458)

----------------------[ Tab Misc ]----------------------
local TabMisc = Window:CreateTab("Misc", 4483362458)

----------------------[ Tab Pets Calculator ]----------------------
local TabPetsCalculator = Window:CreateTab("Pets Calculator", 4483362458)
