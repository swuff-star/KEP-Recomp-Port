return function(mod)
    mod.content.encounters:override("ROUTE_5", {
        grass = {
            rate = 15,
            slots = {
                { level = 13, species = "ODDISH" },
                { level = 13, species = "EKANS" },
                { level = 15, species = "EKANS" },
                { level = 14, species = "MANKEY" },
                { level = 12, species = "JIGGLYPUFF" },
                { level = 15, species = "BELLSPROUT" },
                { level = 16, species = "BELLSPROUT" },
                { level = 15, species = "PIDGEY" },
                { level = 14, species = "PIDGEY" },
                { level = 14, species = "JIGGLYPUFF" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
