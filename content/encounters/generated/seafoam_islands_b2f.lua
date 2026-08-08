return function(mod)
    mod.content.encounters:override("SEAFOAM_ISLANDS_B2F", {
        grass = {
            rate = 10,
            slots = {
                { level = 35, species = "SEEL" },
                { level = 35, species = "SLOWPOKE" },
                { level = 36, species = "SEEL" },
                { level = 36, species = "SLOWPOKE" },
                { level = 34, species = "WEIRDUCK" },
                { level = 35, species = "KRABBY" },
                { level = 35, species = "BLASTYKE" },
                { level = 38, species = "JYNX" },
                { level = 36, species = "BLASTYKE" },
                { level = 39, species = "BUU" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
