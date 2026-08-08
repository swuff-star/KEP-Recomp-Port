return function(mod)
    mod.content.trainers:patch("OPP_FISHER", {
        name = "FISHERMAN",
        pic = mod.assets:path("assets/trainers/generated/fisher.png"),
        baseMoney = 35,

        parties = {
            {
                { level = 17, species = "GOLDEEN" },
                { level = 17, species = "TENTACOOL" },
                { level = 17, species = "KRABBY" },
            },
            {
                { level = 17, species = "TENTACOOL" },
                { level = 17, species = "STARYU" },
                { level = 17, species = "SHELLDER" },
            },
            {
                { level = 22, species = "GOLDEEN" },
                { level = 22, species = "POLIWAG" },
                { level = 22, species = "CHEEP" },
            },
            {
                { level = 24, species = "TENTACOOL" },
                { level = 24, species = "GOLDEEN" },
            },
            {
                { level = 27, species = "SEADRA" },
            },
            {
                { level = 21, species = "POLIWAG" },
                { level = 21, species = "SHELLDER" },
                { level = 21, species = "GOLDEEN" },
                { level = 21, species = "HORSEA" },
            },
            {
                { level = 28, species = "PSYDUCK" },
                { level = 28, species = "CHEEP" },
                { level = 28, species = "KINGLER" },
            },
            {
                { level = 31, species = "SHELLDER" },
                { level = 31, species = "DISTURBAN" },
            },
            {
                { level = 27, species = "MAGIKARP" },
                { level = 27, species = "MAGIKARP" },
                { level = 27, species = "MAGIKARP" },
                { level = 27, species = "MAGIKARP" },
                { level = 27, species = "MAGIKARP" },
                { level = 27, species = "MAGIKARP" },
            },
            {
                { level = 33, species = "SEAKING" },
                { level = 33, species = "SHARPOON" },
            },
            {
                { level = 24, species = "BLASTYKE" },
                { level = 24, species = "WIGLETT" },
            },
            {
                { level = 58, species = "SEAKING" },
                { level = 58, species = "DISTURBAN" },
                { level = 58, species = "WUGTRIO" },
                { level = 58, species = "KINGLER" },
                { level = 58, species = "PENDRAKEN" },
                { level = 58, species = "GYARADOS" },
            },
            {
                { level = 57, species = "POLIWRATH" },
                { level = 57, species = "DISTURBAN" },
                { level = 57, species = "JABETTA" },
                { level = 57, species = "PENDRAKEN" },
                { level = 57, species = "TAUROS_PA" },
            },
        },

        aiMods = { 1, 3 },
    })
end
