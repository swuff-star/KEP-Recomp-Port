return function(mod)
    mod.content.trainers:register("OPP_KOICHI", {
        id = "OPP_KOICHI",
        name = "KOICHI",
        pic = mod.assets:path("assets/trainers/generated/koichi.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 13, species = "HITMONLEE" },
                { level = 13, species = "HITMONCHAN" },
                { level = 13, species = "HITMONTOP" },
            },
            {
                { level = 17, species = "MACHOP" },
                { level = 20, species = "HITMONLEE" },
                { level = 20, species = "HITMONCHAN" },
                { level = 20, species = "HITMONTOP" },
            },
            {
                { level = 20, species = "MACHOP" },
                { level = 20, species = "MANKEY" },
                { level = 24, species = "HITMONLEE" },
                { level = 24, species = "HITMONCHAN" },
                { level = 24, species = "HITMONTOP" },
            },
            {
                { level = 27, species = "MACHOKE" },
                { level = 27, species = "MANKEY" },
                { level = 30, species = "HITMONLEE" },
                { level = 30, species = "HITMONCHAN" },
                { level = 30, species = "HITMONTOP" },
            },
            {
                { level = 36, species = "MACHOKE" },
                { level = 36, species = "PRIMEAPE" },
                { level = 39, species = "HITMONLEE" },
                { level = 39, species = "HITMONCHAN" },
                { level = 39, species = "HITMONTOP" },
            },
            {
                { level = 39, species = "MACHOKE" },
                { level = 39, species = "PRIMEAPE" },
                { level = 42, species = "HITMONLEE" },
                { level = 42, species = "HITMONCHAN" },
                { level = 42, species = "HITMONTOP" },
            },
            {
                { level = 43, species = "MACHAMP" },
                { level = 43, species = "PRIMEAPE" },
                { level = 46, species = "HITMONLEE" },
                { level = 46, species = "HITMONCHAN" },
                { level = 46, species = "HITMONTOP" },
            },
            {
                { level = 46, species = "MACHAMP" },
                { level = 46, species = "CARAPTHOR" },
                { level = 46, species = "ANNIHILAPE" },
                { level = 49, species = "HITMONLEE" },
                { level = 49, species = "HITMONCHAN" },
                { level = 49, species = "HITMONTOP" },
            },
            {
                { level = 50, species = "MACHAMP" },
                { level = 50, species = "CARAPTHOR" },
                { level = 50, species = "ANNIHILAPE" },
                { level = 53, species = "HITMONLEE" },
                { level = 53, species = "HITMONCHAN" },
                { level = 53, species = "HITMONTOP" },
            },
            {
                { level = 60, species = "MACHAMP" },
                { level = 60, species = "ANNIHILAPE" },
                { level = 60, species = "TAUROS_P" },
                { level = 65, species = "HITMONLEE" },
                { level = 65, species = "HITMONCHAN" },
                { level = 65, species = "HITMONTOP" },
            },
        },

        aiMods = { 1, 2, 3 },
        aiClass = "OPP_BLACKBELT",
    })
end
