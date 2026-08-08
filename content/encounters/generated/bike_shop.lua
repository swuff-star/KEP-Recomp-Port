return function(mod)
    mod.content.encounters:override("BIKE_SHOP", {
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
