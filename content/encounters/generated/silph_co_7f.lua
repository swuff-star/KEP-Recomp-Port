return function(mod)
    mod.content.encounters:override("SILPH_CO_7F", {
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
