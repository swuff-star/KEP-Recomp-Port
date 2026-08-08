return function(mod)
    mod.content.encounters:override("POKEMON_MANSION_B1F", {
        grass = {
            rate = 10,
            slots = {
                { level = 35, species = "GASTLY" },
                { level = 35, species = "KOFFING" },
                { level = 35, species = "GRIMER" },
                { level = 34, species = "DITTO" },
                { level = 36, species = "GASTLY" },
                { level = 36, species = "DITTO" },
                { level = 42, species = "WEEZING" },
                { level = 42, species = "MUK" },
                { level = 38, species = "DITTO" },
                { level = 42, species = "HAUNTER" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
