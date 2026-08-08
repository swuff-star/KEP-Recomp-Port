return function(mod)
    mod.content.trainers:patch("OPP_BIRD_KEEPER", {
        name = "BIRD KEEPER",
        pic = mod.assets:path("assets/trainers/generated/bird_keeper.png"),
        baseMoney = 25,

        parties = {
            {
                { level = 29, species = "PIDGEY" },
                { level = 29, species = "PIDGEOTTO" },
            },
            {
                { level = 25, species = "FARFETCHD" },
                { level = 25, species = "PIDGEY" },
                { level = 25, species = "SPEAROW" },
            },
            {
                { level = 26, species = "PIDGEY" },
                { level = 26, species = "PIDGEOTTO" },
                { level = 26, species = "SPEAROW" },
                { level = 26, species = "FEAROW" },
            },
            {
                { level = 33, species = "FEAROW" },
            },
            {
                { level = 29, species = "SPEAROW" },
                { level = 29, species = "FEAROW" },
            },
            {
                { level = 26, species = "PIDGEOTTO" },
                { level = 26, species = "DODUO" },
                { level = 26, species = "PIDGEOTTO" },
            },
            {
                { level = 28, species = "FARFETCHD" },
                { level = 28, species = "DODRIO" },
            },
            {
                { level = 29, species = "SPEAROW" },
                { level = 29, species = "FEAROW" },
            },
            {
                { level = 34, species = "DODRIO" },
            },
            {
                { level = 26, species = "SPEAROW" },
                { level = 26, species = "DODUO" },
                { level = 26, species = "FEAROW" },
                { level = 26, species = "DODUO" },
            },
            {
                { level = 30, species = "FEAROW" },
                { level = 30, species = "LUXWAN" },
                { level = 30, species = "PIDGEOTTO" },
            },
            {
                { level = 57, species = "PIDGEOT" },
                { level = 57, species = "SIRFETCHD" },
                { level = 57, species = "DODRIO" },
                { level = 57, species = "AERODACTYL" },
            },
            {
                { level = 56, species = "PIDGEOT" },
                { level = 56, species = "FEAROW" },
                { level = 56, species = "DODRIO" },
                { level = 56, species = "SIRFETCHD" },
                { level = 56, species = "LUXWAN" },
                { level = 56, species = "AERODACTYL" },
            },
            {
                { level = 28, species = "PIDGEY" },
                { level = 28, species = "DODUO" },
                { level = 28, species = "PIDGEOTTO" },
            },
            {
                { level = 26, species = "PIDGEY" },
                { level = 26, species = "SPEAROW" },
                { level = 26, species = "PIDGEY" },
                { level = 26, species = "FEAROW" },
            },
            {
                { level = 29, species = "PIDGEOTTO" },
                { level = 29, species = "FEAROW" },
            },
            {
                { level = 28, species = "SPEAROW" },
                { level = 28, species = "DODUO" },
                { level = 28, species = "FEAROW" },
            },
        },

        aiMods = { 1 },
    })
end
