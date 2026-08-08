return function(mod)
    mod.content.trainers:patch("OPP_KOGA", {
        name = "KOGA",
        pic = mod.assets:path("assets/trainers/generated/koga.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 11, species = "VENONAT" },
                { level = 12, species = "ZUBAT" },
                { level = 14, species = "KOFFING" },
            },
            {
                { level = 19, species = "VENONAT" },
                { level = 18, species = "GRIMER" },
                { level = 19, species = "KOFFING" },
                { level = 21, species = "GOLBAT" },
            },
            {
                { level = 22, species = "VENONAT" },
                { level = 21, species = "TENTACOOL" },
                { level = 21, species = "GRIMER" },
                { level = 23, species = "KOFFING" },
                { level = 25, species = "GOLBAT" },
            },
            {
                { level = 29, species = "VENOMOTH" },
                { level = 28, species = "TENTACOOL" },
                { level = 28, species = "GRIMER" },
                { level = 29, species = "KOFFING" },
                { level = 31, species = "GOLBAT" },
            },
            {
                { level = 38, species = "VENOMOTH" },
                { level = 37, species = "TENTACRUEL" },
                { level = 37, species = "MUK" },
                { level = 38, species = "WEEZING" },
                { level = 40, species = "CROBAT" },
            },
            {
                { level = 41, species = "VENOMOTH" },
                { level = 40, species = "TENTACRUEL" },
                { level = 40, species = "MUK" },
                { level = 41, species = "WEEZING" },
                { level = 43, species = "CROBAT" },
            },
            {
                { level = 45, species = "VENOMOTH" },
                { level = 44, species = "TENTACRUEL" },
                { level = 44, species = "MUK" },
                { level = 45, species = "WEEZING" },
                { level = 47, species = "CROBAT" },
            },
            {
                { level = 57, species = "VENOMOTH" },
                { level = 56, species = "BELLIGNAN" },
                { level = 56, species = "TENTACRUEL" },
                { level = 57, species = "MUK" },
                { level = 57, species = "WEEZING" },
                { level = 60, species = "CROBAT" },
            },
            {
                { level = 67, species = "VENOMOTH" },
                { level = 66, species = "BELLIGNAN" },
                { level = 66, species = "SLOWBRO_G" },
                { level = 67, species = "MUK" },
                { level = 67, species = "WEEZING" },
                { level = 70, species = "CROBAT" },
            },
        },

        aiMods = { 1, 3, 4 },
    })
end
