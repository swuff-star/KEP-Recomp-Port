return function(mod)
    mod.content.encounters:override("SEAFOAM_ISLANDS_B3F", {
        grass = {
            rate = 10,
            slots = {
                { level = 36, species = "BLASTYKE" },
                { level = 36, species = "SEEL" },
                { level = 35, species = "SLOWPOKE" },
                { level = 37, species = "SEEL" },
                { level = 35, species = "KRABBY" },
                { level = 36, species = "WEIRDUCK" },
                { level = 36, species = "KINGLER" },
                { level = 38, species = "JYNX" },
                { level = 39, species = "BUU" },
                { level = 39, species = "BUU" },
            },
        },

        water = {
            rate = 5,
            slots = {
                { level = 30, species = "TENTACOOL" },
                { level = 30, species = "TENTACOOL" },
                { level = 35, species = "SHELLDER" },
                { level = 35, species = "STARYU" },
                { level = 35, species = "TENTACOOL" },
                { level = 35, species = "HORSEA" },
                { level = 35, species = "STARYU" },
                { level = 35, species = "HORSEA" },
                { level = 35, species = "SHARPOON" },
                { level = 40, species = "LAPRAS" },
            },
        },
    })
end
