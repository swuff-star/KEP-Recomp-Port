return function(mod)
    mod.content.encounters:override("BATTLE_TENT", {
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
