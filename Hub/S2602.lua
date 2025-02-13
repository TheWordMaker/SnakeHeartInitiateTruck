getgenv().Get = setmetatable({}, {__index = function(Self, Idx) return game:GetService(Idx) end})

local Players = Get.Players
local Player = Players.LocalPlayer
local PlayerCharacter = Player.Character
local PlayerGui = Player.PlayerGui
local MainGui = PlayerGui.MainGui
local Workspace = Get.Workspace
local RunService = Get.RunService
local Rep = Get.ReplicatedStorage
local HttpService = Get.HttpService
local TeleportService = Get.TeleportService
local VirtualInputManager = Get.VirtualInputManager


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "S2602 Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local TIIME = 0
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

local SafeFloor = Instance.new("Part")
	SafeFloor.Name = "SafeFloor"
	SafeFloor.Size = Vector3.new(50, 5, 50)
	SafeFloor.Position = Vector3.new(0, -50, 0)
	SafeFloor.Anchored = true
	SafeFloor.Parent = Workspace
	SafeFloor.CanCollide = true
	SafeFloor.Transparency = 0

local SafeFloor2 = Instance.new("Part")
	SafeFloor2.Name = "SafeFloor2"
	SafeFloor2.Size = Vector3.new(50, 3, 50)
	SafeFloor2.Position = Vector3.new(-274, -30, -957)
	SafeFloor2.Anchored = true
	SafeFloor2.Parent = Workspace
	SafeFloor2.CanCollide = true
	SafeFloor2.Transparency = 0

