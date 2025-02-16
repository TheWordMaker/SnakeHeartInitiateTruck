local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Ultra Unfair Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Ultra Unfair Saver"
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

----------------------[ Universal Utilities ]----------------------
getgenv().Get = setmetatable({}, {__index = function(Self, Idx) return game:GetService(Idx) end})
local Players = Get.Players
local Player = Players.LocalPlayer


local Workspace = Get.Workspace
local RunService = Get.RunService
local Rep = Get.ReplicatedStorage
local HttpService = Get.HttpService
local TeleportService = Get.TeleportService
local VirtualInputManager = Get.VirtualInputManager
local RerollPath = Player.PlayerGui.Reroll


local function clickButton()
    local pos = RerollPath.Rerolls.X.AbsolutePosition + RerollPath.Rerolls.X.AbsoluteSize / 2
    VirtualInputManager:SendMouseButtonEvent(pos.X, pos.Y, 0, true, RerollPath.Rerolls.X, 0)
    wait(0.1)
    VirtualInputManager:SendMouseButtonEvent(pos.X, pos.Y, 0, false, RerollPath.Rerolls.X, 0)
end


local TableQuests = {
    "Real Amgogus",
    "Gaming Disorder",
    "Kingdom",
    "Rigged Game",
    "Trouble in the backrooms",
    "Something is in the sewers",
    "Cooking some crossovers",
    "Troubles from another timeline",
	"From another world",
    "Ultra Fair"
    }

local LookingPower = {
    "EventGoals",
    "Boosts",
    "Gamepasses",
    "Badges",
    "ClaimedGoals",
    "MousePositionsThrow",
    "leaderstats"
	}

local Old = getsenv(Player.PlayerScripts.MoveHandler)

hookfunction(Old.camshake, function()
    return
end)

hookfunction(Old._G.knockback, function()
    return
end)

hookfunction(Old._G.HitEffect, function()
    return
end)
hookfunction(Old._G.flasheffect, function()
    return
end)

hookfunction(Old.addparticle, function()
    return
end)

getgenv().Toggles = {
    AutoRoll = false
}

getgenv().RollSettings = {
    Amount = 25,
    Threshold = 15,
    Store = false
}

local function activateAbility()
    local args = {[1] = false} 
    Rep.ToggleAbility:InvokeServer(unpack(args))
end

local count = 0

local function autoRoll()
    if(Toggles.AutoRoll) then
        count = 0
        Rep.Reroll:InvokeServer(nil, nil, true)
    end
end

local function getRolledAbilities()
    local abilityResults = {}
    for _i, ability in RerollPath.Rerolls.ScrollingFrame:GetChildren() do
        if (ability.Name ~= "RollTemplate")  then
            continue
        end
        for i, v in next, getconnections(ability.RollTemplate.Accept.MouseButton1Click) do
            for i2, v2 in next, getupvalues(v.Function) do
                if(type(v2) == "table" and v2.Ability) then
                    local ability = {name = nil, potential = nil, accept = nil}
                    ability.name = v2.Ability
                    ability.potential = v2.Potential
                    ability.accept = v.Function
                    table.insert(abilityResults, ability)
                end
            end
        end
    end
    return abilityResults
end



getgenv().AbilityDict = {}
local AbilityList = {"Spectral"}

for _,v in pairs(RerollPath.Prompt.Prompt.ScrollingFrame:GetChildren()) do
    if v:IsA("TextButton") then
        table.insert(AbilityList,v.Name)
		AbilityDict[v.Name] = RollSettings.Threshold
    end
end

local function quest(quest)
	Rep.TakeQuest:FireServer(quest)
end

local function getQuestMobs(quest)
    local enemyType
    if quest == "Real Amgogus" then 
        enemyType = {"Cripple"}
    elseif quest == "Gaming Disorder" then 
        enemyType = {"Crail"}
    elseif quest == "Kingdom" then 
        enemyType = {"Blyke", "Isen", "Remi", "Zeke"}
    elseif quest == "Rigged Game" then 
        enemyType = {"Arlo", "John", "Seraphina"}
    elseif quest == "Trouble in the backrooms" then 
        enemyType = {"Seer", "John", "Seraphina"}
    elseif quest == "Something is in the sewers" then 
        enemyType = {"Cultist"}
    elseif quest == "Cooking some crossovers" then 
        enemyType = {"Thunderclap"}
    elseif quest == "Troubles from another timeline" then 
        enemyType = {"Roku"}
    elseif quest == "From another world" then 
        enemyType = {"Otherworlders"}
    elseif quest == "Ultra Fair" then 
        enemyType = {"God"}
    end
    return(enemyType)
