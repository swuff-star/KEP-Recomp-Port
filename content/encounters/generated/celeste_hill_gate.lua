return function(mod)
    mod.content.encounters:override("CELESTE_HILL_GATE", {
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
