return function(mod)
    mod.content.encounters:override("CINNABAR_MART", {
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
