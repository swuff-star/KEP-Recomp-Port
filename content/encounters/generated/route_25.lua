return function(mod)
    mod.content.encounters:override("ROUTE_25", {
        grass = {
            rate = 15,
            slots = {
                { level = 14, species = "BELLSPROUT" },
                { level = 13, species = "SPEAROW" },
                { level = 12, species = "VENONAT" },
                { level = 14, species = "ODDISH" },
                { level = 14, species = "ODDISH" },
                { level = 10, species = "ABRA" },
                { level = 13, species = "VENONAT" },
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
