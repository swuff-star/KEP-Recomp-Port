return function(mod)
    mod.content.encounters:override("ROCK_TUNNEL_POKECENTER", {
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
