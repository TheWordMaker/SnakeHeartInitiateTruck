local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Rs = game:GetService("ReplicatedStorage")
local HS = game:GetService("HttpService")
local Info = require(Rs:WaitForChild("Info"))
local function DecodeStats()
    return HS:JSONDecode(Player.Stats.Value)
end
local function SendWebHook(url,argname,argvalue)
	local Headers = {["content-type"] = "application/json"}
	local PlayerData =
	{
		["content"] = "",
		["embeds"] = {
			{
				["title"] = "**Item Spinned**:",
				["description"] = "The Player is "..Player.Name,
				["color"] = tonumber(0x2B6Ba7),
				["fields"] = {
					{
						["name"] = argname,
						["value"] = argvalue,
						["inline"] = false
					},
				},
			},
		},
	}
	local PlayerData = HS:JSONEncode(PlayerData)
	local HttpRequest = http_request;
	if syn then
		HttpRequest = syn.request
	else
		HttpRequest = http_request
	end
	HttpRequest({Url=url, Body=PlayerData, Method="POST", Headers=Headers})
end
local function MassUpgrade(item,level,url)
    local Upgrade = {}
    local ItemTable = DecodeStats()[item.."s"]
    for a, v in ipairs(ItemTable) do
		if v.BaseLevel == v.Level and v.Level > level then
			SendWebHook(url,"Name: "..v.Name,"Level: "..v.Level.."[Max: "..(v.BaseLevel+0.5).."]")
		end
        if v.BaseLevel == v.Level and v.Level <= level then
            table.insert(Upgrade, a)
        end
    end
   Rs.UpgradeItem:InvokeServer(item, Upgrade)
end
local function BuyItemSelected(item)
	local args = {
		[1] = item
	}
	Rs:WaitForChild("RollGear"):InvokeServer(unpack(args))
end
_G.FarmingItem = true
local MyItem = "Relic" --Relic or Fist
local MyNumber = 6
local MyUrl = ""
while _G.FarmingItem do
	for i = 1,30 do
		BuyItemSelected(MyItem)
	end
	MassUpgrade(MyItem,MyNumber,MyUrl)
	wait(2)
end
