return function(mod)
    mod.content.encounters:override("VICTORY_ROAD_2F", {
        grass = {
            rate = 15,
            slots = {
                { level = 43, species = "MACHOKE" },
                { level = 42, species = "ONIX" },
                { level = 42, species = "GOLBAT" },
                { level = 42, species = "GRAVELER" },
                { level = 43, species = "SANDSLASH" },
                { level = 43, species = "GOLBAT" },
                { level = 44, species = "GAVILLAIN" },
                { level = 44, species = "RHYHORN" },
                { level = 44, species = "VENOMOTH" },
                { level = 45, species = "HITMONLEE" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
