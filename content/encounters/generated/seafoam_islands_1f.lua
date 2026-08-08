return function(mod)
    mod.content.encounters:override("SEAFOAM_ISLANDS_1F", {
        grass = {
            rate = 15,
            slots = {
                { level = 35, species = "SEEL" },
                { level = 35, species = "GOLBAT" },
                { level = 35, species = "WEIRDUCK" },
                { level = 35, species = "KRABBY" },
                { level = 36, species = "WEIRDUCK" },
                { level = 33, species = "SEEL" },
                { level = 34, species = "SLOWPOKE" },
                { level = 34, species = "SLOWPOKE" },
                { level = 38, species = "JYNX" },
                { level = 38, species = "DEWGONG" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
