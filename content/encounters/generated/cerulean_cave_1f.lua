return function(mod)
    mod.content.encounters:override("CERULEAN_CAVE_1F", {
        grass = {
            rate = 10,
            slots = {
                { level = 60, species = "GRAVELER" },
                { level = 60, species = "GOLBAT" },
                { level = 61, species = "ELECTRODE" },
                { level = 61, species = "DODRIO" },
                { level = 61, species = "VENOMOTH" },
                { level = 60, species = "GRAVELER" },
                { level = 62, species = "KADABRA" },
                { level = 62, species = "MAGNETON" },
                { level = 60, species = "DITTO" },
                { level = 63, species = "CLEFAIRY" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
