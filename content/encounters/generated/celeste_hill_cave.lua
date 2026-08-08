return function(mod)
    mod.content.encounters:override("CELESTE_HILL_CAVE", {
        grass = {
            rate = 10,
            slots = {
                { level = 47, species = "GRAVELER" },
                { level = 48, species = "BUU" },
                { level = 47, species = "GRAVELER" },
                { level = 49, species = "BUU" },
                { level = 49, species = "CROBAT" },
                { level = 49, species = "JYNX" },
                { level = 49, species = "STEELIX" },
                { level = 50, species = "NIDOREIGN" },
                { level = 50, species = "CLEFABLE" },
                { level = 50, species = "CLEFABLE" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
