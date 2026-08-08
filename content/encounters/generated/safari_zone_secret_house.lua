return function(mod)
    mod.content.encounters:override("SAFARI_ZONE_SECRET_HOUSE", {
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
