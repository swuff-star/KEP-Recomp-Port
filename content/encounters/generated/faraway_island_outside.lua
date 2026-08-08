return function(mod)
    mod.content.encounters:override("FARAWAY_ISLAND_OUTSIDE", {
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
