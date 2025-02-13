----------------------[ Universal Utilities ]----------------------
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
local StarterGui = Get.StarterGui
for _,v in pairs(Workspace.Hoops:GetChildren()) do
	for _,v1 in pairs(v:GetChildren()) do
		if v1:IsA("ParticleEmitter") then
			v1:Destroy()
		end
	end
end

----------------------[ The Hub ]----------------------
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "L3197 Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "L3197 Saver"
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

local TabMisc = Window:CreateTab("Misc", 4483362458)

local SectionGlobalMisc = TabMisc:CreateSection("Global Misc")

local ButtonConsole = TabMisc:CreateButton({
    Name = "Console",
    Callback = function()
        StarterGui:SetCore("DevConsoleVisible", true)
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

local SectionInGameMiscTabMisc = TabMisc:CreateSection("In-Game Misc")

local ButtonDestroyGui = TabMisc:CreateButton({
	Name = "Destroy Gui",
	Callback = function()
		Rayfield:Destroy()
	end,
})

local ButtonTeleportHoop = TabMisc:CreateButton({
	Name = "Teleport Hoop to player",
	Callback = function()
		for _,v in pairs(Workspace.Hoops:GetChildren()) do
			v.CFrame = PlayerCharacter.HumanoidRootPart.CFrame
		end
	end,
})
