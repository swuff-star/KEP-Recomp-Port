return function(mod)
    mod.content.encounters:override("ROUTE_12_GATE_1F", {
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
