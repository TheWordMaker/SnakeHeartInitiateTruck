---OBJ :
-- AutoFish

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

local ServerID_1 = nil
------------------------------[ WhiteList ]------------------------------
if game.PlaceId == 3237168 then
	ServerID_1 = "OPL"
elseif game.PlaceId == 8569358381 then
	ServerID_1 = "OPA"
end
wait(0.1)

local GunnerCaptain = "Lv8000 Gunner Captain" -- 41 601 per 5 Min
local Bucky = "Lv500 Bucky" -- 3 703 per 1 Min
local Burster = "Lv440 Buster" -- 3 050 per 1 Min
local Bruno = "Lv360 Bruno" -- 3 300 per 1 Min
local CaveDemonLv186 = "Lv186 Cave Demon" -- 20 Sec
local CaveDemonLv188 = "Lv188 Cave Demon" -- 20 Sec
local CaveDemonLv198 = "Lv198 Cave Demon" -- 20 Sec
local CaveDemonLv219 = "Lv219 Cave Demon" -- 20 Sec




local Window = OrionLib:MakeWindow({Name = "Sam and ert178 Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

------------------------------[ Parts ]------------------------------

local PartAutoLightAllMob = Instance.new("Part")
    PartAutoLightAllMob.Shape = "Block"
    PartAutoLightAllMob.Material = "Plastic"
    PartAutoLightAllMob.BrickColor = BrickColor.new("Hot Pink")
    PartAutoLightAllMob.Anchored = true
    PartAutoLightAllMob.Parent = game.Workspace
    PartAutoLightAllMob.CFrame = CFrame.new(-169, 5000, -54)
    PartAutoLightAllMob.Size = Vector3.new(50, 0.1, 50)
local Spawn11 = Instance.new("Part")
    Spawn11.Name = "Spawn11"
    Spawn11.Size = Vector3.new(2, 1, 2)
    Spawn11.Position = Vector3.new(90000, 215, 90000)
    Spawn11.Anchored = true
    Spawn11.Parent = workspace.Spawns
    Spawn11.CanCollide = false
    Spawn11.Transparency = 1
local MyPart = Instance.new("Part")
	MyPart.Name = "MyPart"
	MyPart.Size = Vector3.new(50, 10, 50)
	MyPart.Position = Vector3.new(90000, 451, 90000)
	MyPart.Anchored = true
	MyPart.Parent = workspace
local SafeFloor = Instance.new("Part")
	SafeFloor.Name = "SafeFloor"
	SafeFloor.Size = Vector3.new(100000000000, 10, 1000000000000)
	SafeFloor.Position = Vector3.new(90000, 205, 90000)
	SafeFloor.Anchored = true
	SafeFloor.Parent = workspace
	SafeFloor.CanCollide = true
	SafeFloor.Transparency = 0


------------------------------[ Tab AutoFarm Accounts ]------------------------------

local TabFarmAccount = Window:MakeTab({ Name = "Farm Account", Icon = "rbxassetid://7733919783", PremiumOnly = false })
local TabFarmAccountSection1 = TabFarmAccount:AddSection({
	Name = "Spawn"
})
local TabFarmAccountButton1 = TabFarmAccount:AddButton({
	Name = "Original Set Spawn ",
	Callback = function()
      	local PositionSpawn1 = {}
PositionSpawn1[1] = Vector3.new(-8, 213.7101593017578, -296)
PositionSpawn1[2] = Vector3.new(-128, 213.7101593017578, -753)
PositionSpawn1[3] = Vector3.new(45, 221.7101593017578, -72)
PositionSpawn1[4] = Vector3.new(-237, 222.7101593017578, -1108)
PositionSpawn1[5] = Vector3.new(-206, 221.7101593017578, -110.5)
PositionSpawn1[6] = Vector3.new(-76, 212.7101593017578, -892)
PositionSpawn1[7] = Vector3.new(-428, 213.7101593017578, -154)
PositionSpawn1[8] = Vector3.new(-127, 217, -983.2000122070312)
PositionSpawn1[9] = Vector3.new(720, 237, 1191.800048828125)
PositionSpawn1[10] = Vector3.new(-1281.5, 213.7101593017578, -1353)

local spawn1a = game.Workspace.Spawns.Spawn1
spawn1a.Position = PositionSpawn1[1]
local spawn2a = game.Workspace.Spawns.Spawn2
spawn2a.Position = PositionSpawn1[2]
local spawn3a = game.Workspace.Spawns.Spawn3
spawn3a.Position = PositionSpawn1[3]
local spawn4a = game.Workspace.Spawns.Spawn4
spawn4a.Position = PositionSpawn1[4]
local spawn5a = game.Workspace.Spawns.Spawn5
spawn5a.Position = PositionSpawn1[5]
local spawn6a = game.Workspace.Spawns.Spawn6
spawn6a.Position = PositionSpawn1[6]
local spawn7a = game.Workspace.Spawns.Spawn7
spawn7a.Position = PositionSpawn1[7]
local spawn8a = game.Workspace.Spawns.Spawn8
spawn8a.Position = PositionSpawn1[8]
local spawn9a = game.Workspace.Spawns.Spawn9
spawn9a.Position = PositionSpawn1[9]
local spawn10a = game.Workspace.Spawns.Spawn10
spawn10a.Position = PositionSpawn1[10]
  	end    
})

local TabFarmAccountButton2 = TabFarmAccount:AddButton({
	Name = "Safe Zone",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90000, 455, 90000)

  	end    
})

local TabFarmAccountButton3 = TabFarmAccount:AddButton({
	Name = "Set Spawn Safe Zone ",
	Callback = function()
      		local PositionSpawn2 = {}

PositionSpawn2[1] = Vector3.new(88888, 504, 88888)
PositionSpawn2[2] = Vector3.new(88888, 504, 88888)
PositionSpawn2[3] = Vector3.new(88888, 504, 88888)
PositionSpawn2[4] = Vector3.new(88888, 504, 88888)
PositionSpawn2[5] = Vector3.new(88888, 504, 88888)
PositionSpawn2[6] = Vector3.new(88888, 504, 88888)
PositionSpawn2[7] = Vector3.new(88888, 504, 88888)
PositionSpawn2[8] = Vector3.new(88888, 504, 88888)
PositionSpawn2[9] = Vector3.new(88888, 504, 88888)
PositionSpawn2[10] = Vector3.new(88888, 504, 88888)

local spawn1a = game.Workspace.Spawns.Spawn1
spawn1a.Position = PositionSpawn2[1]
local spawn2a = game.Workspace.Spawns.Spawn2
spawn2a.Position = PositionSpawn2[2]
local spawn3a = game.Workspace.Spawns.Spawn3
spawn3a.Position = PositionSpawn2[3]
local spawn4a = game.Workspace.Spawns.Spawn4
spawn4a.Position = PositionSpawn2[4]
local spawn5a = game.Workspace.Spawns.Spawn5
spawn5a.Position = PositionSpawn2[5]
local spawn6a = game.Workspace.Spawns.Spawn6
spawn6a.Position = PositionSpawn2[6]
local spawn7a = game.Workspace.Spawns.Spawn7
spawn7a.Position = PositionSpawn2[7]
local spawn8a = game.Workspace.Spawns.Spawn8
spawn8a.Position = PositionSpawn2[8]
local spawn9a = game.Workspace.Spawns.Spawn9
spawn9a.Position = PositionSpawn2[9]
local spawn10a = game.Workspace.Spawns.Spawn10
spawn10a.Position = PositionSpawn2[10]
  	end    
})
local TabFarmAccountButton4 = TabFarmAccount:AddButton({
	Name = "Set Spawn My Position",
	Callback = function()
		local plr = game.Players.LocalPlayer
		local character = plr.Character
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
		local spawnPositions = {}
		spawnPositions[1] = game.Workspace.Spawns.Spawn1
		spawnPositions[2] = game.Workspace.Spawns.Spawn2
		spawnPositions[3] = game.Workspace.Spawns.Spawn3
		spawnPositions[4] = game.Workspace.Spawns.Spawn4
		spawnPositions[5] = game.Workspace.Spawns.Spawn5
		spawnPositions[6] = game.Workspace.Spawns.Spawn6
		spawnPositions[7] = game.Workspace.Spawns.Spawn7
		spawnPositions[8] = game.Workspace.Spawns.Spawn8
		spawnPositions[9] = game.Workspace.Spawns.Spawn9
		spawnPositions[10] = game.Workspace.Spawns.Spawn10
		local playerSpawnPosition = humanoidRootPart.Position
		for i, spawnPosition in ipairs(spawnPositions) do
			spawnPosition.Position = playerSpawnPosition
		end
	end
})
local TabFarmAccountSection2 = TabFarmAccount:AddSection({
	Name = "Self Farm"
})

local TabFarmAccountButtonToggle1 = false
local TabFarmAccountToggle1 = TabFarmAccount:AddToggle({
    Name = "Auto Respawn [Don't Work🔴]",
    Default = false,
    Callback = function(value)
        TabFarmAccountButtonToggle1 = value
        
        if TabFarmAccountButtonToggle1 then
            while TabFarmAccountButtonToggle1 do
				wait(0.5)
				pcall(function()
					if not game.Players.LocalPlayer.PlayerGui.Load.Frame.Visible then return end;
					wait(3);
					game.Players.LocalPlayer.PlayerGui.Load.Frame.Load.Visible = false
					game:GetService("Players").LocalPlayer.Character.CamScript.ClientServerClient:FireServer(game:GetService("Players").LocalPlayer)
					game:GetService("Players").LocalPlayer.Character.Weapons:FireServer()
					repeat wait() until not game.Players.LocalPlayer.PlayerGui.Load.Frame.Visible;
					wait(3);
					repeat
						wait(0.1);
					until game.Players.LocalPlayer.PlayerGui.Load.Frame.Visible;
				end)
            end
        else
        end
    end
})
local TabFarmAccountButtonToggle2 = false

local TabFarmAccountToggle2 = TabFarmAccount:AddToggle({
	Name = "Auto Respawn + Reset [Don't Work🔴]",
	Default = false,
	Callback = function(Value)
		TabFarmAccountButtonToggle2 = Value
		if TabFarmAccountButtonToggle2 then
			while TabFarmAccountButtonToggle2 do
			wait()
			if ServerID_1 ==  "OPL" then
				if not game.Players.LocalPlayer.PlayerGui.Load.Frame.Visible == true then
					wait()
				else
					wait(3)
					game:GetService("Players").LocalPlayer.Character.CamScript.ClientServerClient:FireServer(game:GetService("Players").LocalPlayer)
					game:GetService("Players").LocalPlayer.Character.Weapons:FireServer()
					game.Players.LocalPlayer.Character:BreakJoints()
					wait(5)
				end
			elseif ServerID_1 ==  "OPA" then
				if not game.Players.LocalPlayer.PlayerGui.Load.Frame.Visible == true then
					wait()
				else
					wait(3)
					game:GetService("Players").LocalPlayer.Character.CamScript.ClientServerClient:FireServer(game:GetService("Players").LocalPlayer)
					game:GetService("Players").LocalPlayer.Character.Weapons:FireServer()
					wait(5)
					for dsqsd = 1,20 do
						wait()
						game:GetService("Players").LocalPlayer.Character.Drown:FireServer("NOPLS")
					end
					wait(7)
				end
			end
	end
	end
	end
})
local AutoFloorSafe = false

local TabFarmAccountToggle3 = TabFarmAccount:AddToggle({
	Name = "Auto Floor Safe",
	Default = false,
	Callback = function(Value)
		AutoFloorSafe = Value
		if AutoFloorSafe then
			while AutoFloorSafe do wait(0.1)
local SafeFloor = workspace:FindFirstChild("SafeFloor")
local joueur1 = game.Players.LocalPlayer
SafeFloor.Name = "SafeFloor"
SafeFloor.Size = Vector3.new(100000000000, 10, 1000000000000)
SafeFloor.Position = Vector3.new(joueur1.Character.HumanoidRootPart.Position.X, 205, joueur1.Character.HumanoidRootPart.Position.Z)
SafeFloor.Anchored = true
SafeFloor.Parent = workspace
SafeFloor.CanCollide = true
SafeFloor.Transparency = 0		
			
	end
	end
	end
})


local TabAutoFarmButton5 = TabFarmAccount:AddButton({
	Name = "Reset Player",
	Callback = function()
      	game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Dead)
  	end    
})


