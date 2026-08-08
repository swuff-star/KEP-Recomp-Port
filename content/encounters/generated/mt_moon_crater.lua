return function(mod)
    mod.content.encounters:override("MT_MOON_CRATER", {
        grass = {
            rate = 10,
            slots = {
                { level = 49, species = "DUGTRIO" },
                { level = 49, species = "VENOMOTH" },
                { level = 49, species = "RAICHU" },
                { level = 50, species = "VENOMOTH" },
                { level = 50, species = "DUGTRIO" },
                { level = 50, species = "RAICHU" },
                { level = 50, species = "CHANSEY" },
                { level = 50, species = "SANDY_SHOCKS" },
                { level = 50, species = "SCREAM_TAIL" },
                { level = 50, species = "SCREAM_TAIL" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
