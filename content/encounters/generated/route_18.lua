return function(mod)
    mod.content.encounters:override("ROUTE_18", {
        grass = {
            rate = 25,
            slots = {
                { level = 27, species = "FEAROW" },
                { level = 29, species = "FEAROW" },
                { level = 25, species = "RATICATE" },
                { level = 24, species = "GRIMER" },
                { level = 25, species = "GRIMER" },
                { level = 26, species = "DODUO" },
                { level = 28, species = "DODUO" },
                { level = 29, species = "TANGELA" },
                { level = 27, species = "GAOTORA" },
                { level = 29, species = "GAOTORA" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