------------------------------[ Tab AutoFarm ]------------------------------

local TabAutoFarm = Window:MakeTab({ Name = "AutoFarm", Icon = "rbxassetid://7734058599", PremiumOnly = false })

local TabAutoFarmSection0 = TabAutoFarm:AddSection({
	Name = "Auto Farm"
})
local top = false
local AutoCannonToggle = TabAutoFarm:AddToggle({
    Name = "Auto Farm Cannon Ball",
    Default = false,
    Callback = function(Value)
		top = Value
        while top do wait(1)
			pcall(function()
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 then
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Anchored = true
						v.HumanoidRootPart.Size = Vector3.new(30, 30, 30)
						v:FindFirstChild("HumanoidRootPart").Anchored = true
						v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,15)
					end
				end
			end)
		end
	end
})
local TabAutoFarmSection1 = TabAutoFarm:AddSection({
	Name = "Auto Fish"
})
local TabAutoFarmButtonToggle1 = false

local TabAutoFarmToggle1 = TabAutoFarm:AddToggle({
	Name = "Afk Fish [Don't Work🔴]",
	Default = false,
	Callback = function(Value)
		TabAutoFarmButtonToggle1 = Value
		if TabAutoFarmButtonToggle1 then
			while TabAutoFarmButtonToggle1 do
			wait(0.1)
			local Pl = game:GetService("Players")
local Lp = Pl.LocalPlayer
local RodItem = "None"
if game.Workspace:FindFirstChild(Lp.Name):FindFirstChild("Super Rod") then
RodItem = "Super Rod"
elseif game.Workspace:FindFirstChild(Lp.Name):FindFirstChild("Wood Rod") then
RodItem = "Wood Rod"
end
local Rod = game.Workspace:FindFirstChild(Lp.Name):FindFirstChild(RodItem).Caught.Value
if Rod then
local args = {
    [1] = Vector3.new(89992.84375, 210.598388671875, 89980.7265625)
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild(RodItem).Click:FireServer(unpack(args))
wait(1.5)
local args = {
    [1] = Vector3.new(89992.84375, 210.598388671875, 89980.7265625)
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild(RodItem).Click:FireServer(unpack(args))

					end
			end
		end
	end
})

local TabAutoFarmButton1 = TabAutoFarm:AddButton({
	Name = "Teleport Safe Farm Fishing",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90000, 215.598388671875, 90000)
  	end    
})

local TabAutoFarmButtonToggle2 = false

local TabAutoFarmToggle2 = TabAutoFarm:AddToggle({
	Name = "Auto Package[Don't Work 🔴]",
	Default = false,
	Callback = function(Value)
		TabAutoFarmButtonToggle2 = Value
		if TabAutoFarmButtonToggle2 then
			while TabAutoFarmButtonToggle2 do
			wait(0.1)
			local Package = game.Workspace:WaitForChild(Lp.Name)

			end
		end
	end
})

local TabAutoFarmSection2 = TabAutoFarm:AddSection({
	Name = "Auto Haki [Bad/Decent 🔵]"
})
local LabelHaki = TabAutoFarm:AddLabel("Haki : N/A")

local TabAutoFarmButton2 = TabAutoFarm:AddButton({
	Name = "Haki Farm Button",
	Callback = function()
    repeat wait()
		spawn(function()
			workspace.UserData["User_"..game.Players.LocalPlayer.UserId].III:FireServer("On", 1)
			wait()
			workspace.UserData["User_"..game.Players.LocalPlayer.UserId].III:FireServer("Off", 1)
		end)
	until game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HealthBar").Frame.Haki.Frame.Min.Value <= 100
  	end    
})

local Togglehaki = false

local TabAutoFarmToggle3 = TabAutoFarm:AddToggle({
	Name = "Auto Haki Toggle",
	Default = false,
	Callback = function(Value)
		Togglehaki = Value
		if Togglehaki then
			while Togglehaki do
				repeat wait()
					spawn(function()
						for abc123_1 = 1,20 do
							workspace.UserData["User_"..game.Players.LocalPlayer.UserId].III:FireServer("On", 50)
						end
						wait()
						for abc123_2 = 1,20 do
							workspace.UserData["User_"..game.Players.LocalPlayer.UserId].III:FireServer("Off", 50)
						end
						wait(0.5)
						for abc123_1 = 1,20 do
							workspace.UserData["User_"..game.Players.LocalPlayer.UserId].III:FireServer("On", 50)
						end
						wait()
						for abc123_2 = 1,20 do
							workspace.UserData["User_"..game.Players.LocalPlayer.UserId].III:FireServer("Off", 50)
						end
					end)
				until game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HealthBar").Frame.Haki.Frame.Min.Value <= (game.Workspace.UserData["User_" ..game.Players.LocalPlayer.UserId].Data.HakiLevel.Value-80)
			repeat wait()
			until game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HealthBar").Frame.Haki.Frame.Min.Value == game.Workspace.UserData["User_" ..game.Players.LocalPlayer.UserId].Data.HakiLevel.Value
			end
		end
	end
})
------------------------------[ Tab AutoFarm Fruit ]------------------------------

local TabAutoFarmFruit = Window:MakeTab({
	Name = "AutoFarm Fruit",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TabAutoFarmFruitSection1 = TabAutoFarmFruit:AddSection({
	Name = "Auto Light"
})

local TabAutoFarmFruitButton1 = TabAutoFarmFruit:AddButton({
	Name = "Teleport Zone Light",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-169, 5005, -54)
  	end    
})

local TabAutoFarmFruittoggle1 = false

local TabAutoFarmFruitFarmButtonToggle1 = TabAutoFarmFruit:AddToggle({
    Name = "AutoFarm light [Sky All Mob]",
    Default = false,
    Callback = function(value)
        TabAutoFarmFruittoggle1 = value
        
        if TabAutoFarmFruittoggle1 then
            while TabAutoFarmFruittoggle1 do
            wait(0.5)
				_G.Light1 = true
local LightCode1 = game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent.RemoteFunction:InvokeServer()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-169, 5010, -54)
    wait(0.5)
    local args = {
    [1] = LightCode1,
    [2] = "LightPower8",
    [3] = "StartCharging",
    [4] = game.Players.LocalPlayer.Character.Torso.CFrame,
    [5] = workspace.IslandWindmill.Path,
    [6] = 100 }
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

while _G.Light1 do
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
  if v:IsA("Model") then 
    local args = {
    [1] = LightCode1,
    [2] = "LightPower8",
    [3] = "StopCharging",
    [4] = workspace.Enemies:FindFirstChild(v.name).Torso.CFrame,
    [5] = workspace.IslandWindmill.Path,
    [6] = 100 } 
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait(0.001)
end
end
end
            end
            
        else
		 _G.Light1 = false
        end
    end
})
local TabAutoFarmFruittoggle2 = false

local TabAutoFarmFruitFarmButtonToggle2 = TabAutoFarmFruit:AddToggle({
    Name = "AutoFarm light [Sky All Players]",
    Default = false,
    Callback = function(value)
        TabAutoFarmFruittoggle2 = value
        
        if TabAutoFarmFruittoggle2 then
            while TabAutoFarmFruittoggle2 do
            wait(0.5)
				_G.Light2 = true
local LightCode2 = game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent.RemoteFunction:InvokeServer()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-169, 5010, -54)
    wait(0.5)
    local args = {
    [1] = LightCode2,
    [2] = "LightPower8",
    [3] = "StartCharging",
    [4] = game.Players.LocalPlayer.Character.Torso.CFrame,
    [5] = workspace.IslandWindmill.Path,
    [6] = 100 }
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

while _G.Light2 do
 pcall(function()
 wait(0.03)
for i,v in pairs(game.Players:GetChildren()) do 
	if v.Name ~= game.Players.LocalPlayer.Name then
    local args = {
    [1] = LightCode2,
    [2] = "LightPower8",
    [3] = "StopCharging",
    [4] = workspace:FindFirstChild(v.name).Head.CFrame,
    [5] = workspace.IslandWindmill.Path,
    [6] = 100 } 
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait(0.001)
end
end
end)
end
            end
            
        else
		 _G.Light2 = false
        end
    end
})

