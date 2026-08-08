return function(mod)
    mod.content.trainers:patch("OPP_LANCE", {
        name = "LANCE",
        pic = mod.assets:path("assets/trainers/generated/lance.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 56, species = "GAVILLAIN" },
                { level = 57, species = "GYARADOS" },
                { level = 56, species = "KINGDRA" },
                { level = 58, species = "IGUANARCH" },
                { level = 58, species = "AERODACTYL" },
                { level = 60, species = "DRAGONITE" },
            },
            {
                { level = 79, species = "GAVILLAIN" },
                { level = 80, species = "GYARADOS" },
                { level = 79, species = "EXEGGUTOR_A" },
                { level = 80, species = "KINGDRA" },
                { level = 80, species = "IGUANARCH" },
                { level = 82, species = "DRAGONITE" },
            },
        },

        aiMods = { 1, 2, 3, 4 },
    })
end
