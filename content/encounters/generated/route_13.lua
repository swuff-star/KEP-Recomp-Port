return function(mod)
    mod.content.encounters:override("ROUTE_13", {
        grass = {
            rate = 20,
            slots = {
                { level = 24, species = "ODDISH" },
                { level = 25, species = "FARFETCHD" },
                { level = 23, species = "BELLSPROUT" },
                { level = 24, species = "VENONAT" },
                { level = 24, species = "VENONAT" },
                { level = 24, species = "KOTORA" },
                { level = 26, species = "WEEPINBELL" },
                { level = 27, species = "BALUMBA" },
                { level = 27, species = "GLOOM" },
                { level = 28, species = "GLOOM" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
