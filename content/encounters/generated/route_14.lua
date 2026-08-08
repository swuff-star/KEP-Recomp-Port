return function(mod)
    mod.content.encounters:override("ROUTE_14", {
        grass = {
            rate = 15,
            slots = {
                { level = 24, species = "ODDISH" },
                { level = 26, species = "VENONAT" },
                { level = 25, species = "PIDGEOTTO" },
                { level = 25, species = "DITTO" },
                { level = 22, species = "ODDISH" },
                { level = 28, species = "BELLSPROUT" },
                { level = 28, species = "VENONAT" },
                { level = 30, species = "VENOMOTH" },
                { level = 28, species = "GAOTORA" },
                { level = 30, species = "GAOTORA" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
