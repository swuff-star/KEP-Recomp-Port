return function(mod)
    mod.content.encounters:override("WARDENS_HOUSE", {
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
