return function(mod)
    mod.content.encounters:override("ROUTE_21", {
        grass = {
            rate = 25,
            slots = {
                { level = 27, species = "RATICATE" },
                { level = 28, species = "PIDGEOTTO" },
                { level = 30, species = "BALUMBA" },
                { level = 28, species = "GLOOM" },
                { level = 28, species = "WEEPINBELL" },
                { level = 29, species = "TOEDSCOOL" },
                { level = 29, species = "TOEDSCOOL" },
                { level = 28, species = "TANGELA" },
                { level = 30, species = "TANGELA" },
                { level = 32, species = "TANGELA" },
            },
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