end

local function ReverseQuest(Quest)
	local NewQuest
	if Quest == "From another world" then
		NewQuest = "Ultra Fair"
	elseif Quest == "Ultra Fair" then
		NewQuest = "From another world"
	end
	return NewQuest
end
local function ConverseQuestToMob(Quest)
	local Mob
	if Quest == "From another world" then
		Mob = "Otherworlders"
	elseif Quest == "Ultra Fair" then
		Mob = "God"
	end
	return Mob	
end

spawn(function()
	while wait(0.001) do
		pcall(function()
			for _,v in pairs(Workspace:GetChildren()) do
				if v.Name == "Otherworlders" or v.Name == "God" then
					if v.Humanoid.Health == 0 then
						v:Destroy()
					end
				end
			end
		end)
	end
end)

----------------------[ Tab Misc ]----------------------
local TabMisc = Window:CreateTab("Misc", 4483362458)

local SectionGlobalMisc = TabMisc:CreateSection("Global Misc")

local ButtonConsoleTabMisc = TabMisc:CreateButton({
    Name = "Console",
    Callback = function()
        game.StarterGui:SetCore("DevConsoleVisible", true)
    end,
})

local ButtonDarkDexTabMisc = TabMisc:CreateButton({
    Name = "DarkDex",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()

    end,
})

local ButtonHydroxideTabMisc = TabMisc:CreateButton({
    Name = "Hydroxide",
    Callback = function()
		local owner = "Upbolt"
		local branch = "revision"
		local function webImport(file)
			return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
		end
		webImport("init")
		webImport("ui/main")
    end,
})

local SectionInGameMiscTabMisc = TabMisc:CreateSection("In-Game Misc")

local ToggleButtonBypassCooldown = false
local ToggleBypassCooldownTabMisc = TabMisc:CreateToggle({
    Name = "Bypass Cooldown Power",
    CurrentValue = false,
    Flag = "ToggleBypassCooldownTabMisc", 
    Callback = function(Value)
        ToggleButtonBypassCooldown = Value
        while ToggleButtonBypassCooldown do
            pcall(function()
				for i,v in pairs(Player:GetChildren()) do
					for a,z in pairs(AbilityList) do
						if z == v.Name then
							for x,y in pairs(v:GetChildren()) do
								y:Destroy()
							end
						end
					end
				end
            end)
			wait(0.1)
        end
    end,
})

local ActivateAbility = false
local ToggleActivateAbility = TabMisc:CreateToggle({
    Name = "Activate Ability",
    CurrentValue = false,
    Flag = "", 
    Callback = function(Value)
        ActivateAbility = Value
        while ActivateAbility do
			pcall(function()
				if not Player.Character:FindFirstChild("Head"):FindFirstChild("LeftGlow") then
					activateAbility()
				end
			end)
            wait(0.1)
        end
    end,
})

local ButtonTrackPowerTabMisc = TabMisc:CreateButton({
    Name = "Track Power",
    Callback = function()
        print("--------[ Tracker ]--------")
        for i, v in pairs(Player:GetChildren()) do
            if v:IsA("Folder") then
                local found = false
                for _, z in pairs(LookingPower) do
                    if v.Name == z then
                        found = true
                        break
                    end
                end
                if not found then
                    print(v.Name)
                end
            end
        end
	end,
})

local ToggleButtonAntiLag = false
Workspace.ChildAdded:Connect(function(child)
    if not ToggleButtonAntiLag then
        return
    end
    local function checkForParticleEmitters(obj)
        if obj:IsA("ParticleEmitter") then
			print("Destroy: "..obj.Name.." ["..obj.ClassName.."]")
            obj:Destroy()
        end
        for _, descendant in ipairs(obj:GetChildren()) do
            checkForParticleEmitters(descendant)
        end
    end
    if child:IsDescendantOf(workspace.Magic) then
        checkForParticleEmitters(child)
    end
end)

