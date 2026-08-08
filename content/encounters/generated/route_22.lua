return function(mod)
    mod.content.encounters:override("ROUTE_22", {
        grass = {
            rate = 25,
            slots = {
                { level = 3, species = "RATTATA" },
                { level = 4, species = "NIDORAN_M" },
                { level = 4, species = "NIDORAN_F" },
                { level = 4, species = "RATTATA" },
                { level = 3, species = "MANKEY" },
                { level = 3, species = "SPEAROW" },
                { level = 4, species = "SPEAROW" },
                { level = 4, species = "NIDORAN_F" },
                { level = 4, species = "MANKEY" },
                { level = 5, species = "MANKEY" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
