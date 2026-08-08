return function(mod)
    mod.content.encounters:override("ROUTE_24", {
        grass = {
            rate = 25,
            slots = {
                { level = 13, species = "ODDISH" },
                { level = 13, species = "BELLSPROUT" },
                { level = 12, species = "SPEAROW" },
                { level = 14, species = "ODDISH" },
                { level = 14, species = "BELLSPROUT" },
                { level = 10, species = "ABRA" },
                { level = 13, species = "SPEAROW" },
                { level = 14, species = "SPEAROW" },
                { level = 12, species = "ABRA" },
                { level = 16, species = "PIDGEOTTO" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
