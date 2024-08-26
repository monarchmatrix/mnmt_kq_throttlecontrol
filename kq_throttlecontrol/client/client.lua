local maxRpm = Config.maxRpm
local maxSpeed = Config.maxSpeed
local enabled = true
local allowedClasses = Config.allowedClasses

local function TriggerThrottleControl()
    CreateThread(function()
        while true do
            if enabled then
                local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                local sleep = 50
                
                if veh and DoesEntityExist(veh) then
                    local vehClass = GetVehicleClass(veh)
                    
                    if allowedClasses[vehClass] then
                        if math.abs(GetVehicleThrottleOffset(veh)) > 0.3 and GetEntitySpeed(veh) * 3.6 <= maxSpeed then
                            sleep = 1

                            local rpm = GetVehicleCurrentRpm(veh)

                            if rpm > maxRpm then
                                SetVehicleCurrentRpm(veh, maxRpm)
                            end
                        end
                    end
                end
                
                Wait(sleep)
            else
                Wait(100)
            end
        end
    end)
end

RegisterCommand('+throttlecontrol', function()
    enabled = false
end, false)

RegisterCommand('-throttlecontrol', function()
    enabled = true
end, false)

TriggerThrottleControl()

RegisterKeyMapping('+throttlecontrol', 'Disable throttle control while holding', 'keyboard', Config.keybinds.slow.input)
