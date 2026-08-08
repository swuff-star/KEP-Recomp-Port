return function(mod)
    mod.content.encounters:override("CELADON_UNIVERSITY_OUTSIDE", {
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
