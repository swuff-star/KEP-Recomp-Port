return function(mod)
    mod.content.encounters:override("SAFARI_ZONE_WEST", {
        grass = {
            rate = 30,
            slots = {
                { level = 25, species = "EXEGGCUTE" },
                { level = 26, species = "DODUO" },
                { level = 26, species = "EXEGGCUTE" },
                { level = 25, species = "CUBONE" },
                { level = 29, species = "VENOMOTH" },
                { level = 26, species = "CUBONE" },
                { level = 29, species = "MAROWAK" },
                { level = 25, species = "SCYTHER" },
                { level = 26, species = "TAUROS" },
                { level = 10, species = "CHANSEY" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
