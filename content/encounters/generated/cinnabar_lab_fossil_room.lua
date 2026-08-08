return function(mod)
    mod.content.encounters:override("CINNABAR_LAB_FOSSIL_ROOM", {
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
