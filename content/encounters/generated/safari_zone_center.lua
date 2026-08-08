return function(mod)
    mod.content.encounters:override("SAFARI_ZONE_CENTER", {
        grass = {
            rate = 30,
            slots = {
                { level = 25, species = "EXEGGCUTE" },
                { level = 27, species = "RHYHORN" },
                { level = 25, species = "VENONAT" },
                { level = 25, species = "TANGELA" },
                { level = 26, species = "CUBONE" },
                { level = 27, species = "DODUO" },
                { level = 25, species = "LICKITUNG" },
                { level = 27, species = "GORILLAIMO" },
                { level = 25, species = "CHANSEY" },
                { level = 28, species = "TRAMPEL" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
