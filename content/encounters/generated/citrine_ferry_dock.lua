return function(mod)
    mod.content.encounters:override("CITRINE_FERRY_DOCK", {
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
