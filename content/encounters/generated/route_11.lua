return function(mod)
    mod.content.encounters:override("ROUTE_11", {
        grass = {
            rate = 15,
            slots = {
                { level = 14, species = "EKANS" },
                { level = 15, species = "SPEAROW" },
                { level = 12, species = "EKANS" },
                { level = 13, species = "DROWZEE" },
                { level = 13, species = "MAGNEMITE" },
                { level = 13, species = "DROWZEE" },
                { level = 15, species = "SANDSHREW" },
                { level = 16, species = "SPEAROW" },
                { level = 11, species = "DROWZEE" },
                { level = 15, species = "RATICATE" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
