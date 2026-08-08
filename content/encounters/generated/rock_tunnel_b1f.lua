return function(mod)
    mod.content.encounters:override("ROCK_TUNNEL_B1F", {
        grass = {
            rate = 15,
            slots = {
                { level = 16, species = "ZUBAT" },
                { level = 17, species = "ZUBAT" },
                { level = 17, species = "RIBBITO" },
                { level = 15, species = "MACHOP" },
                { level = 16, species = "RIBBITO" },
                { level = 18, species = "ZUBAT" },
                { level = 17, species = "MACHOP" },
                { level = 17, species = "ONIX" },
                { level = 16, species = "GAVILLAIN" },
                { level = 17, species = "GAVILLAIN" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
