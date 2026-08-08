return function(mod)
    mod.content.encounters:override("POKEMON_TOWER_2F", {
        grass = {
            rate = 10,
            slots = {
                { level = 20, species = "GASTLY" },
                { level = 21, species = "GASTLY" },
                { level = 18, species = "VULPIII" },
                { level = 15, species = "VULPIII" },
                { level = 20, species = "VULPIX" },
                { level = 24, species = "VULPIX" },
                { level = 22, species = "CUBONE" },
                { level = 20, species = "CUBONE" },
                { level = 25, species = "HAUNTER" },
                { level = 25, species = "BALUMBA" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
