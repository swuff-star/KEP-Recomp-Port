return function(mod)
    mod.content.encounters:override("SAFARI_ZONE_EAST", {
        grass = {
            rate = 30,
            slots = {
                { level = 26, species = "EXEGGCUTE" },
                { level = 26, species = "DODUO" },
                { level = 25, species = "TANGELA" },
                { level = 26, species = "RHYHORN" },
                { level = 25, species = "LICKITUNG" },
                { level = 27, species = "EXEGGCUTE" },
                { level = 25, species = "TAUROS" },
                { level = 25, species = "PINSIR" },
                { level = 27, species = "KANGASKHAN" },
                { level = 10, species = "CHANSEY" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
