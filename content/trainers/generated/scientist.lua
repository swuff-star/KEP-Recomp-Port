return function(mod)
    mod.content.trainers:patch("OPP_SCIENTIST", {
        name = "SCIENTIST",
        pic = mod.assets:path("assets/trainers/generated/scientist.png"),
        baseMoney = 50,

        parties = {
            {
                { level = 59, species = "MAGNEZONE" },
                { level = 59, species = "TRICULES" },
                { level = 59, species = "PORYGON2" },
                { level = 59, species = "MIMMEO" },
                { level = 59, species = "GAVILLAIN" },
                { level = 59, species = "WEEZING" },
            },
            {
                { level = 26, species = "GRIMER" },
                { level = 26, species = "WEEZING" },
                { level = 26, species = "KOFFING" },
                { level = 26, species = "WEEZING" },
            },
            {
                { level = 28, species = "MAGNETITE" },
                { level = 28, species = "VOLTORB" },
                { level = 28, species = "MAGNETON" },
            },
            {
                { level = 29, species = "ELECTRODE" },
                { level = 29, species = "MUK" },
            },
            {
                { level = 36, species = "VOLTORB" },
                { level = 36, species = "ELECTRODE" },
                { level = 36, species = "KOFFING" },
            },
            {
                { level = 26, species = "MAGNEMITE" },
                { level = 26, species = "VOLTORB" },
                { level = 26, species = "WEEZING" },
                { level = 26, species = "MAGNETITE" },
            },
            {
                { level = 25, species = "VOLTORB" },
                { level = 25, species = "KOFFING" },
                { level = 25, species = "MAGNETITE" },
                { level = 25, species = "MAGNEMITE" },
                { level = 25, species = "KOFFING" },
            },
            {
                { level = 29, species = "ELECTRODE" },
                { level = 29, species = "PORYGON" },
            },
            {
                { level = 37, species = "GAVILLAIN" },
                { level = 37, species = "WEEZING" },
            },
            {
                { level = 28, species = "VOLTORB" },
                { level = 28, species = "KOFFING" },
                { level = 28, species = "MAGNETON" },
            },
            {
                { level = 29, species = "MAGNETITE" },
                { level = 29, species = "KOFFING" },
            },
            {
                { level = 33, species = "MAGNETITE" },
                { level = 33, species = "MAGNETON" },
                { level = 33, species = "DITTO" },
            },
            {
                { level = 34, species = "MAGNETITE" },
                { level = 34, species = "ELECTRODE" },
            },
        },

        aiMods = { 1, 2, 4 },
    })
end
