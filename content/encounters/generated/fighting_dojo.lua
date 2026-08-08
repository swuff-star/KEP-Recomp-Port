return function(mod)
    mod.content.encounters:override("FIGHTING_DOJO", {
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
