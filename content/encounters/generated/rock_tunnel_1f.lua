return function(mod)
    mod.content.encounters:override("ROCK_TUNNEL_1F", {
        grass = {
            rate = 15,
            slots = {
                { level = 16, species = "ZUBAT" },
                { level = 17, species = "ZUBAT" },
                { level = 17, species = "GEODUDE" },
                { level = 15, species = "MACHOP" },
                { level = 16, species = "GEODUDE" },
                { level = 18, species = "SLOWPOKE" },
                { level = 17, species = "SLOWPOKE" },
                { level = 17, species = "MACHOP" },
                { level = 15, species = "ONIX" },
                { level = 15, species = "GAVILLAIN" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
