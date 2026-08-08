return function(mod)
    mod.content.encounters:override("GAME_CORNER", {
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
