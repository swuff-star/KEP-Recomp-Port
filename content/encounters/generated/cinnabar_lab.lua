return function(mod)
    mod.content.encounters:override("CINNABAR_LAB", {
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
