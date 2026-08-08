return function(mod)
    mod.content.encounters:override("VIRIDIAN_PRE_GYM", {
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
