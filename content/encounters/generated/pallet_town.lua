return function(mod)
    mod.content.encounters:override("PALLET_TOWN", {
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
