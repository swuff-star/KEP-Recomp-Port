return function(mod)
    mod.content.encounters:override("FARAWAY_FERRY_DOCK", {
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
