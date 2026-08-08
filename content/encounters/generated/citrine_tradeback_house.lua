return function(mod)
    mod.content.encounters:override("CITRINE_TRADEBACK_HOUSE", {
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