local TabAutoFarmFruit_Light3 = false

TabAutoFarmFruit:AddToggle({
	Name = "Cave_Gunner Light",
	Default = false,
	Callback = function(Value)
		TabAutoFarmFruit_Light3 = Value
		if TabAutoFarmFruit_Light3 then
			while TabAutoFarmFruit_Light3 do
				local pro2 = game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent.RemoteFunction:InvokeServer()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1009,241,1587))

for d1 = 1,5 do
wait(0.1)
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(pro2,"LightPower4","On")
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 26.400217056274414,
    [5] = CFrame.new(-917.1141967773438, 216.14813232421875, 1575.87451171875, 0.9936508536338806, -0.009785762056708336, 0.11208131164312363, -9.313225746154785e-10, 0.9962102174758911, 0.08697861433029175, -0.11250769346952438, -0.08642637729644775, 0.989885151386261),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(GunnerCaptain):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(GunnerCaptain):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(-915.6347045898438, 217.2962646484375, 1588.9410400390625)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[GunnerCaptain].Humanoid.Health = 0
wait(0.1)
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 26.400217056274414,
    [5] = CFrame.new(-917.1141967773438, 216.14813232421875, 1575.87451171875, 0.9936508536338806, -0.009785762056708336, 0.11208131164312363, -9.313225746154785e-10, 0.9962102174758911, 0.08697861433029175, -0.11250769346952438, -0.08642637729644775, 0.989885151386261),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(Bucky):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(Bucky):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(-915.6347045898438, 217.2962646484375, 1588.9410400390625)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[Bucky].Humanoid.Health = 0
wait(0.1)
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 26.400217056274414,
    [5] = CFrame.new(-917.1141967773438, 216.14813232421875, 1575.87451171875, 0.9936508536338806, -0.009785762056708336, 0.11208131164312363, -9.313225746154785e-10, 0.9962102174758911, 0.08697861433029175, -0.11250769346952438, -0.08642637729644775, 0.989885151386261),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(Burster):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(Burster):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(-915.6347045898438, 217.2962646484375, 1588.9410400390625)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[Burster].Humanoid.Health = 0
wait(0.1)
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 26.400217056274414,
    [5] = CFrame.new(-917.1141967773438, 216.14813232421875, 1575.87451171875, 0.9936508536338806, -0.009785762056708336, 0.11208131164312363, -9.313225746154785e-10, 0.9962102174758911, 0.08697861433029175, -0.11250769346952438, -0.08642637729644775, 0.989885151386261),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(Bruno):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(Bruno):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(-915.6347045898438, 217.2962646484375, 1588.9410400390625)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[Bruno].Humanoid.Health = 0
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(pro2,"LightPower4","Off")
end


game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2216, 244,-631))
for d2 = 1,5 do
wait(0.5)
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(pro2,"LightPower4","On")
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 10.85869026184082,
    [5] = CFrame.new(2163.792236328125, 214.47360229492188, -624.001953125, 0.9278438687324524, 0.10122866183519363, -0.3589687943458557, 7.450581485102248e-09, 0.9624629020690918, 0.271413117647171, 0.37296897172927856, -0.25182899832725525, 0.8930152654647827),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv186):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv186):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(2161.84326171875, 215.9472198486328, -619.1535034179688)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[CaveDemonLv186].Humanoid.Health = 0
