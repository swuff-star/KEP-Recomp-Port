return function(mod)
    mod.content.encounters:override("POKEMON_TOWER_7F", {
        grass = {
            rate = 15,
            slots = {
                { level = 21, species = "GASTLY" },
                { level = 22, species = "GASTLY" },
                { level = 21, species = "CUBONE" },
                { level = 24, species = "VULPIX" },
                { level = 25, species = "VULPIX" },
                { level = 28, species = "HAUNTER" },
                { level = 22, species = "CUBONE" },
                { level = 24, species = "CUBONE" },
                { level = 28, species = "BALUMBA" },
                { level = 30, species = "GENGAR" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
