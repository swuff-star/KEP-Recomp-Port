return function(mod)
    mod.content.encounters:override("CELADON_DINER", {
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
