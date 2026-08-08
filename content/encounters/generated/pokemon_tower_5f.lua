return function(mod)
    mod.content.encounters:override("POKEMON_TOWER_5F", {
        grass = {
            rate = 10,
            slots = {
                { level = 20, species = "GASTLY" },
                { level = 21, species = "GASTLY" },
                { level = 15, species = "VULPIII" },
                { level = 16, species = "VULPIII" },
                { level = 23, species = "VULPIX" },
                { level = 24, species = "VULPIX" },
                { level = 25, species = "HAUNTER" },
                { level = 20, species = "CUBONE" },
                { level = 22, species = "CUBONE" },
                { level = 25, species = "BALUMBA" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
