return function(mod)
    mod.content.trainers:patch("OPP_JR_TRAINER_M", {
        name = "JR.TRAINER♂",
        pic = mod.assets:path("assets/trainers/generated/jr_trainer_m.png"),
        baseMoney = 20,

        parties = {
            {
                { level = 11, species = "GEODUDE" },
                { level = 11, species = "SANDSHREW" },
            },
            {
                { level = 14, species = "RATTATA" },
                { level = 14, species = "EKANS" },
            },
            {
                { level = 18, species = "MANKEY" },
            },
            {
                { level = 16, species = "WEEPINBELL" },
            },
            {
                { level = 16, species = "SPEAROW" },
                { level = 16, species = "RATICATE" },
            },
            {
                { level = 56, species = "DUGTRIO" },
                { level = 56, species = "ANNIHILAPE" },
                { level = 56, species = "SANDSLASH" },
                { level = 56, species = "GOLEM" },
                { level = 56, species = "CROBAT" },
                { level = 56, species = "ARCANINE" },
            },
            {
                { level = 21, species = "GROWLITHE" },
                { level = 21, species = "CHARMANDER" },
            },
            {
                { level = 19, species = "RATTATA" },
                { level = 19, species = "DIGLETT" },
                { level = 19, species = "EKANS" },
                { level = 19, species = "SANDSHREW" },
            },
            {
                { level = 29, species = "NIDORAN_M" },
                { level = 29, species = "NIDORINO" },
            },
        },

        aiMods = { 1 },
    })
end
