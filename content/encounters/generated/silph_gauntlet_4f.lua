return function(mod)
    mod.content.encounters:override("SILPH_GAUNTLET_4F", {
        grass = {
            rate = 10,
            slots = {
                { level = 48, species = "HAUNTER" },
                { level = 48, species = "GUARDIA" },
                { level = 49, species = "NINETALES" },
                { level = 49, species = "BALUMBA" },
                { level = 49, species = "HAUNTER" },
                { level = 50, species = "NINETALES" },
                { level = 50, species = "HYPNO" },
                { level = 51, species = "KADABRA" },
                { level = 51, species = "HYPNO" },
                { level = 53, species = "GENGAR" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
