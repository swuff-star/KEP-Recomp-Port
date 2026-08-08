return function(mod)
    mod.content.encounters:override("ROUTE_10", {
        grass = {
            rate = 15,
            slots = {
                { level = 16, species = "MAGNEMITE" },
                { level = 16, species = "RATTATA" },
                { level = 14, species = "VOLTORB" },
                { level = 13, species = "EKANS" },
                { level = 13, species = "SPEAROW" },
                { level = 14, species = "KOTORA" },
                { level = 15, species = "NIDORAN_M" },
                { level = 17, species = "EKANS" },
                { level = 14, species = "SPEAROW" },
                { level = 19, species = "NIDORINO" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
