return function(mod)
    mod.content.encounters:override("CERULEAN_CAVE_2F", {
        grass = {
            rate = 15,
            slots = {
                { level = 61, species = "CROBAT" },
                { level = 61, species = "GLOOM" },
                { level = 62, species = "RAPIDASH" },
                { level = 61, species = "WEEPINBELL" },
                { level = 61, species = "WEEPINBELL" },
                { level = 63, species = "STEELIX" },
                { level = 63, species = "WIGGLYTUFF" },
                { level = 65, species = "DITTO" },
                { level = 63, species = "LICKITUNG" },
                { level = 64, species = "SNORLAX" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
