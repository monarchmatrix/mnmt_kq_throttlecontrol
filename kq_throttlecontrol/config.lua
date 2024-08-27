Config = {}

Config.maxRpm = 0.2                                -- Max RPM

Config.maxSpeed = 10                               -- The smoothing will not affect the vehicles which drive over this speed

Config.smoothingonkey = true                       -- If true then Config.keybinds will enable smoothing and won't be applied by default, if false then will be applied by default and Config.keybinds will disable it.

Config.keybinds = {
    slow = {
        input = 'lshift',                          -- https://docs.fivem.net/docs/game-references/controls/
    }
}

Config.allowedClasses = {                          -- Define the allowed vehicle classes for smoothing, if false then none of the configuration will work from Config.smoothingonkey
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
