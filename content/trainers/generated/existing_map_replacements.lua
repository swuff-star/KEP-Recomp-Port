local function deepCopy(value, seen)
    if type(value) ~= "table" then return value end
    seen = seen or {}
    if seen[value] then return seen[value] end
    local copy = {}
    seen[value] = copy
    for k, v in pairs(value) do
        copy[deepCopy(k, seen)] = deepCopy(v, seen)
    end
    return copy
end

local function patchTrainerObjects(mod, mapId, changes)
    local map = mod.content.maps:get(mapId)
    if not map then
        error(("KEP Port: existing trainer patch references missing map %s"):format(mapId), 0)
    end

    local objects = deepCopy(map.objects or {})
    for _, change in ipairs(changes) do
        local object = objects[change.index]
        if not object then
            error(("KEP Port: map %s has no object #%d for trainer replacement"):format(mapId, change.index), 0)
        end
        if not object.trainerClass then
            error(("KEP Port: map %s object #%d is no longer a trainer slot"):format(mapId, change.index), 0)
        end
        object.trainerClass = change.trainerClass
        object.trainerParty = change.trainerParty
    end

    mod.content.maps:patch(mapId, { objects = objects })
end

return function(mod)
    patchTrainerObjects(mod, "FIGHTING_DOJO", {
        { index = 1, trainerClass = "OPP_KOICHI", trainerParty = 1 },
        { index = 2, trainerClass = "OPP_BLACKBELT", trainerParty = 3 },
        { index = 3, trainerClass = "OPP_BLACKBELT", trainerParty = 4 },
        { index = 4, trainerClass = "OPP_BLACKBELT", trainerParty = 2 },
        { index = 5, trainerClass = "OPP_BLACKBELT", trainerParty = 1 },
    })

    patchTrainerObjects(mod, "POKEMON_MANSION_1F", {
        { index = 1, trainerClass = "OPP_SCIENTIST", trainerParty = 5 },
    })

    patchTrainerObjects(mod, "SILPH_CO_11F", {
        { index = 5, trainerClass = "OPP_ROCKET", trainerParty = 41 },
    })

    patchTrainerObjects(mod, "SS_ANNE_2F", {
        { index = 2, trainerClass = "OPP_RIVAL2", trainerParty = 1 },
    })

    patchTrainerObjects(mod, "VICTORY_ROAD_2F", {
        { index = 1, trainerClass = "OPP_BLACKBELT", trainerParty = 8 },
    })

    patchTrainerObjects(mod, "VIRIDIAN_GYM", {
        { index = 1, trainerClass = "OPP_LEADER_GIOVANNI", trainerParty = 1 },
        { index = 3, trainerClass = "OPP_BLACKBELT", trainerParty = 5 },
        { index = 5, trainerClass = "OPP_BLACKBELT", trainerParty = 6 },
        { index = 7, trainerClass = "OPP_BLACKBELT", trainerParty = 7 },
    })

end