wait(0.1)
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 10.85869026184082,
    [5] = CFrame.new(2163.792236328125, 214.47360229492188, -624.001953125, 0.9278438687324524, 0.10122866183519363, -0.3589687943458557, 7.450581485102248e-09, 0.9624629020690918, 0.271413117647171, 0.37296897172927856, -0.25182899832725525, 0.8930152654647827),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv188):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv188):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(2161.84326171875, 215.9472198486328, -619.1535034179688)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[CaveDemonLv188].Humanoid.Health = 0
wait(0.1)
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 10.85869026184082,
    [5] = CFrame.new(2163.792236328125, 214.47360229492188, -624.001953125, 0.9278438687324524, 0.10122866183519363, -0.3589687943458557, 7.450581485102248e-09, 0.9624629020690918, 0.271413117647171, 0.37296897172927856, -0.25182899832725525, 0.8930152654647827),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv198):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv198):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(2161.84326171875, 215.9472198486328, -619.1535034179688)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[CaveDemonLv198].Humanoid.Health = 0
wait(0.1)
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 10.85869026184082,
    [5] = CFrame.new(2163.792236328125, 214.47360229492188, -624.001953125, 0.9278438687324524, 0.10122866183519363, -0.3589687943458557, 7.450581485102248e-09, 0.9624629020690918, 0.271413117647171, 0.37296897172927856, -0.25182899832725525, 0.8930152654647827),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv219):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv219):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(2161.84326171875, 215.9472198486328, -619.1535034179688)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[CaveDemonLv219].Humanoid.Health = 0
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(pro2,"LightPower4","Off")
end
wait(3)
			end
		end
	end    
})

local TabAutoFarmFruit_Light4 = false

TabAutoFarmFruit:AddToggle({
	Name = "Cave_Gunner Light + Auto Respawn",
	Default = false,
	Callback = function(Value)
		TabAutoFarmFruit_Light4 = Value
		if TabAutoFarmFruit_Light4 then
			while TabAutoFarmFruit_Light4 do
				if not game.Players.LocalPlayer.PlayerGui.Load.Frame.Visible == true then
wait()
else
wait(3)
game:GetService("Players").LocalPlayer.Character.CamScript.ClientServerClient:FireServer(game:GetService("Players").LocalPlayer)
game:GetService("Players").LocalPlayer.Character.Weapons:FireServer()

wait(5)
				local pro2 = game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent.RemoteFunction:InvokeServer()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1009,241,1587))

for d1 = 1,5 do
wait(0.1)
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(pro2,"LightPower4","On")
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 26.400217056274414,
    [5] = CFrame.new(-917.1141967773438, 216.14813232421875, 1575.87451171875, 0.9936508536338806, -0.009785762056708336, 0.11208131164312363, -9.313225746154785e-10, 0.9962102174758911, 0.08697861433029175, -0.11250769346952438, -0.08642637729644775, 0.989885151386261),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(GunnerCaptain):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(GunnerCaptain):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(-915.6347045898438, 217.2962646484375, 1588.9410400390625)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[GunnerCaptain].Humanoid.Health = 0
wait(0.1)
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 26.400217056274414,
    [5] = CFrame.new(-917.1141967773438, 216.14813232421875, 1575.87451171875, 0.9936508536338806, -0.009785762056708336, 0.11208131164312363, -9.313225746154785e-10, 0.9962102174758911, 0.08697861433029175, -0.11250769346952438, -0.08642637729644775, 0.989885151386261),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(Bucky):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(Bucky):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(-915.6347045898438, 217.2962646484375, 1588.9410400390625)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[Bucky].Humanoid.Health = 0
wait(0.1)
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 26.400217056274414,
    [5] = CFrame.new(-917.1141967773438, 216.14813232421875, 1575.87451171875, 0.9936508536338806, -0.009785762056708336, 0.11208131164312363, -9.313225746154785e-10, 0.9962102174758911, 0.08697861433029175, -0.11250769346952438, -0.08642637729644775, 0.989885151386261),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(Burster):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(Burster):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(-915.6347045898438, 217.2962646484375, 1588.9410400390625)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[Burster].Humanoid.Health = 0
wait(0.1)
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 26.400217056274414,
    [5] = CFrame.new(-917.1141967773438, 216.14813232421875, 1575.87451171875, 0.9936508536338806, -0.009785762056708336, 0.11208131164312363, -9.313225746154785e-10, 0.9962102174758911, 0.08697861433029175, -0.11250769346952438, -0.08642637729644775, 0.989885151386261),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(Bruno):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(Bruno):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(-915.6347045898438, 217.2962646484375, 1588.9410400390625)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[Bruno].Humanoid.Health = 0
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(pro2,"LightPower4","Off")
end


game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2216, 244,-631))
for d2 = 1,5 do
wait(0.5)
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(pro2,"LightPower4","On")
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 10.85869026184082,
    [5] = CFrame.new(2163.792236328125, 214.47360229492188, -624.001953125, 0.9278438687324524, 0.10122866183519363, -0.3589687943458557, 7.450581485102248e-09, 0.9624629020690918, 0.271413117647171, 0.37296897172927856, -0.25182899832725525, 0.8930152654647827),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv186):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv186):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(2161.84326171875, 215.9472198486328, -619.1535034179688)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[CaveDemonLv186].Humanoid.Health = 0
wait(0.1)
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 10.85869026184082,
    [5] = CFrame.new(2163.792236328125, 214.47360229492188, -624.001953125, 0.9278438687324524, 0.10122866183519363, -0.3589687943458557, 7.450581485102248e-09, 0.9624629020690918, 0.271413117647171, 0.37296897172927856, -0.25182899832725525, 0.8930152654647827),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv188):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv188):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(2161.84326171875, 215.9472198486328, -619.1535034179688)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[CaveDemonLv188].Humanoid.Health = 0
wait(0.1)
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 10.85869026184082,
    [5] = CFrame.new(2163.792236328125, 214.47360229492188, -624.001953125, 0.9278438687324524, 0.10122866183519363, -0.3589687943458557, 7.450581485102248e-09, 0.9624629020690918, 0.271413117647171, 0.37296897172927856, -0.25182899832725525, 0.8930152654647827),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv198):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv198):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(2161.84326171875, 215.9472198486328, -619.1535034179688)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[CaveDemonLv198].Humanoid.Health = 0
wait(0.1)
local args = {
    [1] = pro2,
    [2] = "LightPower4",
    [3] = "Update",
    [4] = 10.85869026184082,
    [5] = CFrame.new(2163.792236328125, 214.47360229492188, -624.001953125, 0.9278438687324524, 0.10122866183519363, -0.3589687943458557, 7.450581485102248e-09, 0.9624629020690918, 0.271413117647171, 0.37296897172927856, -0.25182899832725525, 0.8930152654647827),
    [6] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv219):WaitForChild("Torso"),
    [7] = workspace:WaitForChild("Enemies"):WaitForChild(CaveDemonLv219):WaitForChild("Torso").CFrame.p,
    [8] = Vector3.new(2161.84326171875, 215.9472198486328, -619.1535034179688)
}

game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
game:GetService("Workspace").Enemies[CaveDemonLv219].Humanoid.Health = 0
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(pro2,"LightPower4","Off")
end
wait(3)
			end
		end
	end    
	end
})


local Section2TabAutoFarmFruit = TabAutoFarmFruit:AddSection({
	Name = "Auto Quake [Coming Soon 🟠]"
})

local TabAutoFarmFruitButton2 = TabAutoFarmFruit:AddButton({
	Name = "Teleport Zone Quake",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-169, 5005, -54)
  	end    
})

local TabAutoFarmFruittoggle3 = false

