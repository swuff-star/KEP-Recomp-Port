return function(mod)
    mod.content.encounters:override("POKEMON_MANSION_3F", {
        grass = {
            rate = 10,
            slots = {
                { level = 35, species = "KOFFING" },
                { level = 34, species = "GRIMER" },
                { level = 35, species = "GRIMER" },
                { level = 34, species = "KOFFING" },
                { level = 34, species = "DROWZEE" },
                { level = 35, species = "DROWZEE" },
                { level = 36, species = "GASTLY" },
                { level = 37, species = "GASTLY" },
                { level = 38, species = "HYPNO" },
                { level = 40, species = "HYPNO" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
