return function(mod)
    mod.content.encounters:override("ROUTE_3", {
        grass = {
            rate = 20,
            slots = {
                { level = 7, species = "PIDGEY" },
                { level = 7, species = "RATTATA" },
                { level = 7, species = "SPEAROW" },
                { level = 8, species = "PIDGEY" },
                { level = 7, species = "NIDORAN_M" },
                { level = 7, species = "NIDORAN_F" },
                { level = 8, species = "SPEAROW" },
                { level = 5, species = "JIGGLYPUFF" },
                { level = 6, species = "JIGGLYPUFF" },
                { level = 7, species = "JIGGLYPUFF" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
