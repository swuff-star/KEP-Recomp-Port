return function(mod)
    mod.content.trainers:patch("OPP_PROF_OAK", {
        name = "PROF.OAK",
        pic = mod.assets:path("assets/trainers/generated/prof_oak.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 61, species = "TAUROS" },
                { level = 62, species = "GYARADOS" },
                { level = 63, species = "ARCANINE" },
                { level = 63, species = "EXEGGUTOR" },
                { level = 64, species = "NIDOKING" },
                { level = 65, species = "TOTARTLE" },
            },
            {
                { level = 61, species = "TAUROS" },
                { level = 62, species = "EXEGGUTOR" },
                { level = 63, species = "GYARADOS" },
                { level = 63, species = "ARCANINE" },
                { level = 64, species = "NIDOKING" },
                { level = 65, species = "VENUSAUR" },
            },
            {
                { level = 61, species = "TAUROS" },
                { level = 62, species = "ARCANINE" },
                { level = 63, species = "EXEGGUTOR" },
                { level = 63, species = "GYARADOS" },
                { level = 64, species = "NIDOKING" },
                { level = 65, species = "CHARIZARD" },
            },
            {
                { level = 61, species = "TAUROS" },
                { level = 62, species = "MAGNEZONE" },
                { level = 62, species = "NIDOKING" },
                { level = 65, species = "VENUSAUR" },
                { level = 65, species = "CHARIZARD" },
                { level = 65, species = "TOTARTLE" },
            },
            {
                { level = 61, species = "TAUROS" },
                { level = 62, species = "MAGNEZONE" },
                { level = 62, species = "NIDOKING" },
                { level = 65, species = "VENUSAUR" },
                { level = 65, species = "CHARIZARD" },
                { level = 65, species = "TOTARTLE" },
            },
        },

        aiMods = { 1, 2, 3, 4 },
    })
end
