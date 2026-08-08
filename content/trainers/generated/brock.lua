return function(mod)
    mod.content.trainers:patch("OPP_BROCK", {
        name = "BROCK",
        pic = mod.assets:path("assets/trainers/generated/brock.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 11, species = "GEODUDE" },
                { level = 12, species = "DECILLA" },
                { level = 14, species = "ONIX" },
            },
            {
                { level = 19, species = "GEODUDE" },
                { level = 18, species = "KABUTO" },
                { level = 19, species = "DECILLA" },
                { level = 21, species = "ONIX" },
            },
            {
                { level = 22, species = "GRAVELER" },
                { level = 21, species = "OMANYTE" },
                { level = 21, species = "KABUTO" },
                { level = 23, species = "DECILLA" },
                { level = 25, species = "ONIX" },
            },
            {
                { level = 29, species = "GRAVELER" },
                { level = 28, species = "OMANYTE" },
                { level = 28, species = "KABUTO" },
                { level = 29, species = "DECILLA" },
                { level = 31, species = "ONIX" },
            },
            {
                { level = 38, species = "GOLEM" },
                { level = 37, species = "OMANYTE" },
                { level = 37, species = "KABUTO" },
                { level = 38, species = "DECILLA" },
                { level = 40, species = "STEELIX" },
            },
            {
                { level = 41, species = "GOLEM" },
                { level = 40, species = "OMASTAR" },
                { level = 40, species = "KABUTOPS" },
                { level = 41, species = "GAWARHED" },
                { level = 43, species = "STEELIX" },
            },
            {
                { level = 45, species = "GOLEM" },
                { level = 44, species = "OMASTAR" },
                { level = 44, species = "KABUTOPS" },
                { level = 45, species = "GAWARHED" },
                { level = 47, species = "STEELIX" },
            },
            {
                { level = 57, species = "GOLEM" },
                { level = 56, species = "OMASTAR" },
                { level = 56, species = "KABUTOPS" },
                { level = 57, species = "GAWARHED" },
                { level = 57, species = "KLEAVOR" },
                { level = 60, species = "STEELIX" },
            },
            {
                { level = 67, species = "GOLEM" },
                { level = 66, species = "GAWARHED" },
                { level = 66, species = "ARCANINE_H" },
                { level = 67, species = "OMASTAR" },
                { level = 67, species = "KABUTOPS" },
                { level = 70, species = "STEELIX" },
            },
        },

        aiMods = { 1, 3 },
    })
end
