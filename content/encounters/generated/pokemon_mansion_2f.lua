return function(mod)
    mod.content.encounters:override("POKEMON_MANSION_2F", {
        grass = {
            rate = 10,
            slots = {
                { level = 34, species = "GRIMER" },
                { level = 35, species = "KOFFING" },
                { level = 36, species = "KOFFING" },
                { level = 35, species = "GRIMER" },
                { level = 35, species = "GASTLY" },
                { level = 34, species = "GASTLY" },
                { level = 36, species = "DROWZEE" },
                { level = 38, species = "HYPNO" },
                { level = 40, species = "WEEZING" },
                { level = 40, species = "MUK" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