local TabAutoFarmFruitFarmButtonToggle1 = TabAutoFarmFruit:AddToggle({
    Name = "AutoFarm Quake [Sky All Mob]",
    Default = false,
    Callback = function(value)
        TabAutoFarmFruittoggle3 = value
        
        if TabAutoFarmFruittoggle3 then
            while TabAutoFarmFruittoggle3 do
            wait(0.5)
				_G.Quake1 = true
local x1 = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Quake)
local QuakeCode1 = x1.VTCebvc
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-169, 5010, -54)
    wait(0.5)
local args = {
    [1] = QuakeCode1,
    [2] = "QuakePower4",
    [3] = "StartCharging",
    [5] = "Right"
}
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

while _G.Quake1 do
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
  if v:IsA("Model") then 
    local args = {
    [1] = QuakeCode1,
    [2] = "QuakePower4",
    [3] = "StopCharging",
    [4] = workspace:WaitForChild("IslandGrassy"):WaitForChild("Base"):WaitForChild("DirtGrass"):WaitForChild("Grass"):WaitForChild("Grass"),
    [5] = workspace:FindFirstChild(v.name).Head.CFrame,
    [6] = 100,
    [7] = Vector3.new(0,0,0)
}
game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
wait(0.001)
end
end
end
            end
            
        else
		 _G.Quake1 = false
        end
    end
})


local TabAutoFarmFruittoggle4 = false

local TabAutoFarmFruitFarmButtonToggle2 = TabAutoFarmFruit:AddToggle({
    Name = "AutoFarm Quake [Sky All Players] [Coming Soon 🟠]",
    Default = false,
    Callback = function(value)
        TabAutoFarmFruittoggle4 = value
        
        if TabAutoFarmFruittoggle4 then
            while TabAutoFarmFruittoggle4 do
            wait(0.5)
				_G.Quake2 = true
local pro2 = game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent.RemoteFunction:InvokeServer()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-169, 5010, -54)
    wait(0.5)
    local args = {
    [1] = pro2,
    [2] = "LightPower8",
    [3] = "StartCharging",
    [4] = game.Players.LocalPlayer.Character.Torso.CFrame,
    [5] = workspace.IslandWindmill.Path,
    [6] = 100 }
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

while _G.Quake2 do
 pcall(function()
 wait(0.03)
for i,v in pairs(game.Players:GetChildren()) do 
	if v.Name ~= game.Players.LocalPlayer.Name then
    local args = {
    [1] = pro2,
    [2] = "LightPower8",
    [3] = "StopCharging",
    [4] = workspace:FindFirstChild(v.name).Head.CFrame,
    [5] = workspace.IslandWindmill.Path,
    [6] = 100 } 
game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
wait(0.001)
end
end
end)
end
            end
            
        else
		 _G.Quake2 = false
        end
    end
})

------------------------------[ Tab Compass ]------------------------------

local TabCompass = Window:MakeTab({
	Name = "CompassTab",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local TabCompassSection1 = TabCompass:AddSection({
	Name = "Auto Compass"
})

local LabelInfoCompass = TabCompass:AddLabel("Number Compass : "..game.workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.CompassTokens.Value.."/"..game.Workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.CompassTokenLimit.Value)

local TabCompassButton1 = TabCompass:AddButton({
	Name = "x1 Compass",
	Callback = function()
		workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim1")
  	end    
})
local TabCompassButton2 = TabCompass:AddButton({
	Name = "x10 Compass",
	Callback = function()
		workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
  	end    
})

local TabCompasstoggle1 = false

local TabCompassButtonToggle1 = TabCompass:AddToggle({
	Name = "Give All Compass",
	Default = false,
	Callback = function(Value)
		TabCompasstoggle1 = Value
		if TabCompasstoggle1 then
			while TabCompasstoggle1 do
				wait(0.01)
				local UserID = tostring(game.Players.LocalPlayer.UserId)
				local actuelCompass1 = game.workspace.UserData["User_"..UserID].Data.CompassTokens.Value
				local actuelCompass2 = actuelCompass1
				if actuelCompass2 == 0 then
				else
					workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
				end
				wait(1)
				LabelInfoCompass:Set("Number Compass : "..game.workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.CompassTokens.Value.."/"..game.Workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.CompassTokenLimit.Value)
			end
		end
	end
})

local TabCompasstoggle2 = false

local TabCompassButtonToggle2 = TabCompass:AddToggle({
    Name = "Auto Teleport Compass",
    Default = false,
    Callback = function(value)
        TabCompasstoggle2 = value
        
        if TabCompasstoggle2 then
            while TabCompasstoggle2 do
            wait(0.5)
        pcall(function()
            local Compass = game.Players.LocalPlayer.Backpack:FindFirstChild("Compass");
            local Compass2 = game.Players.LocalPlayer.Character:FindFirstChild("Compass");
            if Compass or Compass2 then
                local OldPostiton = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
                game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                Compass.Parent = game.Players.LocalPlayer.Character;
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Compass.Poser.Value);
                Compass:Activate();
                wait(0.3);
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(OldPostiton);
            end
        end)
            end
            
        else
        end
    end
})

local TabCompassButton8 = TabCompass:AddButton({
	Name = "Drop Compass",
	Callback = function()
	local plr = game.Players.LocalPlayer
repeat task.wait()
until plr.Backpack:FindFirstChild("Compass")
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Compass" then
v.Parent = plr.Character
  end
end
repeat task.wait()
until plr.Character:FindFirstChild("Compass")
local compass = plr.Character:FindFirstChild("Compass")
for i,v in pairs(plr.Character:GetChildren()) do
if v.Name == "Compass" then
v.Parent = workspace
  end
end
repeat task.wait()
until compass.Parent == workspace
  	end    
})

local TabCompasstoggle3 = false

local TabCompassButtonToggle3 TabCompass:AddToggle({
	Name = "Grab Compass",
	Default = false,
	Callback = function(Value)
		TabCompasstoggle3 = Value
		if TabCompasstoggle3 then
			while TabCompasstoggle3 do
			wait(0.1)
            for _, Item in pairs(game.Workspace:GetChildren()) do
                if Item.Name == "Compass" and Item:FindFirstChild("Handle") then
                    Item.Handle.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position);
                end
            end
			end
		end
	end
})

local TabCompassSection2 = TabCompass:AddSection({
	Name = "Notify"
})
TabCompass:AddButton({
	Name = "Compass Count",
	Callback = function()
      		local CompassCount = 0
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Compass" then
            CompassCount += 1
        end
    end

    game.StarterGui:SetCore("SendNotification", {
        Title = "Compass Counter Server"; -- the title (ofc)
        Text = "Number Compass : " ..tonumber(CompassCount);
        Duration = 3;
    })
  	end    
})




local TabCompassSection3 = TabCompass:AddSection({
	Name = "Box Fruit"
})

local TabCompassButton3 TabCompass:AddButton({
	Name = "Open All Common Box",
	Callback = function()
      	local plr = game.Players.LocalPlayer
		for i,v in pairs(plr.Backpack:GetChildren()) do
			if v.Name == "Common Box" then
				v.Parent = plr.Character
			end
		end
		repeat task.wait()
		until plr.Character:FindFirstChild("Common Box")
		for i,v in pairs(plr.Character:GetChildren()) do
			if v.Name == "Common Box" then
				v:Activate()
			end
		end
  	end    
})

local TabCompassButton4 TabCompass:AddButton({
	Name = "Open All Uncommon Box",
	Callback = function()
		local plr = game.Players.LocalPlayer
		for i,v in pairs(plr.Backpack:GetChildren()) do
			if v.Name == "Uncommon Box" then
				v.Parent = plr.Character
			end
		end
		repeat task.wait()
		until plr.Character:FindFirstChild("Uncommon Box")
		for i,v in pairs(plr.Character:GetChildren()) do
			if v.Name == "Uncommon Box" then
				v:Activate()
			end
		end
  	end    
})

