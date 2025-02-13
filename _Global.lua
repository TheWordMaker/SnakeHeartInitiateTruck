local GameList = {
	{Name = "U1491",Id = 14339696091},
	{Name = "L3197",Id = 3101667897},
	{Name = "S2602",Id = 2616498302},
	{Name = "T1786",Id = 17554856486}
}
for _,v in pairs(GameList) do
	if game.GameId == v.Id then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/TheWordMaker/SnakeHeartInitiateTruck/refs/heads/main/Hub/"..v.Name..".lua",true))()
	end
end
