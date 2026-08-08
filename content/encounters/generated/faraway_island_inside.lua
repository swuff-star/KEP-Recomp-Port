return function(mod)
    mod.content.encounters:override("FARAWAY_ISLAND_INSIDE", {
        grass = {
            rate = 10,
            slots = {
                { level = 25, species = "MANKEY" },
                { level = 28, species = "GLOOM" },
                { level = 26, species = "BUTTERFREE" },
                { level = 29, species = "PRIMEAPE" },
                { level = 24, species = "MANKEY" },
                { level = 30, species = "DECILLA" },
                { level = 26, species = "MANKEY" },
                { level = 30, species = "GORILLAIMO" },
                { level = 27, species = "BUTTERFREE" },
                { level = 30, species = "AERODACTYL" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
