return function(mod)
    mod.content.encounters:override("GARNET_CAVERN_B1F", {
        grass = {
            rate = 5,
            slots = {
                { level = 47, species = "MR_MIME" },
                { level = 47, species = "GRAVELER" },
                { level = 48, species = "MAGNETON" },
                { level = 48, species = "HYPNO" },
                { level = 47, species = "CROAKOZUNA" },
                { level = 49, species = "SLOWBRO" },
                { level = 48, species = "SLOWBRO" },
                { level = 49, species = "HAUNTER" },
                { level = 49, species = "GAVILLAIN" },
                { level = 50, species = "GAVILLAIN" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
