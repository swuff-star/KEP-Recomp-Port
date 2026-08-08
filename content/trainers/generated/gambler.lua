return function(mod)
    mod.content.trainers:patch("OPP_GAMBLER", {
        name = "GAMBLER",
        pic = mod.assets:path("assets/trainers/generated/gambler.png"),
        baseMoney = 70,

        parties = {
            {
                { level = 18, species = "POLIWAG" },
                { level = 18, species = "HORSEA" },
            },
            {
                { level = 18, species = "BELLSPROUT" },
                { level = 18, species = "ODDISH" },
            },
            {
                { level = 18, species = "VOLTORB" },
                { level = 18, species = "MAGNEMITE" },
            },
            {
                { level = 18, species = "GROWLITHE" },
                { level = 18, species = "VULPIX" },
            },
            {
                { level = 22, species = "POLIWAG" },
                { level = 22, species = "RIBBITO" },
                { level = 22, species = "POLIWHIRL" },
            },
            {
                { level = 59, species = "SEAKING" },
                { level = 59, species = "RHYDON" },
                { level = 59, species = "CACTORMUS" },
                { level = 59, species = "DEWGONG" },
                { level = 59, species = "GOLEM" },
                { level = 59, species = "POLITOED" },
            },
            {
                { level = 24, species = "CACTORMUS" },
            },
        },

        aiMods = { 1 },
    })
end
