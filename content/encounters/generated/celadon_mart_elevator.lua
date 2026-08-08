return function(mod)
    mod.content.encounters:override("CELADON_MART_ELEVATOR", {
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
