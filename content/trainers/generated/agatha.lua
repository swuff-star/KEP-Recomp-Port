return function(mod)
    mod.content.trainers:patch("OPP_AGATHA", {
        name = "AGATHA",
        pic = mod.assets:path("assets/trainers/generated/agatha.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 55, species = "ANNIHILAPE" },
                { level = 56, species = "CROBAT" },
                { level = 55, species = "GENGAR" },
                { level = 57, species = "ARBOK" },
                { level = 57, species = "UMBREON" },
                { level = 59, species = "GENGAR" },
            },
            {
                { level = 77, species = "ANNIHILAPE" },
                { level = 78, species = "CROBAT" },
                { level = 77, species = "MAROWAK_A" },
                { level = 78, species = "ARBOK" },
                { level = 78, species = "UMBREON" },
                { level = 80, species = "GENGAR" },
            },
        },

        aiMods = { 1, 2, 3, 4 },
    })
end