local ToggleAntiLagTabMisc = TabMisc:CreateToggle({
    Name = "Remove Particle",
    CurrentValue = false,
    Flag = "ToggleAntiLagTabMisc", 
    Callback = function(Value)
        ToggleButtonAntiLag = Value
        while ToggleButtonAntiLag do
            pcall(function()
				for _,v in pairs(Workspace.Magic:GetChildren()) do
					if v.Name == "Smoke" then
						for a,z in pairs(v:GetChildren()) do
							if z:IsA("ParticleEmitter") then
								z:Destroy()
							end
						end
					end

				end
            end)
			wait(.0001)
        end
    end,
})

local IncreaseSize = 10
local SliderSizePoisonTabMisc = TabMisc:CreateSlider({
	Name = "Size Poison",
	Range = {1, 500},
	Increment = 10,
	Suffix = "Size",
	CurrentValue = 10,
	Flag = "SliderSizePoisonTabMisc", 
	Callback = function(Value)
		IncreaseSize = Value
   end,
})

local ToggleButtonAutoSizePoison = false
local ToggleAutoSizePoisonTabMisc = TabMisc:CreateToggle({
    Name = "Auto Size Poison",
    CurrentValue = false,
    Flag = "ToggleAutoSizePoisonTabMisc", 
    Callback = function(Value)
        ToggleButtonAutoSizePoison = Value
        while ToggleButtonAutoSizePoison do
            pcall(function()
				for i,v in pairs(Workspace.Magic:GetChildren()) do
					if v.Name == "Smoke" then
						v.Size = Vector3.new(IncreaseSize, IncreaseSize, IncreaseSize)
						v.Transparency = 0
					end
				end
            end)
			wait(.0001)
        end
    end,
})

----------------------[ Tab Shop ]----------------------
local TabShop = Window:CreateTab("Shop", 4483362458)

local SectionRerollTabShop = TabShop:CreateSection("Reroll Power")

local ButtonRerollx1TabShop = TabShop:CreateButton({
    Name = "Reroll [ x1 ]",
    Callback = function()
        Rep.Reroll:InvokeServer()
    end,
})

local ButtonRerollx10TabShop = TabShop:CreateButton({
    Name = "Reroll [ x10 ]",
    Callback = function()
        Rep.Reroll:InvokeServer(nil,nil,true)
    end,
})

local SectionBuyRelicTabShop = TabShop:CreateSection("Shop Relic")

local ButtonBuyRelicx1TabShop = TabShop:CreateButton({
    Name = "Buy Relic [ x1 ]",
    Callback = function()
        Rep.RollGear:InvokeServer("Relic")
    end,
})

local ButtonBuyRelicx10TabShop = TabShop:CreateButton({
    Name = "Buy Relic [ x10 ]",
    Callback = function()
        for x = 1,10 do
            Rep.RollGear:InvokeServer("Relic")
        end
    end,
})

local SectionBuyFistTabShop = TabShop:CreateSection("Shop Fist")

local ButtonBuyFistx1TabShop = TabShop:CreateButton({
    Name = "Buy Fist [ x1 ]",
    Callback = function()
        Rep.RollGear:InvokeServer("Fist")
    end,
})

local ButtonBuyFistx10TabShop = TabShop:CreateButton({
    Name = "Buy Fist [ x10 ]",
    Callback = function()
		for x = 1,10 do
			Rep.RollGear:InvokeServer("Fist")
		end
    end,
})
local DividerTabShop = TabShop:CreateDivider()

----------------------[ Tab AutoFarm ]----------------------
local TabAutoFarm = Window:CreateTab("AutoFarm", 4483362458)

local SectionAutoQuest = TabAutoFarm:CreateSection("Quests")

local QuestSelected
local DropdownSelectQuestTabAutoFarm = TabAutoFarm:CreateDropdown({
	Name = "Select Quest",
	Options = TableQuests,
	CurrentOption = TableQuests[1],
	MultipleOptions = false,
	Flag = "DropdownSelectQuestTabAutoFarm",
	Callback = function(CurrentOption)
		QuestSelected = CurrentOption[1]
   end,
})