local TabCompassButton5 TabCompass:AddButton({
	Name = "Open All Rare Box",
	Callback = function()
      	local plr = game.Players.LocalPlayer
		for i,v in pairs(plr.Backpack:GetChildren()) do
			if v.Name == "Rare Box" then
				v.Parent = plr.Character
			end
		end
		repeat task.wait()
		until plr.Character:FindFirstChild("Rare Box")
		for i,v in pairs(plr.Character:GetChildren()) do
			if v.Name == "Rare Box" then
				v:Activate()
			end
		end
  	end    
})

local TabCompassButton6 TabCompass:AddButton({
	Name = "Open All Ultra Rare Box",
	Callback = function()
		local plr = game.Players.LocalPlayer
		for i,v in pairs(plr.Backpack:GetChildren()) do
			if v.Name == "Ultra Rare Box" then
				v.Parent = plr.Character
			end
		end
		repeat task.wait()
		until plr.Character:FindFirstChild("Ultra Rare Box")
		for i,v in pairs(plr.Character:GetChildren()) do
			if v.Name == "Ultra Rare Box" then
				v:Activate()
			end
		end
  	end    
})
local TabCompassButton7 TabCompass:AddButton({
	Name = "Open All Box [Coming Soon 🟠]",
	Callback = function()
		local plr = game.Players.LocalPlayer
		for i,v in pairs(plr.Backpack:GetChildren()) do
			if v.Name == "Common Box" or v.Name == "Uncommon Box" or v.Name == "Rare Box" or v.Name == "Ultra Rare Box" then
				v.Parent = plr.Character
			end
		end
		repeat task.wait()
		until plr.Character:FindFirstChild("Common Box") or plr.Character:FindFirstChild("Uncommon Box") or plr.Character:FindFirstChild("Rare Box") or plr.Character:FindFirstChild("Ultra Rare Box")
		for i,v in pairs(plr.Character:GetChildren()) do
			if v.Name == "Common Box" or v.Name == "Uncommon Box" or v.Name == "Rare Box" or v.Name == "Ultra Rare Box" then
				v:Activate()
			end
		end
  	end    
})


------------------------------[ Tab Dupe ]------------------------------

local TabDupe = Window:MakeTab({ Name = "Dupe", Icon = "rbxassetid://7733765045", PremiumOnly = false })


local TabDupeButton1 = TabDupe:AddButton({
	Name = "x5 Challenge Compass [Decent 🔵]",
	Callback = function()
		local CompassCount = 0
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v.Name == "Compass" then
					CompassCount += 1
				end
			end
			if CompassCount >= 5 then
		repeat 
		wait()
			pcall(function()
			if workspace:WaitForChild("UserData"):WaitForChild("User_" ..game.Players.LocalPlayer.UserId).Data:WaitForChild("QQ_Weekly3").Value < 5 then
	local Compass = game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") or game.Players.LocalPlayer.Character:FindFirstChild("Compass")
	if Compass then
		local OldPostiton = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
		game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
		Compass.Parent = game.Players.LocalPlayer.Character;
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Compass.Poser.Value);
		Compass:Activate();
		wait(0.5);
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(OldPostiton);
	end
	end
end)
until workspace:WaitForChild("UserData"):WaitForChild("User_" ..game.Players.LocalPlayer.UserId).Data:WaitForChild("QQ_Weekly3").Value == 5
end
local args = {
    [1] = "Claim",
    [2] = "Weekly3"
}

workspace:WaitForChild("UserData"):WaitForChild("User_" ..game.Players.LocalPlayer.UserId):WaitForChild("ChallengesRemote"):FireServer(unpack(args))
wait()
workspace:WaitForChild("UserData"):WaitForChild("User_" ..game.Players.LocalPlayer.UserId):WaitForChild("Stats"):FireServer()

  	end    
})

local TabCompasstoggle99 = false

local TabCompassButtonToggle99 TabDupe:AddToggle({
	Name = "Auto Challenge compass",
	Default = false,
	Callback = function(Value)
		TabCompasstoggle99 = Value
		if TabCompasstoggle99 then
			while TabCompasstoggle99 do
			wait(0.1)
			local CompassCount = 0
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v.Name == "Compass" then
					CompassCount += 1
				end
			end
			if CompassCount >= 5 then
		repeat 
		wait()
			pcall(function()
			if workspace:WaitForChild("UserData"):WaitForChild("User_" ..game.Players.LocalPlayer.UserId).Data:WaitForChild("QQ_Weekly3").Value < 5 then
	local Compass = game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") or game.Players.LocalPlayer.Character:FindFirstChild("Compass")
	if Compass then
		local OldPostiton = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
		game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
		Compass.Parent = game.Players.LocalPlayer.Character;
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Compass.Poser.Value);
		Compass:Activate();
		wait(0.5);
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(OldPostiton);
	end
	end
end)
until workspace:WaitForChild("UserData"):WaitForChild("User_" ..game.Players.LocalPlayer.UserId).Data:WaitForChild("QQ_Weekly3").Value == 5
end
local args = {
    [1] = "Claim",
    [2] = "Weekly3"
}

workspace:WaitForChild("UserData"):WaitForChild("User_" ..game.Players.LocalPlayer.UserId):WaitForChild("ChallengesRemote"):FireServer(unpack(args))
wait()
workspace:WaitForChild("UserData"):WaitForChild("User_" ..game.Players.LocalPlayer.UserId):WaitForChild("Stats"):FireServer()
wait(1)
			end
		end
	end
})

local TabDupeButton2 = TabDupe:AddButton({
	Name = "Teleport Zone Dupe",
	Callback = function()
      	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))

  	end    
})

local TabDupeButton3 = TabDupe:AddButton({
	Name = "Rejoin",
	Callback = function()
      	game.Players.LocalPlayer:Kick()
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
  	end    
})
local TabDupeButton4 = TabDupe:AddButton({
	Name = "Dupe [Bad/Decent 🔵]",
	Callback = function()
      	local plr = game.Players.LocalPlayer
		workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("UpdateClothing_Extras"):FireServer("A","\255",31)
		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
		wait()
		workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
		wait(1)
		workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
		wait(1)
		workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
		wait(1)
		workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
wait(1)
workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
wait(1)
workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")

repeat task.wait()
until plr.Backpack:FindFirstChild("Compass")
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Compass" then
v.Parent = plr.Character
  end
end
repeat task.wait()
until plr.Character:FindFirstChild("Compass")
local compass = plr.Character:FindFirstChild("Compass")
for i,v in pairs(plr.Character:GetChildren()) do
if v.Name == "Compass" then
v.Parent = workspace
  end
end
repeat task.wait()
until compass.Parent == workspace
game.Players.LocalPlayer:Kick()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)

  	end    
})
if ServerID_1 ==  "OPA" then
local TabDupeButton3 = TabDupe:AddButton({
	Name = "Freeze Data",
	Callback = function()
      		workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("UpdateClothing_Extras"):FireServer("A","\255",31)

  	end    
})
end

------------------------------[ Tab Drink Buy ]------------------------------

