return function(mod)
    mod.content.encounters:override("CERULEAN_POKECENTER", {
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
