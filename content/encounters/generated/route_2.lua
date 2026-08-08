return function(mod)
    mod.content.encounters:override("ROUTE_2", {
        grass = {
            rate = 25,
            slots = {
                { level = 4, species = "RATTATA" },
                { level = 3, species = "PIDGEY" },
                { level = 4, species = "PIDGEY" },
                { level = 3, species = "WEEDLE" },
                { level = 3, species = "COINPUR" },
                { level = 3, species = "CATERPIE" },
                { level = 4, species = "WEEDLE" },
                { level = 4, species = "CATERPIE" },
                { level = 4, species = "COINPUR" },
                { level = 5, species = "COINPUR" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
