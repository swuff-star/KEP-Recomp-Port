return function(mod)
    mod.content.encounters:override("MT_MOON_SQUARE", {
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
