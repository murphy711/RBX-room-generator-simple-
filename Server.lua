local roads = {}
roads.random = Random.new()

function roads.Generate(prevRoad)
	local possibleRoad = workspace.Roads:GetChildren()
	local randomRoad = possibleRoad[roads.random:NextInteger(1, #possibleRoad)]
	local newRoad = randomRoad:clone()
	
	newRoad.PrimaryPart = newRoad.Entrance
	newRoad:PivotTo(prevRoad.Exit.CFrame)
	
	newRoad.Parent = workspace.GeneratedRoads
	
	return newRoad
end

return roads
