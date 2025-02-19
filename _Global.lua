local GameList = {
	{NameGame = "U1491",Id = 14339696091},
	{NameGame = "U1491",Id = 11187148979},
	{NameGame = "L3197",Id = 3101667897},
	{NameGame = "S2602",Id = 2616498302},
	{NameGame = "T1786",Id = 17554856486}
}
for _,v in pairs(GameList) do
	if game.PlaceId == v.Id then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/TheWordMaker/SnakeHeartInitiateTruck/main/Hub/"..v.Name..".lua", true))()
	end
end
