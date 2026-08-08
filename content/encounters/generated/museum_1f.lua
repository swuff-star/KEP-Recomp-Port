return function(mod)
    mod.content.encounters:override("MUSEUM_1F", {
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
