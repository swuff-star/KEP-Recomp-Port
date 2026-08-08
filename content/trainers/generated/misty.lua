return function(mod)
    mod.content.trainers:patch("OPP_MISTY", {
        name = "MISTY",
        pic = mod.assets:path("assets/trainers/generated/misty.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 11, species = "HORSEA" },
                { level = 12, species = "GOLDEEN" },
                { level = 14, species = "STARMIE" },
            },
            {
                { level = 19, species = "HORSEA" },
                { level = 18, species = "GOLDEEN" },
                { level = 19, species = "PSYDUCK" },
                { level = 21, species = "STARMIE" },
            },
            {
                { level = 22, species = "HORSEA" },
                { level = 21, species = "RIBBITO" },
                { level = 21, species = "GOLDEEN" },
                { level = 23, species = "WEIRDUCK" },
                { level = 25, species = "STARMIE" },
            },
            {
                { level = 29, species = "HORSEA" },
                { level = 28, species = "RIBBITO" },
                { level = 28, species = "GOLDEEN" },
                { level = 29, species = "WEIRDUCK" },
                { level = 31, species = "STARMIE" },
            },
            {
                { level = 38, species = "SEADRA" },
                { level = 37, species = "CROAKOZUNA" },
                { level = 37, species = "SEAKING" },
                { level = 38, species = "GOLDUCK" },
                { level = 40, species = "STARMIE" },
            },
            {
                { level = 41, species = "SEADRA" },
                { level = 40, species = "CROAKOZUNA" },
                { level = 40, species = "SEAKING" },
                { level = 41, species = "GOLDUCK" },
                { level = 43, species = "STARMIE" },
            },
            {
                { level = 45, species = "KINGDRA" },
                { level = 44, species = "CROAKOZUNA" },
                { level = 44, species = "SEAKING" },
                { level = 45, species = "GOLDUCK" },
                { level = 47, species = "STARMIE" },
            },
            {
                { level = 57, species = "KINGDRA" },
                { level = 56, species = "CROAKOZUNA" },
                { level = 56, species = "SEAKING" },
                { level = 57, species = "GOLDUCK" },
                { level = 57, species = "VAPOREON" },
                { level = 60, species = "STARMIE" },
            },
            {
                { level = 67, species = "KINGDRA" },
                { level = 67, species = "GOLDUCK" },
                { level = 66, species = "TAUROS_PA" },
                { level = 66, species = "VAPOREON" },
                { level = 67, species = "TOTARTLE" },
                { level = 70, species = "STARMIE" },
            },
        },

        aiMods = { 1, 3, 4 },
    })
end
