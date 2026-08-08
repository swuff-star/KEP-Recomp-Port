return function(mod)
    mod.content.encounters:override("ROUTE_12", {
        grass = {
            rate = 15,
            slots = {
                { level = 24, species = "BELLSPROUT" },
                { level = 25, species = "PIDGEOTTO" },
                { level = 23, species = "ODDISH" },
                { level = 24, species = "VENONAT" },
                { level = 24, species = "BALUMBA" },
                { level = 25, species = "BALUMBA" },
                { level = 26, species = "GLOOM" },
                { level = 27, species = "PIDGEOTTO" },
                { level = 27, species = "WEEPINBELL" },
                { level = 28, species = "WEEPINBELL" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
