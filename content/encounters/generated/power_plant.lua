return function(mod)
    mod.content.encounters:override("POWER_PLANT", {
        grass = {
            rate = 10,
            slots = {
                { level = 32, species = "MAGNETITE" },
                { level = 32, species = "VOLTORB" },
                { level = 32, species = "GAOTORA" },
                { level = 33, species = "VOLTORB" },
                { level = 33, species = "GAOTORA" },
                { level = 33, species = "PIKACHU" },
                { level = 34, species = "MAGNETON" },
                { level = 33, species = "ELECTABUZZ" },
                { level = 35, species = "ELECTABUZZ" },
                { level = 36, species = "RAICHU" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
