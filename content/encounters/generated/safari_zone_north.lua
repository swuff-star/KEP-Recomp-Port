return function(mod)
    mod.content.encounters:override("SAFARI_ZONE_NORTH", {
        grass = {
            rate = 30,
            slots = {
                { level = 25, species = "EXEGGCUTE" },
                { level = 26, species = "RHYHORN" },
                { level = 26, species = "EXEGGCUTE" },
                { level = 25, species = "TANGELA" },
                { level = 29, species = "VENOMOTH" },
                { level = 25, species = "CUBONE" },
                { level = 29, species = "DODRIO" },
                { level = 27, species = "TAUROS" },
                { level = 26, species = "TRAMPEL" },
                { level = 28, species = "KANGASKHAN" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
