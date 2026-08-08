return function(mod)
    mod.content.trainers:register("OPP_JESSIE_JAMES", {
        id = "OPP_JESSIE_JAMES",
        name = "JESSIE&JAMES",
        pic = mod.assets:path("assets/trainers/generated/jessie_james.png"),
        baseMoney = 50,

        parties = {
            {
                { level = 17, species = "MEOWTH" },
                { level = 14, species = "EKANS" },
                { level = 14, species = "KOFFING" },
            },
            {
                { level = 30, species = "MEOWTH" },
                { level = 26, species = "EKANS" },
                { level = 24, species = "LICKITUNG" },
                { level = 26, species = "KOFFING" },
            },
            {
                { level = 34, species = "MEOWTH" },
                { level = 30, species = "ARBOK" },
                { level = 27, species = "LICKITUNG" },
                { level = 30, species = "WEEZING" },
                { level = 27, species = "VICTREEBEL" },
            },
            {
                { level = 42, species = "MEOWTH" },
                { level = 38, species = "ARBOK" },
                { level = 36, species = "LICKILICKY" },
                { level = 38, species = "WEEZING" },
                { level = 36, species = "VICTREEBEL" },
                { level = 35, species = "GYARADOS" },
            },
            {
                { level = 72, species = "MEOWTH" },
                { level = 67, species = "ARBOK" },
                { level = 65, species = "LICKILICKY" },
                { level = 67, species = "WEEZING" },
                { level = 65, species = "VICTREEBEL" },
                { level = 63, species = "GYARADOS" },
            },
        },

        aiMods = { 1, 3 },
    })
end
