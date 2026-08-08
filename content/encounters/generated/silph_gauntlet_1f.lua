return function(mod)
    mod.content.encounters:override("SILPH_GAUNTLET_1F", {
        grass = {
            rate = 8,
            slots = {
                { level = 45, species = "BUTTERFREE" },
                { level = 45, species = "BEEDRILL" },
                { level = 46, species = "VENOMOTH" },
                { level = 47, species = "PIDGEOT" },
                { level = 46, species = "BEEDRILL" },
                { level = 46, species = "BUTTERFREE" },
                { level = 47, species = "CARAPTHOR" },
                { level = 48, species = "PIDGEOT" },
                { level = 48, species = "CARAPTHOR" },
                { level = 50, species = "GOROTORA" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
