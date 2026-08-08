return function(mod)
    mod.content.encounters:override("UNDERWATER_TUNNEL", {
        grass = {
            rate = 15,
            slots = {
                { level = 33, species = "GOLBAT" },
                { level = 34, species = "POLIWHIRL" },
                { level = 34, species = "GOLBAT" },
                { level = 35, species = "WEIRDUCK" },
                { level = 36, species = "WEIRDUCK" },
                { level = 34, species = "BLASTYKE" },
                { level = 34, species = "POLIWHIRL" },
                { level = 36, species = "JABETTA" },
                { level = 37, species = "CROAKOZUNA" },
                { level = 39, species = "BLASTOISE" },
            },
        },

        water = {
            rate = 5,
            slots = {
                { level = 33, species = "KRABBY" },
                { level = 34, species = "GOLDEEN" },
                { level = 34, species = "RIBBITO" },
                { level = 33, species = "BLASTYKE" },
                { level = 34, species = "BLASTYKE" },
                { level = 33, species = "GOLDEEN" },
                { level = 36, species = "CROAKOZUNA" },
                { level = 36, species = "JABETTA" },
                { level = 37, species = "GYARADOS" },
                { level = 39, species = "GYARADOS" },
            },
        },
    })
end
