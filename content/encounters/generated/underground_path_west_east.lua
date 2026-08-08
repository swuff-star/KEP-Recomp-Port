return function(mod)
    mod.content.encounters:override("UNDERGROUND_PATH_WEST_EAST", {
        grass = {
            rate = 0,
            slots = {},
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
