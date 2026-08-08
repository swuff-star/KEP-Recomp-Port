return function(mod)
    mod.content.encounters:override("SILPH_CO_3F", {
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
