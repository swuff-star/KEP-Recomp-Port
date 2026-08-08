return function(mod)
    mod.content.trainers:patch("OPP_SAILOR", {
        name = "SAILOR",
        pic = mod.assets:path("assets/trainers/generated/sailor.png"),
        baseMoney = 30,

        parties = {
            {
                { level = 18, species = "MACHOP" },
                { level = 18, species = "BLOTTLE" },
            },
            {
                { level = 17, species = "MACHOP" },
                { level = 17, species = "TENTACOOL" },
            },
            {
                { level = 21, species = "SHELLDER" },
            },
            {
                { level = 17, species = "HORSEA" },
                { level = 17, species = "SHELLDER" },
                { level = 17, species = "TENTACOOL" },
            },
            {
                { level = 18, species = "TENTACOOL" },
                { level = 18, species = "STARYU" },
            },
            {
                { level = 17, species = "POLIWAG" },
                { level = 17, species = "RIBBITO" },
                { level = 17, species = "PIKACHU" },
            },
            {
                { level = 20, species = "MACHOP" },
                { level = 20, species = "CHEEP" },
            },
            {
                { level = 21, species = "KOTORA" },
                { level = 21, species = "GAOTORA" },
            },
            {
                { level = 58, species = "CROAKOZUNA" },
                { level = 58, species = "MACHAMP" },
                { level = 58, species = "GOROCHU" },
                { level = 58, species = "STARMIE" },
                { level = 58, species = "POLIWRATH" },
                { level = 58, species = "TENTACRUEL" },
            },
        },

        aiMods = { 1, 3 },
    })
end