local Tab0 = Window:MakeTab({
	Name = "Bonus",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section1Tab0 = Tab0:AddSection({
	Name = "Bonus Things"
})
Tab0:AddButton({
	Name = "FarmZone [Safe]",
	Callback = function()
      	PlayerCharacter.HumanoidRootPart.CFrame = CFrame.new(0, -47, 0)
  	end    
})
local Toggle1Tab0 = false
Tab0:AddToggle({
	Name = "Auto Teleport SafeZone",
	Default = false,
	Callback = function(Value)
		Toggle1Tab0 = Value
		while Toggle1Tab0 do
			wait(1)
			pcall(function()
				PlayerCharacter.HumanoidRootPart.CFrame = CFrame.new(0, -47, 0)
			end)
		end
	end    
})
Tab0:AddButton({
	Name = "Dragon Zone Farm [Safe]",
	Callback = function()
      	PlayerCharacter.HumanoidRootPart.CFrame = CFrame.new(-274, -26, -957)
  	end    
})
local Toggle2Tab0 = false
Tab0:AddToggle({
	Name = "Auto Dragon Zone Farm [Safe]",
	Default = false,
	Callback = function(Value)
		Toggle2Tab0 = Value
		while Toggle2Tab0 do
			wait(1)
			pcall(function()
				PlayerCharacter.HumanoidRootPart.CFrame = CFrame.new(-274, -26, -957)
			end)
		end
	end    
})

local Toggle3Tab0 = false
Tab0:AddToggle({
	Name = "AutoClicker",
	Default = false,
	Callback = function(Value)
		Toggle3Tab0 = Value
		while Toggle3Tab0 do
			wait(0.1)
			pcall(function()
				PlayerCharacter:FindFirstChildOfClass("Tool"):Activate()
				wait(1.7)
			end)
		end
	end    
})


local fgjkil = false
Tab0:AddToggle({
	Name = "Spamclick test",
	Default = false,
	Callback = function(Value)
		fgjkil = Value
		while fgjkil do
			pcall(function()
				for i,v in pairs(Player:FindFirstChildOfClass("Backpack"):GetChildren()) do
					if v:IsA("Tool") or v:IsA("HopperBin") then
						v.Parent = PlayerCharacter
					end
				end
				repeat wait() until PlayerCharacter:FindFirstChildOfClass("Tool")
				PlayerCharacter:FindFirstChildOfClass("Tool"):Activate()
				wait(0.7)
				PlayerCharacter:FindFirstChildOfClass('Humanoid'):UnequipTools()
				wait(0.7)
			end)
			wait(0.0001)
		end
	end    
})

	
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

local Tab1 = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Toggle1Tab1 = false
Tab1:AddToggle({
	Name = "Auto Equip Best Sword",
	Default = false,
	Callback = function(Value)
		Toggle1Tab1 = Value
		while Toggle1Tab1 do
			wait(0.1)
			Rep:WaitForChild("Events"):WaitForChild("PurchaseSword"):FireServer(CoupleSword[1].Name)
		end
	end    
})
local Section2Tab1 = Tab1:AddSection({
	Name = "AutoFarm Mob [Best]"
})
local EntityTarget = {"Dragon Lord","Dark Wizard"}
local Toggle2Tab1 = false
Tab1:AddToggle({
	Name = "Auto Dragon + Wizzard [Req : Lv20k]",
	Default = false,
	Callback = function(Value)
		Toggle2Tab1 = Value
		while Toggle2Tab1 do
			wait(0.1)
			for _, x001 in pairs(Workspace.Enemies:GetChildren()) do
				for _, x002 in pairs(x001:GetChildren()) do
					pcall(function()
						if x002:IsA("Model") then
							for _, x003 in pairs(EntityTarget) do
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
	end    
})
local EntityTarget2 = {"Dragon Lord"}
local Toggle3Tab1 = false
Tab1:AddToggle({
	Name = "Auto Dragon OneShot",
	Default = false,
	Callback = function(Value)
		Toggle3Tab1 = Value
		while Toggle3Tab1 do
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
	end    
})
local Section3Tab1 = Tab1:AddSection({
	Name = "AutoFarm Mob"
})
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
for _,v in ipairs(enemies) do
    local v1 = v.Enemy
    local Toggle4Tab1 = false
    Tab1:AddToggle({
        Name = "Auto "..v1.Name.." [Lv "..v1[" "].Head.Info.TextLabel.Text.."]",
        Default = false,
        Callback = function(Value)
            Toggle4Tab1 = Value
            while Toggle4Tab1 do
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
        end    
    })
end
local Tab2 = Window:MakeTab({
	Name = "Shop",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section1Tab2 = Tab2:AddSection({
	Name = "Pets"
})
Tab2:AddButton({
	Name = "Buy Ghost Pet",
	Callback = function()
		Rep:WaitForChild("Events").PurchaseEgg:InvokeServer("Ghostly Egg",1)
  	end    
})
local Toggle1Tab2a = false
Tab2:AddToggle({
	Name = "Auto Buy Ghost Pet 50% a",
	Default = false,
	Callback = function(Value)
		Toggle1Tab2a = Value
		while Toggle1Tab2a do
			pcall(function()
				for abc = 1,99 do
					Rep:WaitForChild("Events").PurchaseEgg:InvokeServer("Ghostly Egg",1)
				end
			end)
			wait(0.00000001)
		end
	end    
})
local Toggle1Tab2b = false
Tab2:AddToggle({
	Name = "Auto Buy Ghost Pet 50% b",
	Default = false,
	Callback = function(Value)
		Toggle1Tab2b = Value
		while Toggle1Tab2b do
			pcall(function()
				for abc = 1,99 do
					Rep:WaitForChild("Events").PurchaseEgg:InvokeServer("Ghostly Egg",1)
				end
			end)
			wait(0.00000001)
		end
	end    
})
local Label1Tab2 = Tab2:AddLabel("[ None ]")
spawn(function()
	while wait(0.1) do
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
		Label1Tab2:Set("[ "..PrestigePrice.." ]")
	end
end)
Tab2:AddButton({
	Name = "Buy Prestige",
	Callback = function()
		Rep:WaitForChild("Events"):WaitForChild("PurchaseRebirth"):FireServer()
  	end    
})
local Toggle2Tab2 = false
Tab2:AddToggle({
	Name = "Auto Prestige",
	Default = false,
	Callback = function(Value)
		Toggle2Tab2 = Value
		while Toggle2Tab2 do
			wait(0.4)
			pcall(function()
				Rep:WaitForChild("Events"):WaitForChild("PurchaseRebirth"):FireServer()
			end)
		end
	end    
})
local Toggle3Tab2 = false
Tab2:AddToggle({
	Name = "Auto Webhook [Every 1 Minutes]",
	Default = false,
	Callback = function(Value)
		Toggle3Tab2 = Value
		while Toggle3Tab2 do
			wait(0.1)
			local Pl_Level = Player.leaderstats.Level.Value
			local Pl_Prestige = Player.leaderstats.Prestiges.Value
			local Pl_Kill = Player.leaderstats.Kills.Value
			local Headers = {["content-type"] = "application/json"}
			local PlayerData =
			{
				["content"] = "",
				["embeds"] = {
					{
						["title"] = "**S2602 Farm**: ["..TIIME.." Minutes]",
						["description"] = "The player who farms is : "..Player.Name,
						["color"] = tonumber(0x2B6Ba7),
						["fields"] = {
							{
								["name"] = "Player Level",
								["value"] = "Levels : "..Pl_Level,
								["inline"] = false
							},
							{
								["name"] = "Player Prestige",
								["value"] = "Prestige : "..Pl_Prestige,
								["inline"] = false
							},
							{
								["name"] = "Gems",
								["value"] = "Gems : "..MainGui.MainItems.Gems.TextLabel.Text,
								["inline"] = false
							},
							{
								["name"] = "Player Kills",
								["value"] = "Kills : "..Pl_Kill,
								["inline"] = false
							},
						},
					},
				},
			}
			local PlayerData = HttpService:JSONEncode(PlayerData)
			local HttpRequest = http_request;
			if syn then
				HttpRequest = syn.request
			else
				HttpRequest = http_request
			end
			HttpRequest({Url=_G.Webhook, Body=PlayerData, Method="POST", Headers=Headers})
			TIIME += 1
			wait(60)
		end
	end    
})
local Tab3bis = Window:MakeTab({
	Name = "Info Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local GemsCalculed
local SynLetter = {
		{Name = "K",Value = 1000},
		{Name = "M",Value = 1000000},
		{Name = "B",Value = 1000000000},
		{Name = "T",Value = 1000000000000},
		{Name = "P",Value = 1000000000000000}
	}
local Label1Tab3bis = Tab3bis:AddLabel("Level Player : ")
local Label2Tab3bis = Tab3bis:AddLabel("Gems Player : ")
spawn(function()
	while wait(0.1) do
		local Level = Player.leaderstats.Level.Value
		Label1Tab3bis:Set("Level : "..Level)
		local Gems = MainGui.MainItems.Gems.TextLabel.Text
		local result1 = string.match(Gems, "%u")
		local NumberGemsPlayer = string.match(Gems, "[%d%p%d]+")
		for i,v in pairs(SynLetter) do
			if result1 == v.Name then
				NumberGemsPlayer = NumberGemsPlayer*v.Value
				GemsCalculed = NumberGemsPlayer
				Label2Tab3bis:Set("Gems : "..Gems)
			end
		end
	end
end)
local Section1Tab00 = Tab3bis:AddSection({
	Name = "Sword Info"
})
local CoupleSword
local Paragraph1Tab3bis = Tab3bis:AddParagraph("Best Swords","1st Sword: None\n2nd Sword: None")

spawn(function()
	while wait(0.1) do
		Paragraph1Tab3bis:Set(FinalArg)
	end
end)
local Label3Tab3bis = Tab3bis:AddLabel("Aura Equiped : ")
local AuraName
spawn(function()
	while wait(0.1) do
		if Workspace[Player.Name]:FindFirstChildOfClass("Tool") then
			local ToolFinder = Workspace[Player.Name]:FindFirstChildOfClass("Tool")
			if ToolFinder.Handle:FindFirstChildOfClass("ParticleEmitter") then
				Label3Tab3bis:Set("Aura Equiped : "..ToolFinder.Handle:FindFirstChildOfClass("ParticleEmitter").Name)
				AuraName = ToolFinder.Handle:FindFirstChildOfClass("ParticleEmitter").Name
			else
				Label3Tab3bis:Set("Aura Equiped : Aura no found")
				AuraName = "None"
			end
		else
			Label3Tab3bis:Set("Aura Equiped : You dont have sword")
		end
	end
end)
local SuggestAuraName,SuggestAuraPrice
spawn(function()
	while wait(0.1) do
		local GemsOrigin = GemsCalculed
		local AuraList = {}
		for _, v1 in pairs(MainGui.AurasFrame.ScrollingFrame:GetChildren()) do
			if v1:IsA("ImageLabel") then
				local levelText = v1.info.levellabel.Text
				local detectbig = string.match(levelText, "%d+[,%d]*")
				if string.find(detectbig, ",") then
					detectbig = string.gsub(detectbig, ",", "")
					detectbig = tonumber(detectbig) 
				else
					detectbig = tonumber(detectbig)
				end
				table.insert(AuraList,{Name = v1.Name,Price = detectbig})
			end
		end
		local function ComparePrice(a, b)
			local niveauA = a.Price
			local niveauB = b.Price
			return niveauA < niveauB
		end
		table.sort(AuraList, ComparePrice)
		for _,v in ipairs(AuraList) do
			if GemsCalculed >= v.Price then
				SuggestAuraName,SuggestAuraPrice = v.Name,v.Price
			end
		end
	end
end)
local Label4Tab3bis = Tab3bis:AddLabel("Aura Suggest : ")
spawn(function()
	while wait(0.1) do
		Label4Tab3bis:Set("Aura Suggest : Name : "..SuggestAuraName.." Price : "..SuggestAuraPrice)
	end
end)
local Toggle1Tab3bis = false

Tab3bis:AddToggle({
	Name = "Auto Buy aura [Depend Gems]",
	Default = false,
	Callback = function(Value)
		Toggle1Tab3bis = Value
		while Toggle1Tab3bis do
			wait(0.1)
			if GemsCalculed >= 1000 then
				if AuraName ~= SuggestAuraName then
					local args = {
						[1] = SuggestAuraName
					}
					Rep:WaitForChild("Events"):WaitForChild("PurchaseAura"):FireServer(unpack(args))
					wait(0.5)
				end
			end
		end
	end    
})
local Tab3 = Window:MakeTab({
	Name = "Inventory",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section1Tab4 = Tab3:AddSection({
	Name = "Inventory Pets"
})
local Label1Tab3 = Tab3:AddParagraph("Nombre de pets", "")
spawn(function()
    while wait(0.01) do
        local petCounts = {}
        for _, x002 in pairs(MainGui.PetsFrame.ScrollingFrame:GetChildren()) do
            if x002:IsA("ImageButton") then
                local petName = x002.namelabel.TextLabel.Text
				if petName == x002.Name then
					petName = "[0] "..x002.Name
				end
                if not petCounts[petName] then
                    petCounts[petName] = 1
                else
                    petCounts[petName] = petCounts[petName] + 1
                end
            end
        end
        local labelText = ""
        for petName, count in pairs(petCounts) do
            labelText = labelText.." "..petName.." : "..count.."\n"
        end
        Label1Tab3:Set(labelText)
    end
end)

local Tab4 = Window:MakeTab({
	Name = "Rebirth Pets",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section1Tab3 = Tab4:AddSection({
	Name = "Rebirth Ghost"
})
local Toggle1Tab3 = false
Tab4:AddToggle({
	Name = "Auto Rebirth Ghost[0 -> 1]",
	Default = false,
	Callback = function(Value)
		Toggle1Tab3 = Value
        while Toggle1Tab3 do
			wait(0.00000001)
            pcall(function()
				function getNil(name,class) for _,v in next, getnilinstances() do if v.ClassName==class and v.Name==name then return v;end end end
				local args = {
					[1] = {
						["Button"] = getNil("Ghost", "ImageButton"),
						["Rebirths"] = 0,
						["Equipped"] = false,
						["Name"] = "Ghost"
					}
				}
				Rep:WaitForChild("Events"):WaitForChild("RebirthPet"):InvokeServer(unpack(args))
			end)
        end
	end    
})

local Toggle2Tab3 = false
Tab4:AddToggle({
	Name = "Auto Rebirth Ghost[1 -> 2]",
	Default = false,
	Callback = function(Value)
		Toggle2Tab3 = Value
		while Toggle2Tab3 do
			wait(0.00000001)
			pcall(function()
				function getNil(name,class) for _,v in next, getnilinstances() do if v.ClassName==class and v.Name==name then return v;end end end
				local args = {
					[1] = {
						["Button"] = getNil("Ghost", "ImageButton"),
						["Equipped"] = false,
						["Rebirths"] = 1,
						["Name"] = "Ghost"
					}
				}
				Rep:WaitForChild("Events"):WaitForChild("RebirthPet"):InvokeServer(unpack(args))
			end)
		end
	end  
})
local Toggle3Tab3 = false
Tab4:AddToggle({
	Name = "Auto Rebirth Ghost[2 -> 3]",
	Default = false,
	Callback = function(Value)
		Toggle3Tab3 = Value
		while Toggle3Tab3 do
			wait(0.00000001)
			pcall(function()
				function getNil(name,class) for _,v in next, getnilinstances() do if v.ClassName==class and v.Name==name then return v;end end end
				local args = {
					[1] = {
						["Button"] = getNil("Ghost", "ImageButton"),
						["Equipped"] = false,
						["Rebirths"] = 2,
						["Name"] = "Ghost"
					}
				}
				Rep:WaitForChild("Events"):WaitForChild("RebirthPet"):InvokeServer(unpack(args))
			end)
		end
	end  
})
local Toggle4Tab3 = false
Tab4:AddToggle({
	Name = "Auto Rebirth Ghost[3 -> 4]",
	Default = false,
	Callback = function(Value)
		Toggle4Tab3 = Value
		while Toggle4Tab3 do
			wait(0.00000001)
			pcall(function()
				function getNil(name,class) for _,v in next, getnilinstances() do if v.ClassName==class and v.Name==name then return v;end end end
				local args = {
					[1] = {
						["Button"] = getNil("Ghost", "ImageButton"),
						["Equipped"] = false,
						["Rebirths"] = 3,
						["Name"] = "Ghost"
					}
				}
				Rep:WaitForChild("Events"):WaitForChild("RebirthPet"):InvokeServer(unpack(args))
			end)
		end
	end  
})
local Toggle5Tab3 = false
Tab4:AddToggle({
	Name = "Auto Rebirth Ghost[4 -> 5]",
	Default = false,
	Callback = function(Value)
		Toggle5Tab3 = Value
		while Toggle5Tab3 do
			wait(0.00000001)
			pcall(function()
				function getNil(name,class) for _,v in next, getnilinstances() do if v.ClassName==class and v.Name==name then return v;end end end
				local args = {
					[1] = {
						["Button"] = getNil("Ghost", "ImageButton"),
						["Equipped"] = false,
						["Rebirths"] = 4,
						["Name"] = "Ghost"
					}
				}
				Rep:WaitForChild("Events"):WaitForChild("RebirthPet"):InvokeServer(unpack(args))
			end)
		end
	end  
})
local Toggle6Tab3 = false
Tab4:AddToggle({
	Name = "Auto Rebirth Ghost[5 -> 6]",
	Default = false,
	Callback = function(Value)
		Toggle6Tab3 = Value
		while Toggle6Tab3 do
			wait(0.00000001)
			pcall(function()
				function getNil(name,class) for _,v in next, getnilinstances() do if v.ClassName==class and v.Name==name then return v;end end end
				local args = {
					[1] = {
						["Button"] = getNil("Ghost", "ImageButton"),
						["Equipped"] = false,
						["Rebirths"] = 5,
						["Name"] = "Ghost"
					}
				}
				Rep:WaitForChild("Events"):WaitForChild("RebirthPet"):InvokeServer(unpack(args))
			end)
		end
	end  
})
local Toggle7Tab3 = false
Tab4:AddToggle({
	Name = "Auto Rebirth Ghost[6 -> 7]",
	Default = false,
	Callback = function(Value)
		Toggle7Tab3 = Value
		while Toggle7Tab3 do
			wait(0.00000001)
			pcall(function()
				function getNil(name,class) for _,v in next, getnilinstances() do if v.ClassName==class and v.Name==name then return v;end end end
				local args = {
					[1] = {
						["Button"] = getNil("Ghost", "ImageButton"),
						["Equipped"] = false,
						["Rebirths"] = 6,
						["Name"] = "Ghost"
					}
				}
				Rep:WaitForChild("Events"):WaitForChild("RebirthPet"):InvokeServer(unpack(args))
			end)
		end
	end  
})

local Tab5 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab5:AddButton({
	Name = "Console",
	Callback = function()
      	game.StarterGui:SetCore("DevConsoleVisible", true)
  	end    
})
Tab5:AddButton({
	Name = "Infinity Yield",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})
Tab5:AddButton({
	Name = "Anti Afk",
	Callback = function()
		local ba=Instance.new("ScreenGui")
		local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
		local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
		ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
		ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
		ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
		ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti Afk"ca.TextColor3=Color3.new(0,1,1)
		ca.TextSize=22;da.Parent=ca
		da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
		da.Size=UDim2.new(0,370,0,107)_b.Parent=da
		_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
		_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made by Headshot#5868"
		_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
		ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
		ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
		ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
		Player.Idled:connect(function()
		bb:CaptureController()bb:ClickButton2(Vector2.new())
		ab.Text="Roblox kicked you but we didnt let them!"wait(2)ab.Text="Status : Active"end)
  	end    
})
Tab5:AddButton({
	Name = "Dark Dex",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
  	end    
})
local Toggle1Tab5 = false
Tab5:AddToggle({
	Name = "Auto Clear Chat [Remove Message System]",
	Default = false,
	Callback = function(Value)
		Toggle2Tab2 = Value
		while Toggle2Tab2 do
			wait(0.2)
			for i,v in pairs(PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller:GetChildren()) do
				if v.Name == "Frame" and v:FindFirstChild("TextLabel") then
					if string.find(v:FindFirstChild("TextLabel").Text,"SYSTEM") then
						v:Destroy()
					end
				end
			end
		end
	end    
})
local Tab5 = Window:MakeTab({
	Name = "Pets Calculator",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Paragraph1Tab5 = Tab5:AddParagraph("Info Request:","..")
Tab5:AddParagraph("[⚠️ Info Price ⚠️]:","1K = 1 000\n1M = 1 000 000\n1B = 1 000 000 000\n1T = 1 000 000 000 000\n1P = 1 000 000 000 000 000")
local Paragraph2Tab5 = Tab5:AddParagraph("Pets Calculator :","Coming Soon...")

local PetsSelected = "None"
local Dropdown1Tab5 = Tab5:AddDropdown({
	Name = "Select Pets",
	Default = "None",
	Options = {"None","Ghost"},
	Callback = function(Value)
		PetsSelected = Value
	end    
})
local SynLetter = {
		{Name = "K",Value = 1000},
		{Name = "M",Value = 1000000},
		{Name = "B",Value = 1000000000},
		{Name = "T",Value = 1000000000000},
		{Name = "P",Value = 1000000000000000}
	}
local countWait1 = 0
local countWait2 = 0
local countWait3 = 0
local countWait4 = 0

local NumberGemsPlayer
local function T1Calculator(Enough,Price)
	local RT0 = math.floor(Enough/Price)
	local RT1 = math.floor(RT0/5)
	local RT2 = math.floor(RT1/5)
	local RT3 = math.floor(RT2/5)
	local RT4 = math.floor(RT3/5)
	local RT5 = math.floor(RT4/5)
	local RT6 = math.floor(RT5/5)
	local RT7 = math.floor(RT6/5)
	local RT8 = math.floor(RT7/5)
	local RT9 = math.floor(RT8/5)
	local RT10 = math.floor(RT9/5)
	return RT0,RT1,RT2,RT3,RT4,RT5,RT6,RT7,RT8,RT9,RT10
end

spawn(function()
	while wait(0.1) do
		local Gems = MainGui.MainItems.Gems.TextLabel.Text
		local result1 = string.match(Gems, "%u")
		NumberGemsPlayer = string.match(Gems, "[%d%p%d]+")
		for i,v in pairs(SynLetter) do
			if result1 == v.Name then
				NumberGemsPlayer = NumberGemsPlayer*v.Value
			end
		end
		local Paragraph1Arg1
		local Paragraph1Arg2
		local Paragraph1Arg3
		local rPrice
		local Paragraph1ConversArg
		local Paragraph2ConversArg
		if PetsSelected == "None" then
			countWait1 += 1
			if countWait1 == 1 then 
				Paragraph1Arg1 = "Pet Selected: Waiting. [❌]"
			elseif countWait1 == 2 then
				Paragraph1Arg1 = "Pet Selected: Waiting.. [❌]"
			elseif countWait1 == 3 then
				Paragraph1Arg1 = "Pet Selected: Waiting... [❌]"
				countWait1 = 0
			end
		else
			Paragraph1Arg1 = "Pet Selected: "..PetsSelected.." [✅]"
		end
		if PetsSelected == "None" then
			countWait2 += 1
			if countWait2 == 1 then 
				Paragraph1Arg2 = "\nPet Price: Waiting. [❌]"
			elseif countWait2 == 2 then
				Paragraph1Arg2 = "\nPet Price: Waiting.. [❌]"
			elseif countWait2 == 3 then
				Paragraph1Arg2 = "\nPet Price: Waiting... [❌]"
				countWait2 = 0
			end
		elseif PetsSelected == "Ghost" then
			rPrice = 15000000000
			Paragraph1Arg2 = "\nPet Price: 15B [✅]"
		end
		if PetsSelected == "None" then
			countWait3 += 1
			if countWait3 == 1 then 
				Paragraph1Arg3 = "\nPlayer Gems: Waiting. [❌]"
			elseif countWait3 == 2 then
				Paragraph1Arg3 = "\nPlayer Gems: Waiting.. [❌]"
			elseif countWait3 == 3 then
				Paragraph1Arg3 = "\nPlayer Gems: Waiting... [❌]"
				countWait3 = 0
			end
		else
			Paragraph1Arg3 = "\nPlayer Gems: "..NumberGemsPlayer.." [✅]"
		end
		Paragraph1ConversArg = Paragraph1Arg1..Paragraph1Arg2..Paragraph1Arg3
		Paragraph1Tab5:Set(Paragraph1ConversArg)
		local Paragraph2Arg1
		if PetsSelected ~= "None" then
			pcall(function()
				local RT0,RT1,RT2,RT3,RT4,RT5,RT6,RT7,RT8,RT9,RT10 = T1Calculator(NumberGemsPlayer,rPrice)
				Paragraph2Arg1 = PetsSelected.." Tier 0: "..RT0
				Paragraph2Arg2 = "\n"..PetsSelected.." Tier 1: "..RT1
				Paragraph2Arg3 = "\n"..PetsSelected.." Tier 2: "..RT2
				Paragraph2Arg4 = "\n"..PetsSelected.." Tier 3: "..RT3
				Paragraph2Arg5 = "\n"..PetsSelected.." Tier 4: "..RT4
				Paragraph2Arg6 = "\n"..PetsSelected.." Tier 5: "..RT5
				Paragraph2Arg7 = "\n"..PetsSelected.." Tier 6: "..RT6
				Paragraph2Arg8 = "\n"..PetsSelected.." Tier 7: "..RT7
				Paragraph2Arg9 = "\n"..PetsSelected.." Tier 8: "..RT8
				Paragraph2Arg10 = "\n"..PetsSelected.." Tier 9: "..RT9
				Paragraph2Arg11 = "\n"..PetsSelected.." Tier 10: "..RT10
				Paragraph2ConversArg = Paragraph2Arg1..Paragraph2Arg2..Paragraph2Arg3..Paragraph2Arg4..Paragraph2Arg5..Paragraph2Arg6..Paragraph2Arg7..Paragraph2Arg8..Paragraph2Arg9..Paragraph2Arg10..Paragraph2Arg11
				Paragraph2Tab5:Set(Paragraph2ConversArg)
			end)
		else
			countWait4 += 1
			if countWait4 == 1 then 
				Paragraph2Arg1 = "Waiting. [❌]"
			elseif countWait4 == 2 then
				Paragraph2Arg1 = "Waiting.. [❌]"
			elseif countWait4 == 3 then
				Paragraph2Arg1 = "Waiting... [❌]"
				countWait4 = 0
			end
			Paragraph2Tab5:Set(Paragraph2Arg1)
		end
	end
end)


--[[
-- Gems
local Player = game.Players.LocalPlayer
local PlayerCharacter = Player.Character
local plrGui = Player.PlayerGui
local MainGui = plrGui.MainGui

local SynLetter = {
		{Name = "K",Value = 1000},
		{Name = "M",Value = 1000000},
		{Name = "B",Value = 1000000000},
		{Name = "T",Value = 1000000000000},
		{Name = "P",Value = 1000000000000000}
	}


local Gems = MainGui.MainItems.Gems.TextLabel.Text
local result1 = string.match(Gems, "%u")
local NumberGemsPlayer = string.match(Gems, "[%d%p%d]+")
local GemsCalculed
for i,v in pairs(SynLetter) do
	if result1 == v.Name then
		NumberGemsPlayer = NumberGemsPlayer*v.Value
		GemsCalculed = NumberGemsPlayer
		--GemsCalculed
	end
end

-- Aura
local GemsOrigin = GemsCalculed
local AuraList = {}
for _, v1 in pairs(MainGui.AurasFrame.ScrollingFrame:GetChildren()) do
	if v1:IsA("ImageLabel") then
		local levelText = v1.info.levellabel.Text
		local detectbig = string.match(levelText, "%d+[,%d]*")
		if string.find(detectbig, ",") then
			detectbig = string.gsub(detectbig, ",", "")
			detectbig = tonumber(detectbig) 
		else
			detectbig = tonumber(detectbig)
		end
		table.insert(AuraList,{Name = v1.Name,Price = detectbig})
	end
end
local function ComparePrice(a, b)
	local niveauA = a.Price
	local niveauB = b.Price
	return niveauA < niveauB
end
table.sort(AuraList, ComparePrice)

local SuggestAuraName,SuggestAuraPrice
for _,v in ipairs(AuraList) do
	if GemsCalculed >= v.Price then
		SuggestAuraName,SuggestAuraPrice = v.Name,v.Price
	end
end
print("Suggest Aura : "..SuggestAuraName,SuggestAuraPrice)


local boolValue = Instance.new("BoolValue")
	boolValue.Name = "Teleports"
	boolValue.Value = false
	boolValue.Parent = game.Players.LocalPlayer.Gamepasses
	
local boolValue = Instance.new("BoolValue")
	boolValue.Name = "VIP"
	boolValue.Value = false
	boolValue.Parent = game.Players.LocalPlayer.Gamepasses
	
local boolValue = Instance.new("BoolValue")
	boolValue.Name = "2x Exp"
	boolValue.Value = false
	boolValue.Parent = game.Players.LocalPlayer.Gamepasses
	
local boolValue = Instance.new("BoolValue")
	boolValue.Name = "2x Gems"
	boolValue.Value = false
	boolValue.Parent = game.Players.LocalPlayer.Gamepasses
	
local boolValue = Instance.new("BoolValue")
	boolValue.Name = "Triple Egg"
	boolValue.Value = false
	boolValue.Parent = game.Players.LocalPlayer.Gamepasses
	
local boolValue = Instance.new("BoolValue")
	boolValue.Name = "Instant Hatch"
	boolValue.Value = false
	boolValue.Parent = game.Players.LocalPlayer.Gamepasses
	
local boolValue = Instance.new("BoolValue")
	boolValue.Name = "2x Click Speed"
	boolValue.Value = false
	boolValue.Parent = game.Players.LocalPlayer.Gamepasses

local boolValue = Instance.new("BoolValue")
	boolValue.Name = "+40 Pets"
	boolValue.Value = false
	boolValue.Parent = game.Players.LocalPlayer.Gamepasses
	
local boolValue = Instance.new("BoolValue")
	boolValue.Name = "+150 Pets"
	boolValue.Value = false
	boolValue.Parent = game.Players.LocalPlayer.Gamepasses

local boolValue = Instance.new("BoolValue")
	boolValue.Name = "+4 Pets"
	boolValue.Value = false
	boolValue.Parent = game.Players.LocalPlayer.Gamepasses
	
	
local boolValue = Instance.new("BoolValue")
	boolValue.Name = "Extra Speed"
	boolValue.Value = false
	boolValue.Parent = game.Players.LocalPlayer.Gamepasses
	
local boolValue = Instance.new("BoolValue")
	boolValue.Name = "Iron Skin"
	boolValue.Value = false
	boolValue.Parent = game.Players.LocalPlayer.Gamepasses

]]--
