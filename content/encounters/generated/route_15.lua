return function(mod)
    mod.content.encounters:override("ROUTE_15", {
        grass = {
            rate = 15,
            slots = {
                { level = 24, species = "BELLSPROUT" },
                { level = 26, species = "VENONAT" },
                { level = 25, species = "FARFETCHD" },
                { level = 25, species = "DITTO" },
                { level = 22, species = "BELLSPROUT" },
                { level = 28, species = "ODDISH" },
                { level = 26, species = "GAOTORA" },
                { level = 30, species = "VENOMOTH" },
                { level = 28, species = "TANGELA" },
                { level = 28, species = "GORILLAIMO" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
