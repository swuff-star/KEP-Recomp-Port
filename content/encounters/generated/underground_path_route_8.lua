return function(mod)
    mod.content.encounters:override("UNDERGROUND_PATH_ROUTE_8", {
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
