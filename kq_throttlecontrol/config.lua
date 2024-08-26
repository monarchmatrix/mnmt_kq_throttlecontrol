Config = {}

--- Max RPM in percentage
Config.maxRpm = 0.2

--- Speed in KM/h
-- The throttle control will not affect the vehicles which drive over this speed
Config.maxSpeed = 10

-- https://docs.fivem.net/docs/game-references/controls/
-- Use the input index for the "input" value
Config.keybinds = {
    slow = {
        input = 'lshift',
    }
}

-- Define the allowed vehicle classes for throttle control
Config.allowedClasses = {
    [0] = true,  -- Compacts
    [1] = true,  -- Sedans
    [2] = true,  -- SUVs
    [3] = true,  -- Coupes
    [4] = true,  -- Muscle
    [5] = true,  -- Sports Classics
    [6] = true,  -- Sports
    [7] = true,  -- Super
    [8] = true,  -- Motorcycles
    [9] = true,  -- Off-road
    [10] = false, -- Industrial
    [11] = false, -- Utility
    [12] = false, -- Vans
    [13] = false, -- Cycles
    [14] = false, -- Boats
    [15] = false, -- Helicopters
    [16] = false, -- Planes
    [17] = false, -- Service
    [18] = true, -- Emergency
    [19] = false, -- Military
    [20] = false, -- Commercial
    [21] = false, -- Trains
}
