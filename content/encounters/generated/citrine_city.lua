return function(mod)
    mod.content.encounters:override("CITRINE_CITY", {
        grass = {
            rate = 0,
            slots = {},
        },

        water = {
            rate = 10,
            slots = {
                { level = 40, species = "TENTACRUEL" },
                { level = 45, species = "TENTACRUEL" },
                { level = 50, species = "PENDRAKEN" },
                { level = 50, species = "PENDRAKEN" },
                { level = 45, species = "JABETTA" },
                { level = 45, species = "JABETTA" },
                { level = 45, species = "TENTACRUEL" },
                { level = 50, species = "TENTACRUEL" },
                { level = 50, species = "SHARPOON" },
                { level = 55, species = "SHARPOON" },
            },
        },
    })
end
