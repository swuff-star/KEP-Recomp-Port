return function(mod)
    mod.content.encounters:override("ROUTE_1", {
        grass = {
            rate = 25,
            slots = {
                { level = 2, species = "PIDGEY" },
                { level = 2, species = "RATTATA" },
                { level = 3, species = "RATTATA" },
                { level = 3, species = "PIDGEY" },
                { level = 2, species = "COINPUR" },
                { level = 3, species = "COINPUR" },
                { level = 3, species = "PIDGEY" },
                { level = 4, species = "RATTATA" },
                { level = 4, species = "PIDGEY" },
                { level = 5, species = "PIDGEY" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
