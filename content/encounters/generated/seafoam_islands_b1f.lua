return function(mod)
    mod.content.encounters:override("SEAFOAM_ISLANDS_B1F", {
        grass = {
            rate = 10,
            slots = {
                { level = 35, species = "WEIRDUCK" },
                { level = 35, species = "BLASTYKE" },
                { level = 36, species = "SEEL" },
                { level = 36, species = "BLASTYKE" },
                { level = 34, species = "SLOWPOKE" },
                { level = 35, species = "SEEL" },
                { level = 35, species = "SLOWPOKE" },
                { level = 37, species = "GOLDUCK" },
                { level = 38, species = "JYNX" },
                { level = 39, species = "SLOWBRO" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
