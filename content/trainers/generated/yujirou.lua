return function(mod)
    mod.content.trainers:register("OPP_YUJIROU", {
        id = "OPP_YUJIROU",
        name = "YUJIROU",
        pic = mod.assets:path("assets/trainers/generated/yujirou.png"),
        baseMoney = 35,

        parties = {
            {
                { level = 5, species = "COINPUR" },
                { level = 6, species = "RATTATA" },
                { level = 8, species = "LICKITUNG" },
            },
            {
                { level = 11, species = "COINPUR" },
                { level = 12, species = "RATTATA" },
                { level = 14, species = "LICKITUNG" },
            },
            {
                { level = 19, species = "MEOWTH" },
                { level = 18, species = "RATICATE" },
                { level = 19, species = "FARFETCHD" },
                { level = 21, species = "LICKITUNG" },
            },
            {
                { level = 22, species = "MEOWTH" },
                { level = 21, species = "RATICATE" },
                { level = 21, species = "JIGGLYPUFF" },
                { level = 23, species = "FARFETCHD" },
                { level = 25, species = "LICKITUNG" },
            },
            {
                { level = 29, species = "PERSIAN" },
                { level = 28, species = "RATICATE" },
                { level = 28, species = "JIGGLYPUFF" },
                { level = 29, species = "LUXWAN" },
                { level = 31, species = "LICKITUNG" },
            },
            {
                { level = 38, species = "PERSIAN" },
                { level = 37, species = "RATICATE" },
                { level = 37, species = "CHANSEY" },
                { level = 38, species = "LUXWAN" },
                { level = 40, species = "LICKILICKY" },
            },
            {
                { level = 41, species = "PERSIAN" },
                { level = 40, species = "TAUROS" },
                { level = 40, species = "CHANSEY" },
                { level = 41, species = "LUXWAN" },
                { level = 43, species = "LICKILICKY" },
            },
            {
                { level = 45, species = "PERSIAN" },
                { level = 44, species = "TAUROS" },
                { level = 44, species = "CHANSEY" },
                { level = 45, species = "LUXWAN" },
                { level = 47, species = "LICKILICKY" },
            },
            {
                { level = 47, species = "PERSIAN" },
                { level = 46, species = "TAUROS" },
                { level = 46, species = "BLISSEY" },
                { level = 48, species = "LUXWAN" },
                { level = 48, species = "SNORLAX" },
                { level = 50, species = "LICKILICKY" },
            },
            {
                { level = 61, species = "PERSIAN" },
                { level = 60, species = "TAUROS" },
                { level = 60, species = "BLISSEY" },
                { level = 61, species = "LUXWAN" },
                { level = 61, species = "SNORLAX" },
                { level = 64, species = "LICKILICKY" },
            },
        },

        aiMods = { 1, 3 },
    })
end
