return function(mod)
    mod.content.trainers:patch("OPP_BLACKBELT", {
        name = "BLACKBELT",
        pic = mod.assets:path("assets/trainers/generated/blackbelt.png"),
        baseMoney = 25,

        parties = {
            {
                { level = 31, species = "MANKEY" },
                { level = 31, species = "MACHOKE" },
                { level = 31, species = "JABETTA" },
            },
            {
                { level = 32, species = "PRIMEAPE" },
                { level = 32, species = "CARAPTHOR" },
            },
            {
                { level = 35, species = "GORILLAIMO" },
            },
            {
                { level = 33, species = "MACHOP" },
                { level = 33, species = "POLIWRATH" },
            },
            {
                { level = 40, species = "MAROWAK" },
                { level = 40, species = "GOLEM" },
            },
            {
                { level = 43, species = "GUARDIA" },
            },
            {
                { level = 38, species = "CACTORMUS" },
                { level = 38, species = "DUGTRIO" },
                { level = 38, species = "STEELIX" },
            },
            {
                { level = 46, species = "POLIWRATH" },
                { level = 46, species = "MACHOKE" },
                { level = 46, species = "HITMONTOP" },
            },
            {
                { level = 57, species = "HITMONTOP" },
                { level = 57, species = "JABETTA" },
                { level = 57, species = "GORILLAIMO" },
                { level = 57, species = "POLIWRATH" },
                { level = 57, species = "CARAPTHOR" },
                { level = 57, species = "MACHAMP" },
            },
        },

        aiMods = { 1 },
    })
end
