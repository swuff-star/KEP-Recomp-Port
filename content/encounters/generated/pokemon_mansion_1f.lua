return function(mod)
    mod.content.encounters:override("POKEMON_MANSION_1F", {
        grass = {
            rate = 10,
            slots = {
                { level = 36, species = "GRIMER" },
                { level = 35, species = "GRIMER" },
                { level = 35, species = "KOFFING" },
                { level = 36, species = "GASTLY" },
                { level = 34, species = "KOFFING" },
                { level = 35, species = "GASTLY" },
                { level = 36, species = "GASTLY" },
                { level = 38, species = "MUK" },
                { level = 38, species = "WEEZING" },
                { level = 38, species = "WEEZING" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