local ToggleButtonAutoSelectQuest = false
local Toggle1AutoSelectQuestTabAutoFarm = TabAutoFarm:CreateToggle({
    Name = "Auto Quest",
    CurrentValue = false,
    Flag = "Toggle1AutoSelectQuestTabAutoFarm", 
    Callback = function(Value)
        ToggleButtonAutoSelectQuest = Value
        while ToggleButtonAutoSelectQuest do
            pcall(function()
                if not Player.PlayerGui.MainClient.Quest.visible then
					quest(QuestSelected)
				else
					local questCount = Player.PlayerGui.MainClient.Quest.Folder.Objective.progress.text:split("/")
					if questCount[1] == questCount[2] then
						quest("Completed")
					end
				end
            end)
			wait(0.1)
        end
    end,
})

local SectionFarmingAbility = TabAutoFarm:CreateSection("Grind with Ability")

local OtherToFairQuest = false
local ToggleAutoOtherGodQuest = TabAutoFarm:CreateToggle({
    Name = "Otherworlders -> God [Quest]",
    CurrentValue = false,
    Flag = "", 
    Callback = function(Value)
        OtherToFairQuest = Value
		local FirstQuest = ReverseQuest("Ultra Fair")
        while OtherToFairQuest do
			pcall(function()
				if not Player.PlayerGui.MainClient.Quest.visible then
					local FirstQuest = ReverseQuest(Player.PlayerGui.MainClient.Quest.name.Text)
					quest(FirstQuest)
				else
					local questCount = Player.PlayerGui.MainClient.Quest.Folder.Objective.progress.text:split("/")
					if questCount[1] == questCount[2] then
						quest("Completed")
					end
				end
			end)
            wait(0.1)
        end
    end,
})

local OtherToFair = false
local ToggleAutoOtherGodTeleport = TabAutoFarm:CreateToggle({
    Name = "Otherworlders -> God [Teleport]",
    CurrentValue = false,
    Flag = "", 
    Callback = function(Value)
        OtherToFair = Value
        while OtherToFair do
			if Player.PlayerGui.MainClient.Quest.visible then
				local MobQuestOtherGod = ConverseQuestToMob(Player.PlayerGui.MainClient.Quest.name.Text)
				pcall(function()
					local MobCounter = 0
					for _,v in pairs(Workspace:GetChildren()) do
						if v.Name == MobQuestOtherGod and v.Humanoid.Health ~= 0 then
							MobCounter = MobCounter + 1
						end
					end
					if MobCounter >= 5 then
						for _,v in pairs(Workspace:GetChildren()) do
							if v.Name == MobQuestOtherGod and v.Humanoid.Health ~= 0 then
								v.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2) + Player.Character.HumanoidRootPart.CFrame.lookVector * 2
								v.HumanoidRootPart.Anchored = true
							end
						end
					end
				end)
			end
            wait(0.1)
        end
    end,
})

local ToggleButtonAutoPoison = false
local Toggle1AutoPoison = TabAutoFarm:CreateToggle({
    Name = "Auto Poison",
    CurrentValue = false,
    Flag = "", 
    Callback = function(Value)
        ToggleButtonAutoPoison = Value
        while ToggleButtonAutoPoison do
            pcall(function()
				Rep.Remotes.SkillCast:FireServer("Poison Gas",{["fromClient"] = true,["Character"] = Workspace[Player.Name]})
            end)
			wait(5)
        end
    end,
})

----------------------[ Tab AutoSpin ]----------------------
local TabAutoSpin = Window:CreateTab("Auto Spin", 4483362458)

local LabelPreviewPower = TabAutoSpin:CreateLabel("Power : N/A",0)
local LabelPreviewPotential = TabAutoSpin:CreateLabel("Personal Potential : N/A",0)
local LabelPotentialGlobal = TabAutoSpin:CreateLabel("Global Potential : N/A",0)
local LabelAutoStore = TabAutoSpin:CreateLabel("Auto Store : N/A",0)

local SectionSettingsSpin = TabAutoSpin:CreateSection("Settings Spin")

local PowerSelected = AbilityList[1]
local DropdownSelectWhiteList = TabAutoSpin:CreateDropdown({
	Name = "Select Power",
	Options = AbilityList,
	CurrentOption = AbilityList[1],
	MultipleOptions = false,
	Flag = "DropdownSelectWhiteList",
	Callback = function(CurrentOption)
		PowerSelected = CurrentOption[1]
   end,
})

