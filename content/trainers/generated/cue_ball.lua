return function(mod)
    mod.content.trainers:patch("OPP_CUE_BALL", {
        name = "CUE BALL",
        pic = mod.assets:path("assets/trainers/generated/cue_ball.png"),
        baseMoney = 25,

        parties = {
            {
                { level = 28, species = "MACHOP" },
                { level = 28, species = "MANKEY" },
                { level = 28, species = "RATICATE" },
            },
            {
                { level = 29, species = "MANKEY" },
                { level = 29, species = "RIBBITO" },
            },
            {
                { level = 33, species = "CARAPTHOR" },
            },
            {
                { level = 29, species = "MANKEY" },
                { level = 29, species = "PRIMEAPE" },
            },
            {
                { level = 29, species = "CHEEP" },
                { level = 29, species = "JABETTA" },
            },
            {
                { level = 33, species = "MACHOKE" },
            },
            {
                { level = 26, species = "MANKEY" },
                { level = 26, species = "MACHOKE" },
                { level = 26, species = "CROAKOZUNA" },
            },
            {
                { level = 29, species = "PRIMEAPE" },
                { level = 29, species = "MACHOKE" },
            },
            {
                { level = 31, species = "TENTACOOL" },
                { level = 31, species = "TENTACOOL" },
                { level = 31, species = "TENTACRUEL" },
            },
            {
                { level = 60, species = "ANNIHILAPE" },
                { level = 60, species = "RATICATE_A" },
                { level = 60, species = "CROAKOZUNA" },
                { level = 60, species = "PERSIAN_A" },
                { level = 60, species = "MACHAMP" },
                { level = 60, species = "GORILLAIMO" },
            },
        },

        aiMods = { 1 },
    })
end
