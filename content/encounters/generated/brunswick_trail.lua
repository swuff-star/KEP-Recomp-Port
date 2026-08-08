return function(mod)
    mod.content.encounters:override("BRUNSWICK_TRAIL", {
        grass = {
            rate = 10,
            slots = {
                { level = 45, species = "TOEDSCOOL" },
                { level = 47, species = "DODRIO" },
                { level = 45, species = "TOEDSCOOL" },
                { level = 48, species = "DODRIO" },
                { level = 48, species = "RAPIDASH" },
                { level = 50, species = "CACTORMUS" },
                { level = 47, species = "TOEDSCRUEL" },
                { level = 48, species = "TOEDSCRUEL" },
                { level = 49, species = "TAUROS" },
                { level = 50, species = "TAUROS" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