local PotentialSelected1 = 15
local SliderSelectPersonalPotential = TabAutoSpin:CreateSlider({
	Name = "Select Personal Potential",
	Range = {1, 30},
	Increment = 0.1,
	Suffix = "Potential",
	CurrentValue = 15,
	Flag = "SliderSelectPersonalPotential",
	Callback = function(CurrentValue)
		PotentialSelected1 = CurrentValue
   end,
})

local ButtonUpdatePersonalPotential = TabAutoSpin:CreateButton({
    Name = "Update Personal Potential ",
    Callback = function()
		for i, v in pairs(AbilityList) do
			if PowerSelected == v then
				AbilityDict[v] = PotentialSelected1
			end
		end
    end,
})

local SliderSelectGlobalPotential = TabAutoSpin:CreateSlider({
	Name = "Select Global Potential",
	Range = {1, 30},
	Increment = 0.1,
	Suffix = "Potential",
	CurrentValue = 15,
	Flag = "SliderSelectGlobalPotential",
	Callback = function(CurrentValue)
		RollSettings.Threshold = CurrentValue
   end,
})

local Toggle1AutoStore = TabAutoSpin:CreateToggle({
    Name = "Auto Store",
    CurrentValue = false,
    Flag = "Toggle1AutoStore", 
    Callback = function(CurrentValue)
        RollSettings.Store = CurrentValue
    end,
})

spawn(function()
	while true do
		local success, response =  pcall(function()
			LabelPreviewPower:Set("Power : "..PowerSelected,0)
			LabelPreviewPotential:Set("Personal Potential : "..PotentialSelected1,0)
			LabelPotentialGlobal:Set("Global Potential : "..RollSettings.Threshold,0)
			LabelAutoStore:Set("Auto Store : "..tostring(RollSettings.Store),0)
		end)
		if not success then 
			warn(response)
			break
		end
		wait(0.1)
	end
end)

RerollPath.ChildRemoved:Connect(function(child)
    if(not Toggles.AutoRoll) then
        return
    end
    if child.Name == "Finished" then
        count = count + 1
        if (count >= 10) then
            count = 0
            local rolledAbilities = getRolledAbilities()
            for _i, ability in rolledAbilities do     
                if (ability.potential >= RollSettings.Threshold) or AbilityDict[ability.name] == nil or (ability.potential >= AbilityDict[ability.name] and AbilityDict[ability.name] ~= 0) then

                    RerollPath.Rerolls.BackgroundTransparency = 0.5
                    RerollPath.Rerolls.UIStroke.Enabled = true
                    RerollPath.Rerolls.ScrollingFrame.Visible = true

                    if RollSettings.Store then
                        ability.accept()
                        wait(0.2)
                    else
                        Toggles.AutoRoll = false
                        return
                    end
                end
            end
            print("Here ?2")
            repeat
                RerollPath.Rerolls.X.Visible = true
                wait()
				RerollPath.Rerolls.X:Activate()
                --firesignal(RerollPath.Rerolls.X.MouseButton1Click)
                wait()
            until not RerollPath.Rerolls.visible or not Toggles.AutoRoll
            repeat
				wait(0.1)
				Rep.Reroll:InvokeServer(nil,nil,true)
            until RerollPath.Rerolls.visible or not Toggles.AutoRoll
        end
    end
end)


local ToggleAutoSpin = TabAutoSpin:CreateToggle({
    Name = "Auto Roll Power",
    CurrentValue = false,
    Flag = "ToggleAutoSpin", 
    Callback = function(Value)
        Toggles.AutoRoll = Value
		if(Toggles.AutoRoll) then
			autoRoll()
			wait(0.1)
		end
    end,
})

local ButtonTest = TabAutoSpin:CreateButton({
    Name = "Test",
    Callback = function()
		firesignal(RerollPath.Rerolls.X.MouseButton1Click)
    end,
})
----------------------[ Tab Beta ]----------------------
local TabBeta = Window:CreateTab("Beta", 4483362458)

local aotogod = false
local ToggleAutoGodTabMisc = TabBeta:CreateToggle({
    Name = "Auto God [Rumble]",
    CurrentValue = false,
    Flag = "ToggleAutoGodTabMisc", 
    Callback = function(Value)
		aotogod = Value
		while aotogod do
			repeat task.wait(0.1) until workspace:FindFirstChild("God")
			local skillRemote = Rep:FindFirstChild("Remotes"):FindFirstChild("SkillCast")
			local character = Player.Character or Player.CharacterAdded:Wait()
			for _, obj in pairs(workspace:GetChildren()) do
				if obj:IsA("Model") and obj:FindFirstChild("Humanoid") and obj ~= character and obj.Name == "God" then
					skillRemote:FireServer("Raigo", {
						["fromClient"] = true,
						["Character"] = character,
						["MousePos"] = obj.PrimaryPart.Position
					})
				end
			end
			wait(10)
		end
    end,
})

