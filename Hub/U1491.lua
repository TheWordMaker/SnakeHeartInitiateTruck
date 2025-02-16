----------------------[ Universal Utilities ]----------------------
getgenv().Get = setmetatable({}, {__index = function(Self, Idx) return game:GetService(Idx) end})
local Workspace = Get.Workspace
local Players = Get.Players
local Player = Players.LocalPlayer
local PlayerCharacter = Player.Character
local PlayerGui = Player.PlayerGui
local Rep = Get.ReplicatedStorage
local HttpService = Get.HttpService
local TeleportService = Get.TeleportService
local VirtualInputManager = Get.VirtualInputManager
local RerollPath = PlayerGui.Reroll
local getUserData = function() return getupvalue(getconnections(PlayerGui.MainClient.Equipped.Relic.enhance.MouseButton1Click)[1].Function, 4) end


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

local B = Workspace:FindFirstChild("BossSpawns")
local BossList = {}
local BossPosition = nil
for i, v in pairs(B:GetChildren()) do
    if (BossPosition == nil) then
        BossPosition = v.CFrame.Position
    end
    table.insert(BossList, v.Name)
end

----------------------[ The Hub ]----------------------
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "U1491 Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "U1491 Saver"
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

----------------------[ Tab Misc ]----------------------
local TabMisc = Window:CreateTab("Misc", 4483362458)

local SectionGlobalMisc = TabMisc:CreateSection("Global Misc")

local ButtonConsole = TabMisc:CreateButton({
    Name = "Console",
    Callback = function()
        game.StarterGui:SetCore("DevConsoleVisible", true)
    end,
})

local ButtonDarkDex = TabMisc:CreateButton({
    Name = "DarkDex",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()

    end,
})

local ButtonHydroxide = TabMisc:CreateButton({
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

local SectionInGameMisc = TabMisc:CreateSection("In-Game Misc")

local ToggleButtonBypassCooldown = false
local ToggleBypassCooldown = TabMisc:CreateToggle({
    Name = "Bypass Cooldown Power",
    CurrentValue = false,
    Flag = "", 
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
				if not PlayerCharacter:FindFirstChild("Head"):FindFirstChild("LeftGlow") then
					activateAbility()
				end
			end)
            wait(0.1)
        end
    end,
})

local ActivateBlocking = false
local ToggleActivateBlocking = TabMisc:CreateToggle({
    Name = "Activate Blocking",
    CurrentValue = false,
    Flag = "", 
    Callback = function(Value)
        ActivateBlocking = Value
        while ActivateBlocking do
			pcall(function()
				if not Workspace:FindFirstChild(Player.Name):FindFirstChild("Blocking") then
					Rep.Block:FireServer(true)
					repeat wait() until Workspace:FindFirstChild(Player.Name):FindFirstChild("Blocking")
				end
			end)
            wait(0.1)
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

local ToggleAntiLag = TabMisc:CreateToggle({
    Name = "Remove Particle",
    CurrentValue = false,
    Flag = "", 
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
local SliderSizePoison = TabMisc:CreateSlider({
	Name = "Size Poison",
	Range = {1, 500},
	Increment = 10,
	Suffix = "Size",
	CurrentValue = 10,
	Flag = "", 
	Callback = function(Value)
		IncreaseSize = Value
   end,
})

local ToggleButtonAutoSizePoison = false
local ToggleAutoSizePoison = TabMisc:CreateToggle({
    Name = "Auto Size Poison",
    CurrentValue = false,
    Flag = "", 
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

local SectionMassiveBuy = TabShop:CreateSection("Massive Buy")

local function BuyingMassive(Type, Number)
    for x = 1, Number do
        Rep.RollGear:InvokeServer(Type)
        wait(0.0001) 
    end
end
local LabelNotePrice = TabShop:CreateLabel("Note : 100 Item = $2 500 000",0)
local ButtonBuyRelicMassive = TabShop:CreateButton({
    Name = "Buy Relic Massive [100]",
    Callback = function()
        for x = 1, 10 do
            coroutine.wrap(function()
                BuyingMassive("Relic", 10)
            end)()
        end
    end,
})

local ButtonBuyFistMassive = TabShop:CreateButton({
    Name = "Buy Fist Massive [100]",
    Callback = function()
        for x = 1, 10 do
            coroutine.wrap(function()
                BuyingMassive("Fist", 10)
            end)()
        end
    end,
})

local SectionMassUpgrade = TabShop:CreateSection("Mass Upgrade")

local ChoosedLevelItem = 6
local SliderLevelItem = TabShop:CreateSlider({
	Name = "Select Limit Upgrade Level",
	Range = {1, 10},
	Increment = 1,
	Suffix = "Level",
	CurrentValue = 6,
	Flag = "",
	Callback = function(CurrentValue)
		ChoosedLevelItem = CurrentValue
   end,
})
--
local ButtonMassUpgradeRelic = TabShop:CreateButton({
    Name = "Mass Upgrade Relic",
    Callback = function()
		local data = {}
		local validMaterials = {}
		data = getUserData().Relics
		for id, fields in data do
			if fields.BaseLevel == fields.Level and fields.Level <= ChoosedLevelItem then
				table.insert(validMaterials,id)
			end
		end
		while #validMaterials >= 4 do
		wait(0.001)
		local args = {
		[1] = "Relic",
		[2] = {
			[1] = table.remove(validMaterials),
			[2] = table.remove(validMaterials),
			[3] = table.remove(validMaterials),
			[4] = table.remove(validMaterials),
		}
		}
		Rep.UpgradeItem:InvokeServer(unpack(args))
		end
		Rayfield:Notify({
			Title = "[Mass Upgrade Relic]",
			Content = "Finished",
			Duration = 3,
			Image = 4483362458,
		})
    end,
})

local ButtonMassUpgradeFist = TabShop:CreateButton({
    Name = "Mass Upgrade Fist",
    Callback = function()
		local data = {}
		local validMaterials = {}
		data = getUserData().Fists
		for id, fields in data do
			if fields.BaseLevel == fields.Level and fields.Level <= ChoosedLevelItem then
				table.insert(validMaterials,id)
			end
		end
		while #validMaterials >= 4 do
		wait(0.00001)
		local args = {
		[1] = "Fist",
		[2] = {
			[1] = table.remove(validMaterials),
			[2] = table.remove(validMaterials),
			[3] = table.remove(validMaterials),
			[4] = table.remove(validMaterials),
		}
		}
		Rep.UpgradeItem:InvokeServer(unpack(args))
		end
		Rayfield:Notify({
			Title = "[Mass Upgrade Fist]",
			Content = "Finished",
			Duration = 3,
			Image = 4483362458,
		})
    end,
})

