return function(mod)
    mod.content.encounters:override("ROUTE_9", {
        grass = {
            rate = 15,
            slots = {
                { level = 16, species = "RATTATA" },
                { level = 16, species = "SPEAROW" },
                { level = 14, species = "EKANS" },
                { level = 13, species = "EKANS" },
                { level = 15, species = "RATTATA" },
                { level = 15, species = "MAGNEMITE" },
                { level = 15, species = "NIDORAN_F" },
                { level = 17, species = "SANDSHREW" },
                { level = 17, species = "SANDSHREW" },
                { level = 19, species = "NIDORINA" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
