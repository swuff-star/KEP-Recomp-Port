return function(mod)
    mod.content.encounters:override("SILPH_GAUNTLET_2F", {
        grass = {
            rate = 10,
            slots = {
                { level = 46, species = "GRAVELER" },
                { level = 46, species = "SANDSLASH" },
                { level = 47, species = "MACHOKE" },
                { level = 47, species = "PARASECT" },
                { level = 47, species = "GRAVELER" },
                { level = 48, species = "MACHOKE" },
                { level = 48, species = "CROBAT" },
                { level = 49, species = "CLEFABLE" },
                { level = 49, species = "CROBAT" },
                { level = 51, species = "KLEAVOR" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
