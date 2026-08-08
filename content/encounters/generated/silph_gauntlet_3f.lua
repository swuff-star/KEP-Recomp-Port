return function(mod)
    mod.content.encounters:override("SILPH_GAUNTLET_3F", {
        grass = {
            rate = 10,
            slots = {
                { level = 47, species = "POLIWHIRL" },
                { level = 47, species = "JABETTA" },
                { level = 48, species = "KINGLER" },
                { level = 48, species = "SLOWBRO" },
                { level = 48, species = "POLIWHIRL" },
                { level = 49, species = "KINGLER" },
                { level = 49, species = "CROAKOZUNA" },
                { level = 50, species = "BLASTOISE" },
                { level = 50, species = "CROAKOZUNA" },
                { level = 52, species = "LAPRAS" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
