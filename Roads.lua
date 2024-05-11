-- Create a table to store functions related to road generation
local roads = {}

-- Create a Random object for generating random numbers
roads.random = Random.new()

-- Function to generate a new road based on the previous road
function roads.Generate(prevRoad)
    -- Get all available roads in the workspace (can be put inside the ReplicatedStorage)
    local possibleRoad = workspace.Roads:GetChildren()
    
    -- Randomly select a road from the possible roads
    local randomRoad = possibleRoad[roads.random:NextInteger(1, #possibleRoad)]
    
    -- Create a copy of the selected road
    local newRoad = randomRoad:clone()
    
    -- Set the primary part of the new road as the entrance of the road
    newRoad.PrimaryPart = newRoad.Entrance
    
    -- Align the new road with the exit of the previous road
    newRoad:PivotTo(prevRoad.Exit.CFrame)
    
    -- Set the new road as a child of the workspace, in a specific location for generated roads
    newRoad.Parent = workspace.GeneratedRoads
    
    -- Return the newly generated road
    return newRoad
end

-- Return the roads table, which contains the road generation function and the Random object
return roads
