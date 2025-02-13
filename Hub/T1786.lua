local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local RS = game:GetService("ReplicatedStorage")
local plr = game.Players.LocalPlayer
local TableStat = {"Body Damage","Bullet Damage","Bullet Penetration","Bullet Speed","Health Regeneration","Max Health","Movement Speed","Reload","Shield"}
local Tab1 = Window:MakeTab({
    Name = "AutoFarm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab1:AddButton({
	Name = "Teleport Item",
	Callback = function()
		pcall(function()
			for P1,P2 in pairs(game.workspace.XPParts:GetChildren()) do
				if P2.Name ~= "Coins" then
					for P3,P4 in pairs(P2:GetChildren()) do
						if P4:IsA("UnionOperation") or P4:IsA("MeshPart") or P4:IsA("Part") then
							P4.CFrame = plr.Character.HumanoidRootPart.CFrame
						end
					end
				end
			end
		end)
  	end    
})
local ToggleButton1Tab1 = false
Tab1:AddToggle({
	Name = "Auto Teleport Item",
	Default = false,
	Callback = function(Value)
		ToggleButton1Tab1 = Value
		while ToggleButton1Tab1 do
			wait(0.1)
			pcall(function()
				for P1,P2 in pairs(game.workspace.XPParts:GetChildren()) do
					if P2.Name ~= "Coins" then
						for P3,P4 in pairs(P2:GetChildren()) do
							if P4:IsA("UnionOperation") or P4:IsA("MeshPart") or P4:IsA("Part") then
								P4.CFrame = plr.Character.HumanoidRootPart.CFrame
								if not ToggleButton1Tab1 then break end
							end
						end
					end
				end
			end)
		end
	end    
})
Tab1:AddButton({
	Name = "Teleport Players + Boss",
	Callback = function()
		pcall(function()
			for P1,P2 in pairs(game.workspace.Tanks.Tanks:GetChildren()) do
				if P2:IsA("Model") and P2.Name ~= plr.Name then
					plr.Character.HumanoidRootPart.CFrame = P2.HumanoidRootPart.CFrame
				end
			end
		end)
  	end    
})
local ToggleButton2Tab1 = false
Tab1:AddToggle({
	Name = "Auto Teleport Players + Boss",
	Default = false,
	Callback = function(Value)
		ToggleButton2Tab1 = Value
		while ToggleButton2Tab1 do
			wait(0.1)
			pcall(function()
				for P1,P2 in pairs(game.workspace.Tanks.Tanks:GetChildren()) do
					if P2:IsA("Model") and P2.Name ~= plr.Name then
						plr.Character.HumanoidRootPart.CFrame = P2.HumanoidRootPart.CFrame
						if not ToggleButton2Tab1 then break end
					end
				end
			end)
		end
	end    
})ins
Tab1:AddButton({
	Name = "Teleport Coins",
	Callback = function()
		pcall(function()
			for P1,P2 in pairs(game.workspace.XPParts:GetChildren()) do
				if P2.Name == "Coins" then
					for P3,P4 in pairs(P2:GetChildren()) do
						if P4.Name ~= "PreventDespawn" then
							if P4:IsA("UnionOperation") or P4:IsA("MeshPart") or P4:IsA("Part") then
								plr.Character.HumanoidRootPart.CFrame = P4.CFrame
								wait(0.3)
							end
						end
					end
				end
			end
		end)
  	end    
})
local ToggleButton3Tab1 = false
Tab1:AddToggle({
	Name = "Auto Teleport Coins",
	Default = false,
	Callback = function(Value)
		ToggleButton3Tab1 = Value
		while ToggleButton3Tab1 do
			wait(0.01)
			pcall(function()
				for P1,P2 in pairs(game.workspace.XPParts:GetChildren()) do
					if P2.Name == "Coins" then
						for P3,P4 in pairs(P2:GetChildren()) do
							if P4.Name ~= "PreventDespawn" then
								if P4:IsA("UnionOperation") or P4:IsA("MeshPart") or P4:IsA("Part") then
									if P4.Val.Value >= 5 then
										plr.Character.HumanoidRootPart.CFrame = P4.CFrame
										if not ToggleButton3Tab1 then break end
									end
								end
							end
						end
					end
				end
			end)
		end
	end    
})
local Tab2 = Window:MakeTab({
    Name = "Stas",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Section1Tab2 = Tab2:AddSection({
    Name = "Give a Statistique"
})
for i,v1 in ipairs(TableStat) do
    Tab2:AddButton({
        Name = "+1 "..v1,
        Callback = function()
            RS.Skills.Upgrade:FireServer(v1)
        end    
    })
end
local Section2Tab2 = Tab2:AddSection({
    Name = "Give a Statistique 2"
})
local Value1Tag2 = 1
Tab2:AddTextbox({
	Name = "Inser Value",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		Value1Tag2 = Value
	end	  
})
local Label1Tab2 = Tab2:AddLabel("ValueInt : N/A")
spawn(function()
	while wait(0.01) do
		Label1Tab2:Set("ValueInt : "..Value1Tag2)
	end
end)
for i,v2 in ipairs(TableStat) do
    Tab2:AddButton({
        Name = "+"..Value1Tag2.." "..v2,
        Callback = function()
			RS.Skills.Upgrade:FireServer(v2,Value1Tag2)
        end    
    })
end
local Tab3 = Window:MakeTab({
    Name = "Tanks",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab3:AddButton({
	Name = "Tank",
	Callback = function()
		RS.Evolutions.UpgradeTank:FireServer("Tank",99)
  	end    
})
Tab3:AddButton({
	Name = "Isida",
	Callback = function()
		RS.Evolutions.UpgradeTank:FireServer("Isida",0)

  	end    
})
local Tab4 = Window:MakeTab({
    Name = "Settings",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab4:AddButton({
	Name = "Console",
	Callback = function()
      	game.StarterGui:SetCore("DevConsoleVisible", true)
  	end    
})
Tab4:AddButton({
	Name = "Turtle Spy",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/Turtle-Brand/Turtle-Spy/main/source.lua", true))()
  	end    
})
Tab4:AddButton({
	Name = "Infinity Yield",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})
Tab4:AddButton({
	Name = "Anti Afk",
	Callback = function()
		wait(0.5)local ba=Instance.new("ScreenGui")
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
		game:service'Players'.LocalPlayer.Idled:connect(function()
		bb:CaptureController()bb:ClickButton2(Vector2.new())
		ab.Text="Roblox kicked you but we didnt let them!"wait(2)ab.Text="Status : Active"end)
  	end    
})
Tab4:AddButton({
	Name = "Dark Dex",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
  	end    
})
local Tab5 = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab5:AddButton({
	Name = "Print Coin Value",
	Callback = function()
		pcall(function()
			print("----------------------")
			for P1,P2 in pairs(game.workspace.XPParts:GetChildren()) do
				if P2.Name == "Coins" then
					for P3,P4 in pairs(P2:GetChildren()) do
						if P4.Name ~= "PreventDespawn" then
							if P4:IsA("UnionOperation") or P4:IsA("MeshPart") or P4:IsA("Part") then
								print(P4.Name,P4.Val.Value)
							end
						end
					end
				end
			end
			print("----------------------")
		end)
  	end    
})



--[[
if game.Players.LocalPlayer.inventory:FindFirstChild("XP Capsule") then
	local tx = game.Players.LocalPlayer.inventory["XP Capsule"]:Clone()
	tx.Parent = game.Players.LocalPlayer.inventory
end
game:GetService("ReplicatedStorage").Inventory.UpdateUI:FireServer(game.Players.LocalPlayer.inventory["XP Capsule"])
]]--
