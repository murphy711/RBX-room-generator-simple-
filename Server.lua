-- Import the module containing road generation functions
local roads = require(script.Roads)

-- Initialize the starting road object from the workspace
local prevRoad = workspace.SpawnRoad

-- Iterate through a loop to generate subsequent roads
for i = 1, 10 do
    -- Generate a new road based on the previous road
    prevRoad = roads.Generate(prevRoad)
end
