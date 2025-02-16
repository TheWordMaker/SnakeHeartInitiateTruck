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

