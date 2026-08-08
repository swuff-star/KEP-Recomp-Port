return function(mod)
    mod.content.encounters:override("ROUTE_19", {
        grass = {
            rate = 0,
            slots = {},
        },

        water = {
            rate = 5,
            slots = {
                { level = 25, species = "TENTACOOL" },
                { level = 30, species = "TENTACOOL" },
                { level = 35, species = "BLOTTLE" },
                { level = 35, species = "BLOTTLE" },
                { level = 30, species = "CHEEP" },
                { level = 30, species = "CHEEP" },
                { level = 30, species = "TENTACRUEL" },
                { level = 35, species = "TENTACRUEL" },
                { level = 35, species = "PENDRAKEN" },
                { level = 35, species = "SHARPOON" },
            },
        },
    })
end
