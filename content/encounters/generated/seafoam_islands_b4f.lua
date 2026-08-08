return function(mod)
    mod.content.encounters:override("SEAFOAM_ISLANDS_B4F", {
        grass = {
            rate = 10,
            slots = {
                { level = 35, species = "WEIRDUCK" },
                { level = 35, species = "SEEL" },
                { level = 35, species = "BLASTYKE" },
                { level = 36, species = "SEEL" },
                { level = 36, species = "DEWGONG" },
                { level = 36, species = "GOLDUCK" },
                { level = 37, species = "BLASTYKE" },
                { level = 36, species = "BUU" },
                { level = 38, species = "BUU" },
                { level = 40, species = "BLASTOISE" },
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
