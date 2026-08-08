return function(mod)
    mod.content.encounters:override("HALL_OF_FAME", {
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
