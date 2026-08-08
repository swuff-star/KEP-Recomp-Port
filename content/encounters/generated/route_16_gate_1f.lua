return function(mod)
    mod.content.encounters:override("ROUTE_16_GATE_1F", {
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