local TabBuyItem = Window:MakeTab({
	Name = "Shop Items",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local TabBuyItemSection1 = TabBuyItem:AddSection({
	Name = "Buy Simple Drink"
})
local TabBuyItemButton1 = TabBuyItem:AddButton({
	Name = "x1 Buy Smoothie [Defense]",
	Callback = function()
		workspace:WaitForChild("Merchants"):WaitForChild("DrinkMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer("Smoothie")
  	end    
})
local TabBuyItemButton2 = TabBuyItem:AddButton({
	Name = "x1 Buy Cider [Melee]",
	Callback = function()
		workspace:WaitForChild("Merchants"):WaitForChild("DrinkMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer("Cider")
  	end    
})
local TabBuyItemButton3 = TabBuyItem:AddButton({
	Name = "x1 Buy Lemonade [Sniper]",
	Callback = function()
		workspace:WaitForChild("Merchants"):WaitForChild("DrinkMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer("Lemonade")
  	end    
})
local TabBuyItemButton4 = TabBuyItem:AddButton({
	Name = "x1 Buy Juice [Sword]",
	Callback = function()
		workspace:WaitForChild("Merchants"):WaitForChild("DrinkMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer("Juice")
  	end    
})
local TabBuyItemSection2 = TabBuyItem:AddSection({
	Name = "Buy Drink+"
})
local TabBuyItemButton5 = TabBuyItem:AddButton({
	Name = "x1 Buy Smoothie+ [Defense]",
	Callback = function()
      	workspace:WaitForChild("Merchants"):WaitForChild("BetterDrinkMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer("Smoothie+")
  	end    
})
local TabBuyItemButton6 = TabBuyItem:AddButton({
	Name = "x1 Buy Cider+ [Melee]",
	Callback = function()
      	workspace:WaitForChild("Merchants"):WaitForChild("BetterDrinkMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer("Cider+")
  	end    
})
local TabBuyItemButton7 = TabBuyItem:AddButton({
	Name = "x1 Buy Lemonade+ [Sniper]",
	Callback = function()
      	workspace:WaitForChild("Merchants"):WaitForChild("BetterDrinkMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer("Lemonade+")
  	end    
})
local TabBuyItemButton8 = TabBuyItem:AddButton({
	Name = "x1 Buy Juice+ [Sword]",
	Callback = function()
      	workspace:WaitForChild("Merchants"):WaitForChild("BetterDrinkMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer("Juice+")
  	end    
})
local BuyDataItem
local TabBuyItemDropdown1 = TabBuyItem:AddDropdown({
	Name = "Select Drink : ",
	Default = "Smoothie",
	Options = {"Smoothie", "Cider", "Lemonade", "Juice", "Smoothie+", "Cider+", "Lemonade+", "Juice+"},
	Callback = function(BuySave)
	BuyDataItem = BuySave
	end    
})
local BuyDataNumber
local TabBuyItemTexbox1 = TabBuyItem:AddTextbox({
	Name = "Number Drink",
	Default = "",
	TextDisappear = true,
	Callback = function(NumberDrink)
		BuyDataNumber = NumberDrink
	end	  
})
local TabBuyItemButton9 = TabBuyItem:AddButton({
	Name = "Buy Drink",
	Callback = function()
		if BuyDataItem == "Smoothie" or BuyDataItem == "Cider" or BuyDataItem == "Lemonade" or BuyDataItem == "Juice" then
			for BuySystem1 = 1,tonumber(BuyDataNumber) do
				workspace:WaitForChild("Merchants"):WaitForChild("DrinkMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(BuyDataItem)
			end
		elseif BuyDataItem == "Smoothie+" or BuyDataItem == "Cider+" or BuyDataItem == "Lemonade+" or BuyDataItem == "Juice+" then
			for BuySystem2 = 1,tonumber(BuyDataNumber) do
				workspace:WaitForChild("Merchants"):WaitForChild("BetterDrinkMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(BuyDataItem)
			end
		end    
	end
})

local TabBuyItemButton10 = TabBuyItem:AddButton({
	Name = "Button!",
	Callback = function()
      	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = game.Players.LocalPlayer.Character
		end
		end
		wait()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = workspace
		end
		end
  	end    
})

------------------------------[ Tab InfoPlayers ]------------------------------

local TabInfoPlayers = Window:MakeTab({ Name = "Info Players", Icon = "rbxassetid://7733774602", PremiumOnly = false })
local Section1TabInfoPlayers = TabInfoPlayers:AddSection({
	Name = "Information Players"
})

local TotalLevelLabel = TabInfoPlayers:AddLabel("TotalLevel : ")
local DefenseLabel = TabInfoPlayers:AddLabel("Defense : ")
local MeleeLabel = TabInfoPlayers:AddLabel("Melee : ")
local SwordLabel = TabInfoPlayers:AddLabel("Sword : ")
local SniperLabel = TabInfoPlayers:AddLabel("Sniper : ")
local HakiLabel = TabInfoPlayers:AddLabel("Haki : ")
local BountyLabel = TabInfoPlayers:AddLabel("Bounty : ")
local CompassLabel = TabInfoPlayers:AddLabel("Compass : ")
local CashLabel = TabInfoPlayers:AddLabel("Cash : ")
local GemsLabel = TabInfoPlayers:AddLabel("Gems : ")
local ComboLabel = TabInfoPlayers:AddLabel("Combo : ")
local LabelSelectPlayer = TabInfoPlayers:AddLabel("ID du joueur sélectionné : ")

local Dropdown1TabInfoPlayers = TabInfoPlayers:AddDropdown({
    Name = "Select Player :",
    Default = "1",
    Options = {},
    Callback = function(D)
        local selectedPlayer = game.Players:FindFirstChild(D)
        if selectedPlayer then
            local userId = selectedPlayer.UserId
            local statPaths = {
                TotalLevel = game.Workspace.UserData["User_" .. userId].TotalLevel.Value,
                Defense = game.Workspace.UserData["User_" .. userId].Data.DefenseLevel.Value,
                Melee = game.Workspace.UserData["User_" .. userId].Data.MeleeLevel.Value,
                Sword = game.Workspace.UserData["User_" .. userId].Data.SwordLevel.Value,
                Sniper = game.Workspace.UserData["User_" .. userId].Data.SniperLevel.Value,
                Haki = game.Workspace.UserData["User_" .. userId].Data.HakiLevel.Value,
                Bounty = game.Workspace.UserData["User_" .. userId].Data.Bounty.Value,
                CompassStore = game.Workspace.UserData["User_" .. userId].Data.CompassTokens.Value,
                CompassLimit = game.Workspace.UserData["User_" .. userId].Data.CompassTokenLimit.Value,
                Cash = game.Workspace.UserData["User_" .. userId].Data.Cash.Value,
                Gems = game.Workspace.UserData["User_" .. userId].Data.Gems.Value,
                Combo1 = game.Workspace.UserData["User_" .. userId].Data.DevilFruit.Value,
                Combo2 = game.Workspace.UserData["User_" .. userId].Data.DevilFruit2.Value
            }
        
            TotalLevelLabel:Set("TotalLevel : " .. statPaths.TotalLevel)
            DefenseLabel:Set("Defense : " .. statPaths.Defense)
            MeleeLabel:Set("Melee : " .. statPaths.Melee)
            SwordLabel:Set("Sword : " .. statPaths.Sword)
            SniperLabel:Set("Sniper : " .. statPaths.Sniper)
            HakiLabel:Set("Haki : " .. statPaths.Haki)
            BountyLabel:Set("Bounty : " .. statPaths.Bounty)
            CompassLabel:Set("Compass : " .. statPaths.CompassStore .. "/" .. statPaths.CompassLimit)
            CashLabel:Set("Cash : " .. statPaths.Cash)
            GemsLabel:Set("Gems : " .. statPaths.Gems)
            ComboLabel:Set("Combo : " .. statPaths.Combo1 .. ", " .. statPaths.Combo2)
            LabelSelectPlayer:Set("ID du joueur sélectionné : " .. userId)
        else
            TotalLevelLabel:Set("TotalLevel : ")
            DefenseLabel:Set("Defense : ")
            MeleeLabel:Set("Melee : ")
            SwordLabel:Set("Sword : ")
            SniperLabel:Set("Sniper : ")
            HakiLabel:Set("Haki : ")
            BountyLabel:Set("Bounty : ")
            CompassLabel:Set("Compass : ")
            CashLabel:Set("Cash : ")
            GemsLabel:Set("Gems : ")
            ComboLabel:Set("Combo : ")
            LabelSelectPlayer:Set("ID du joueur sélectionné : ")
        end
    end    
})

local function RefreshDropdown()
    local players = game.Players:GetPlayers()
    local playerNames = {}
    for _, player in ipairs(players) do
        table.insert(playerNames, player.Name)
    end
    Dropdown1TabInfoPlayers:Refresh(playerNames, true)
end

game.Players.PlayerAdded:Connect(RefreshDropdown)
game.Players.PlayerRemoving:Connect(RefreshDropdown)
RefreshDropdown()

local function UpdateLabels()
    while true do
        wait(1)
        
        local selectedPlayer = game.Players:FindFirstChild(Dropdown1TabInfoPlayers:GetValue())
        if selectedPlayer then
            local userId = selectedPlayer.UserId
            local statPaths = {
                TotalLevel = game.Workspace.UserData["User_" .. userId].TotalLevel.Value,
                Defense = game.Workspace.UserData["User_" .. userId].Data.DefenseLevel.Value,
                Melee = game.Workspace.UserData["User_" .. userId].Data.MeleeLevel.Value,
                Sword = game.Workspace.UserData["User_" .. userId].Data.SwordLevel.Value,
                Sniper = game.Workspace.UserData["User_" .. userId].Data.SniperLevel.Value,
                Haki = game.Workspace.UserData["User_" .. userId].Data.HakiLevel.Value,
                Bounty = game.Workspace.UserData["User_" .. userId].Data.Bounty.Value,
                CompassStore = game.Workspace.UserData["User_" .. userId].Data.CompassTokens.Value,
                CompassLimit = game.Workspace.UserData["User_" .. userId].Data.CompassTokenLimit.Value,
                Cash = game.Workspace.UserData["User_" .. userId].Data.Cash.Value,
                Gems = game.Workspace.UserData["User_" .. userId].Data.Gems.Value,
                Combo1 = game.Workspace.UserData["User_" .. userId].Data.DevilFruit.Value,
                Combo2 = game.Workspace.UserData["User_" .. userId].Data.DevilFruit2.Value
            }
        
            TotalLevelLabel:Set("TotalLevel : " .. statPaths.TotalLevel)
            DefenseLabel:Set("Defense : " .. statPaths.Defense)
            MeleeLabel:Set("Melee : " .. statPaths.Melee)
            SwordLabel:Set("Sword : " .. statPaths.Sword)
            SniperLabel:Set("Sniper : " .. statPaths.Sniper)
            HakiLabel:Set("Haki : " .. statPaths.Haki)
            BountyLabel:Set("Bounty : " .. statPaths.Bounty)
            CompassLabel:Set("Compass : " .. statPaths.CompassStore .. "/" .. statPaths.CompassLimit)
            CashLabel:Set("Cash : " .. statPaths.Cash)
            GemsLabel:Set("Gems : " .. statPaths.Gems)
            ComboLabel:Set("Combo : " .. statPaths.Combo1 .. ", " .. statPaths.Combo2)
            LabelSelectPlayer:Set("ID du joueur sélectionné : " .. userId)
        else
            TotalLevelLabel:Set("TotalLevel : ")
            DefenseLabel:Set("Defense : ")
            MeleeLabel:Set("Melee : ")
            SwordLabel:Set("Sword : ")
            SniperLabel:Set("Sniper : ")
            HakiLabel:Set("Haki : ")
            BountyLabel:Set("Bounty : ")
            CompassLabel:Set("Compass : ")
            CashLabel:Set("Cash : ")
            GemsLabel:Set("Gems : ")
            ComboLabel:Set("Combo : ")
            LabelSelectPlayer:Set("ID du joueur sélectionné : ")
        end
    end
end

spawn(UpdateLabels)


------------------------------[ Tab Teleport ]------------------------------

local TabFarmStat = Window:MakeTab({ Name = "Teleport", Icon = "rbxassetid://7743869517", PremiumOnly = false })
local TabFarmStatSection1 = TabFarmStat:AddSection({
	Name = "Teleport"
})

local teleportLocations = {
	["Sam Island"] = Vector3.new(-1289.7191162109375, 217.9999542236328, -1348.867919921875),
	["Merlin Island"] = Vector3.new(-1698.230224609375, 215.9999542236328, -330.4914855957031),
	["Cave Spawn"] = Vector3.new(25.667943954467773, 309, -883.7334594726562),
    ["Exertise Island"] = Vector3.new(719.9999389648438, 241.199951171875, 1191.7999267578125),
    ["Discotheque"] = Vector3.new(1525.9610595703125, 260.3863220214844, 2159.467041015625),
    ["Krizma Island"] = Vector3.new(-1074.91552734375, 360.99993896484375, 1671.341064453125),
    ["Bunker Island"] = Vector3.new(-2613.5634765625, 253.699951171875, 1087.3468017578125),
	["Fish Seller Island"] = Vector3.new(1985.571044921875, 217.99996948242188, 568.431396484375),
    ["little Snow Island"] = Vector3.new(-1894.9674072265625, 224.9999542236328, 3295.679931640625),
    ["Piramide Island"] = Vector3.new(118.25274658203125, 309.9999084472656, 4946.53955078125),
	["Volkun Island"] = Vector3.new(4571.42578125, 217.39987182617188, 5141.9521484375),
	["Big Tree Island"] = Vector3.new(-6033.7724609375, 403.9427490234375, -7.226952075958252),
	["Marine Ford"] = Vector3.new(-3123.44140625, 354, -4046.662109375),
	["Purple Island"] = Vector3.new(-5229.375, 515.9998168945312, -7769.29736328125),
	["Big Snow Island"] = Vector3.new(6641.22119140625, 417.9989013671875, -1468.1353759765625),
	["Sand Village Island"] = Vector3.new(1079.057861328125, 245.2000732421875, -3335.053466796875),
	["The Pursuer Island"] = Vector3.new(4854.68017578125, 569.9998779296875, -7127.43212890625)
	
}

local TabTeleportDropdown1 = TabFarmStat:AddDropdown({
    Name = "Select Island :",
    Default = "None",
    Options = {"None", "Sam Island","Merlin Island", "Exertise Island","Cave Spawn", "Discotheque","Fish Seller Island", "Krizma Island", "Bunker Island", "little Snow Island", "Piramide Island", "Volkun Island", "Big Tree Island", "Marine Ford", "Purple Island", "Big Snow Island", "Sand Village Island", "The Pursuer Island"},
    Callback = function(TeleportValue)
        local selectedLocation = teleportLocations[TeleportValue]
        if selectedLocation then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(selectedLocation)
        end
    end    
})

local TabFarmStatButton1 = TabFarmStat:AddButton({
	Name = "Expetise Gui",
	Callback = function()
      		for i,v in pairs(game:GetService("Workspace").Merchants.ExpertiseMerchant:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
  	end    
})
local TabFarmStatButton2 = TabFarmStat:AddButton({
	Name = "Affinity Gui",
	Callback = function()
      		for i,v in pairs(game:GetService("Workspace").Merchants.AffinityMerchant:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
  	end    
})
local TabAura = Window:MakeTab({
	Name = "Aura Selec",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = TabAura:AddSection({
	Name = "Section"
})

TabAura:AddButton({
	Name = "Button!",
	Callback = function()
		for a, z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if string.find(z.Name:lower(), "fruit") then
				local mainPart = z:FindFirstChild("Main")
                if mainPart and mainPart:FindFirstChild("AuraAttachment") then
				    game.StarterGui:SetCore("SendNotification", {
						Title = "Aura Track Inventory"; -- the title (ofc)
						Text = "Is aura : "..z.Name;
						Duration = 3;
					})
				end
			end
		end
	end    
})


spawn(function()
    while wait(0.001) do
		for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
			if v:FindFirstChild("HumanoidRootPart") and v:IsA("Model") then
				if v.Humanoid.Health <= 0 then
					v:Destroy()
				end
			end
		end
	end
end)

spawn(function()
    while wait(0.1) do
		LabelHaki:Set("Haki : "..game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HealthBar").Frame.Haki.Frame.Min.Value)
	end
end)
