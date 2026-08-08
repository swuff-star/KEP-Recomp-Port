return function(mod)
    mod.content.encounters:override("GAME_CORNER_PRIZE_ROOM", {
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
