function Teleport(x, y, z, h)
    CreateThread(function()
        SetEntityCoords(PlayerPedId(), x, y, z)
        SetEntityHeading(PlayerPedId(), h)
        Wait(100)
        DoScreenFadeIn(100)
    end)
end

function TeleportToIPL(ipl)

end

--- Despawn created shell
---@param shell any
---@param cb function
function DespawnShell(shell, cb)
    if not shell then return end
    CreateThread(function()
        if shell ~= nil and DoesEntityExist(shell) then
            DeleteEntity(shell)
        end
        cb()
    end)
end

exports('DespawnShell', DespawnShell)

function SpawnDefaultShell(coords)
    local POIOffsets = {
        exit = json.decode('{"x": -0.43, "y": -2.51, "z": 1.0, "h": 271.29}'),
        stash = json.decode('{"x": 1.427551, "y": -3.175781, "z": -0.773796, "h": 184.584869}'),
        logout = json.decode('{"x": -1.108032, "y": 1.074829, "z":  -0.340126, "h": 95.320656}'),
        outfit = json.decode('{"x": 1.332947, "y": 2.519531, "z": -1.546425, "h": 359.401703}')
    }
    local ZoneData = {
        exit = {
            size = vec3(1.5, 1.5, 2.0),
        },
        stash = {
            size = vec3(2.0, 1.5, 1)
        },
        logout = {
            size = vec3(1.0, 1.0, 1.0)
        },
        outfit = {
            size = vec3(1.0, 1.0, 2.0),
        }
    }
    DoScreenFadeOut(500)
    while not IsScreenFadedOut() do
        Wait(10)
    end
    lib.requestModel(joaat('standardmotel_shell'))
    local model = CreateObject(joaat('standardmotel_shell'), coords.x, coords.y, coords.z, false, false, false)
    FreezeEntityPosition(model, true)
    Teleport(coords.x + POIOffsets.exit.x, coords.y + POIOffsets.exit.y, coords.z + POIOffsets.exit.z, POIOffsets.exit.h)
    return {
        model, POIOffsets, ZoneData
    }
end

function SpawnModernMotel(coords)
    local POIOffsets = {
        exit = json.decode('{"x": 4.98, "y": 4.35, "z": 1.16, "h": 179.79}'),
        stash = json.decode('{"x": 5.735474, "y": 0.023560, "z": -0.807907, "h": 272.001404}'),
        logout = json.decode('{"x": -6.063354, "y": -1.469727, "z": -1.807915, "h": 90.813385}'),
        outfit = json.decode('{"x": 4.555115, "y": -3.648315, "z": -1.807907, "h": 183.863617}')
    }
    local ZoneData = {
        exit = {
            size = vec3(1.5, 1.5, 2.0),
        },
        stash = {
            size = vec3(2.0, 1.5, 1)
        },
        logout = {
            size = vec3(1.0, 1.0, 1.0)
        },
        outfit = {
            size = vec3(1.0, 1.0, 2.0),
        }
    }
    DoScreenFadeOut(500)
    while not IsScreenFadedOut() do
        Wait(10)
    end
    lib.requestModel(joaat('modernhotel_shell'))
    local model = CreateObject(joaat('modernhotel_shell'), coords.x, coords.y, coords.z, false, false, false)
    FreezeEntityPosition(model, true)
    Teleport(coords.x + POIOffsets.exit.x, coords.y + POIOffsets.exit.y, coords.z + POIOffsets.exit.z, POIOffsets.exit.h)
    return {
        model, POIOffsets, ZoneData
    }
end

---@param coords { x: number, y: number, z: number }
---@param shell number
---@return table
function SpawnShell(coords, shell)
    if shell == 1 then
        return SpawnDefaultShell(coords)
    elseif shell == 2 then
        return SpawnModernMotel(coords)
    else
        return SpawnDefaultShell(coords)
    end
end