local ButtonElThorTabBeta = TabBeta:CreateButton({
    Name = "Safe Zone ",
    Callback = function()
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(-482, 2, -1715)
    end,
})

local character = Player.Character or Player.CharacterAdded:Wait()
local head = character:WaitForChild("Head")

local function getPartPath(part)
    local path = {}
    while part do
        table.insert(path, 1, part.Name)
        part = part.Parent
    end
    return table.concat(path, " -> ")
end

local function checkPartsTouchingHead()
    local touchingParts = head:GetTouchingParts()
    for _, part in ipairs(touchingParts) do
        local partPath = getPartPath(part)
        print("La tête touche: "..part.Name)
		 print("Chemin: "..partPath)
    end
end

local ButtonWedgeTabBeta = TabBeta:CreateButton({
    Name = "Delete Wedge",
    Callback = function()
		for _,v1 in pairs(Workspace:GetChildren()) do
			if v1.Name == "Model" and v1:FindFirstChild("CornerWedge") or v1.Name == "x01dsqa5" then
				v1.Name = "x01dsqa5"
				for _,v2 in pairs(v1:GetChildren()) do
					if v2.Name == "Wedge" or v2.Name == "CornerWedge" or math.floor(v2.Position.x) == 539 and math.floor(v2.Position.y) == 333 and math.floor(v2.Position.z) == 388 then
						v2:Destroy()
					end
				end
			end
		end
	end,
})

local character = Player.Character or Player.CharacterAdded:Wait()
local head = character:WaitForChild("Head")

-- Fonction pour récupérer le chemin d'un objet
local function getPartPath(part)
    local path = {}
    while part do
        table.insert(path, 1, part.Name)
        part = part.Parent
    end
    return table.concat(path, " -> ")
end

local function checkPartsTouchingHead()
    local touchingParts = head:GetTouchingParts()
    for _, part in ipairs(touchingParts) do
        local partPath = getPartPath(part)  -- Récupérer le chemin de la partie
		print("--------[ Now ]--------")
        print("La tête touche: " .. part.Name)
		print("Chemin: "..partPath)
		print("Position: X: "..math.floor(part.Position.x).." Y: "..math.floor(part.Position.y).." Z: "..math.floor(part.Position.z))
    end
end

local x01xa15f = false
local ToggleNoneTabMisc = TabBeta:CreateToggle({
    Name = "[None] Check touch Head",
    CurrentValue = false,
    Flag = "", 
    Callback = function(Value)
        x01xa15f = Value
        while x01xa15f do
            checkPartsTouchingHead()
            wait(0.1)
        end
    end,
})


local x09xa48e = false
local ToggleNoneTabMisc = TabBeta:CreateToggle({
    Name = "Anti King",
    CurrentValue = false,
    Flag = "", 
    Callback = function(Value)
        x09xa48e = Value
        while x09xa48e do
			local success,response = pcall(function()
				if Workspace:WaitForChild(Player.Name).Head:FindFirstChild("King") then
					for _,v in Players:GetChildren() do
						if v ~= Player then
							Rep.SurrenderCrown:FireServer(v)
						end
					end
				end
			end)
			if not success then
				print(response)
				break
			end
            wait(0.1)
        end
    end,
})

local cdeeeza = false
local ToggleNoneTabMisc3 = TabBeta:CreateToggle({
    Name = "Teleport mob [depend quest]",
    CurrentValue = false,
    Flag = "", 
    Callback = function(Value)
        cdeeeza = Value
        while cdeeeza do
			pcall(function()
				local TargetSelectedQUestmonb = getQuestMobs(QuestSelected)
				for _,v in pairs(Workspace:GetChildren()) do
					if table.find(TargetSelectedQUestmonb, v.Name) then
						v.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2) + Player.Character.HumanoidRootPart.CFrame.lookVector * 2
						v.HumanoidRootPart.Anchored = true
					end
				end
			end)
            wait(0.1)
        end
    end,
})
