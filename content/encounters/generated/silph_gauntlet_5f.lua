return function(mod)
    mod.content.encounters:override("SILPH_GAUNTLET_5F", {
        grass = {
            rate = 20,
            slots = {
                { level = 49, species = "DODRIO" },
                { level = 49, species = "RHYDON" },
                { level = 49, species = "EXEGGUTOR" },
                { level = 50, species = "SCYTHER" },
                { level = 50, species = "PINSIR" },
                { level = 51, species = "TAUROS" },
                { level = 51, species = "GORILLAIMO" },
                { level = 52, species = "KANGASKHAN" },
                { level = 52, species = "TRAMPEL" },
                { level = 54, species = "CHANSEY" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
