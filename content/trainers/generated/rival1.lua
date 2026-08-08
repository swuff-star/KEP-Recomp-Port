return function(mod)
    mod.content.trainers:patch("OPP_RIVAL1", {
        name = "RIVAL1",
        pic = mod.assets:path("assets/trainers/generated/rival1.png"),
        baseMoney = 35,

        parties = {
            {
                { level = 5, species = "SQUIRTLE" },
            },
            {
                { level = 5, species = "BULBASAUR" },
            },
            {
                { level = 5, species = "CHARMANDER" },
            },
            {
                { level = 5, species = "EEVEE" },
            },
            {
                { level = 5, species = "PIKACHU" },
            },
            {
                { level = 8, species = "PIDGEY" },
                { level = 9, species = "SQUIRTLE" },
            },
            {
                { level = 8, species = "PIDGEY" },
                { level = 9, species = "BULBASAUR" },
            },
            {
                { level = 8, species = "PIDGEY" },
                { level = 9, species = "CHARMANDER" },
            },
            {
                { level = 8, species = "SPEAROW" },
                { level = 9, species = "EEVEE" },
            },
            {
                { level = 8, species = "SPEAROW" },
                { level = 9, species = "PIKACHU" },
            },
            {
                { level = 18, species = "PIDGEOTTO" },
                { level = 15, species = "ABRA" },
                { level = 15, species = "RATTATA" },
                { level = 18, species = "WARTORTLE" },
            },
            {
                { level = 18, species = "PIDGEOTTO" },
                { level = 15, species = "ABRA" },
                { level = 15, species = "RATTATA" },
                { level = 18, species = "IVYSAUR" },
            },
            {
                { level = 18, species = "PIDGEOTTO" },
                { level = 15, species = "ABRA" },
                { level = 15, species = "RATTATA" },
                { level = 18, species = "CHARMELEON" },
            },
            {
                { level = 18, species = "SPEAROW" },
                { level = 15, species = "RATTATA" },
                { level = 15, species = "SANDSHREW" },
                { level = 18, species = "EEVEE" },
            },
            {
                { level = 18, species = "SPEAROW" },
                { level = 15, species = "RATTATA" },
                { level = 15, species = "SANDSHREW" },
                { level = 18, species = "PIKACHU" },
            },
        },

        aiMods = { 1 },
    })
end
