return function(mod)
    mod.content.encounters:override("VICTORY_ROAD_3F", {
        grass = {
            rate = 15,
            slots = {
                { level = 43, species = "MACHOKE" },
                { level = 42, species = "ONIX" },
                { level = 42, species = "GOLBAT" },
                { level = 42, species = "GRAVELER" },
                { level = 43, species = "RHYHORN" },
                { level = 43, species = "GOLBAT" },
                { level = 44, species = "GAVILLAIN" },
                { level = 50, species = "CHANSEY" },
                { level = 44, species = "PARASECT" },
                { level = 45, species = "HITMONCHAN" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
