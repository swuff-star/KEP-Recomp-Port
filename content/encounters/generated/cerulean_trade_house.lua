return function(mod)
    mod.content.encounters:override("CERULEAN_TRADE_HOUSE", {
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
