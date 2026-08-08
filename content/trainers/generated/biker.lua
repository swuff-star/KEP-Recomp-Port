return function(mod)
    mod.content.trainers:patch("OPP_BIKER", {
        name = "BIKER",
        pic = mod.assets:path("assets/trainers/generated/biker.png"),
        baseMoney = 20,

        parties = {
            {
                { level = 28, species = "KOFFING" },
                { level = 28, species = "GASTLY" },
            },
            {
                { level = 29, species = "GRIMER" },
                { level = 29, species = "KOFFING" },
            },
            {
                { level = 25, species = "KOFFING" },
                { level = 25, species = "GRIMER" },
                { level = 25, species = "WEEZING" },
            },
            {
                { level = 28, species = "GASTLY" },
                { level = 28, species = "GRIMER" },
                { level = 28, species = "WEEZING" },
            },
            {
                { level = 29, species = "GRIMER" },
                { level = 29, species = "KOFFING" },
            },
            {
                { level = 33, species = "WEEZING" },
            },
            {
                { level = 26, species = "CHARMELEON" },
            },
            {
                { level = 28, species = "WEEZING" },
                { level = 28, species = "KOFFING" },
                { level = 28, species = "WEEZING" },
            },
            {
                { level = 33, species = "FLAREON" },
            },
            {
                { level = 29, species = "VOLTORB" },
                { level = 29, species = "GAOTORA" },
            },
            {
                { level = 29, species = "WEEZING" },
                { level = 29, species = "MUK" },
            },
            {
                { level = 25, species = "CHARMANDER" },
                { level = 25, species = "WEEZING" },
                { level = 25, species = "HORSEA" },
            },
            {
                { level = 26, species = "KOFFING" },
                { level = 26, species = "KOFFING" },
                { level = 26, species = "GRIMER" },
                { level = 26, species = "KOFFING" },
            },
            {
                { level = 28, species = "GRIMER" },
                { level = 28, species = "GRIMER" },
                { level = 28, species = "SEADRA" },
            },
            {
                { level = 29, species = "MAGMAR" },
            },
            {
                { level = 59, species = "GOROTORA" },
                { level = 59, species = "MUK_A" },
                { level = 59, species = "WEEZING" },
                { level = 59, species = "FLAREON" },
                { level = 59, species = "KINGDRA" },
                { level = 59, species = "CHARIZARD" },
            },
        },

        aiMods = { 1 },
    })
end
