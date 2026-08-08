return function(mod)
    mod.content.encounters:override("INDIGO_PLATEAU_LOBBY", {
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
