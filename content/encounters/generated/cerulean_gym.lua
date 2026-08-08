return function(mod)
    mod.content.encounters:override("CERULEAN_GYM", {
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
