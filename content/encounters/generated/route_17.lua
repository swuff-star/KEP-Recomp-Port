return function(mod)
    mod.content.encounters:override("ROUTE_17", {
        grass = {
            rate = 25,
            slots = {
                { level = 25, species = "FEAROW" },
                { level = 27, species = "KOFFING" },
                { level = 25, species = "RATICATE" },
                { level = 26, species = "PONYTA" },
                { level = 27, species = "GRIMER" },
                { level = 26, species = "DODUO" },
                { level = 28, species = "DODUO" },
                { level = 29, species = "RAMOOSE" },
                { level = 28, species = "PONYTA" },
                { level = 27, species = "DODRIO" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
