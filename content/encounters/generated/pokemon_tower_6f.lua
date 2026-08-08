return function(mod)
    mod.content.encounters:override("POKEMON_TOWER_6F", {
        grass = {
            rate = 15,
            slots = {
                { level = 21, species = "GASTLY" },
                { level = 22, species = "GASTLY" },
                { level = 22, species = "CUBONE" },
                { level = 20, species = "VULPIX" },
                { level = 23, species = "VULPIX" },
                { level = 24, species = "CUBONE" },
                { level = 26, species = "HAUNTER" },
                { level = 18, species = "VULPIII" },
                { level = 27, species = "HAUNTER" },
                { level = 28, species = "BALUMBA" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
