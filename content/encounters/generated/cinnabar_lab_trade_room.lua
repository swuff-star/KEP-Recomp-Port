return function(mod)
    mod.content.encounters:override("CINNABAR_LAB_TRADE_ROOM", {
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
