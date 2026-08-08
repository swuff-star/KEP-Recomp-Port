return function(mod)
    mod.content.encounters:override("CERULEAN_CAVE_B1F", {
        grass = {
            rate = 25,
            slots = {
                { level = 62, species = "GRAVELER" },
                { level = 62, species = "CROBAT" },
                { level = 63, species = "CLEFAIRY" },
                { level = 64, species = "LICKITUNG" },
                { level = 64, species = "KADABRA" },
                { level = 64, species = "RAICHU" },
                { level = 64, species = "CHANSEY" },
                { level = 65, species = "DITTO" },
                { level = 65, species = "SNORLAX" },
                { level = 70, species = "DITTO" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
