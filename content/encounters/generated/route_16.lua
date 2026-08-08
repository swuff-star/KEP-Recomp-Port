return function(mod)
    mod.content.encounters:override("ROUTE_16", {
        grass = {
            rate = 25,
            slots = {
                { level = 20, species = "SPEAROW" },
                { level = 22, species = "FEAROW" },
                { level = 20, species = "GRIMER" },
                { level = 20, species = "DODUO" },
                { level = 20, species = "KOFFING" },
                { level = 18, species = "DODUO" },
                { level = 22, species = "KOFFING" },
                { level = 22, species = "RAMOOSE" },
                { level = 23, species = "RATICATE" },
                { level = 25, species = "RATICATE" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
