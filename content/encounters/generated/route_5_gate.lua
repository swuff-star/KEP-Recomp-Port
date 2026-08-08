return function(mod)
    mod.content.encounters:override("ROUTE_5_GATE", {
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
