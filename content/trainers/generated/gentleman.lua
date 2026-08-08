return function(mod)
    mod.content.trainers:patch("OPP_GENTLEMAN", {
        name = "GENTLEMAN",
        pic = mod.assets:path("assets/trainers/generated/gentleman.png"),
        baseMoney = 70,

        parties = {
            {
                { level = 18, species = "GROWLITHE" },
                { level = 18, species = "CARAPTHOR" },
            },
            {
                { level = 19, species = "NIDORINO" },
                { level = 19, species = "NIDORINA" },
            },
            {
                { level = 23, species = "PIKACHU" },
            },
            {
                { level = 58, species = "ARCANINE" },
                { level = 58, species = "NIDOQUEEN" },
                { level = 58, species = "MR_RIME" },
                { level = 58, species = "FEAROW" },
                { level = 58, species = "CARAPTHOR" },
                { level = 58, species = "RAPIDASH" },
            },
            {
                { level = 17, species = "KOLTA" },
                { level = 17, species = "GROWLITHE" },
            },
            {
                { level = 56, species = "NIDOKING" },
                { level = 56, species = "GOLDUCK" },
                { level = 56, species = "GUARDIA" },
                { level = 56, species = "DODRIO" },
                { level = 56, species = "BEEDRILL" },
            },
            {
                { level = 57, species = "FEAROW" },
                { level = 57, species = "RAPIDASH" },
                { level = 57, species = "GOROCHU" },
                { level = 57, species = "ALAKAZAM" },
                { level = 57, species = "SYLVEON" },
            },
        },

        aiMods = { 1, 2 },
    })
end
