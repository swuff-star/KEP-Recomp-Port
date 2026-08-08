return function(mod)
    mod.content.encounters:override("VIRIDIAN_FOREST", {
        grass = {
            rate = 8,
            slots = {
                { level = 4, species = "CATERPIE" },
                { level = 4, species = "WEEDLE" },
                { level = 4, species = "PIDGEY" },
                { level = 5, species = "CATERPIE" },
                { level = 5, species = "GENTLARVA" },
                { level = 5, species = "WEEDLE" },
                { level = 7, species = "KAKUNA" },
                { level = 7, species = "METAPOD" },
                { level = 5, species = "KOTORA" },
                { level = 9, species = "PIDGEOTTO" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
