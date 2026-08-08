return function(mod)
    mod.content.trainers:patch("OPP_PSYCHIC_TR", {
        name = "PSYCHIC",
        pic = mod.assets:path("assets/trainers/generated/psychic_tr.png"),
        baseMoney = 10,

        parties = {
            {
                { level = 31, species = "KADABRA" },
                { level = 31, species = "SLOWPOKE" },
                { level = 31, species = "MR_MIME" },
                { level = 31, species = "DROWZEE" },
            },
            {
                { level = 34, species = "MR_MIME" },
                { level = 34, species = "KADABRA" },
            },
            {
                { level = 33, species = "SLOWKING" },
                { level = 33, species = "SLOWBRO" },
            },
            {
                { level = 38, species = "JYNX" },
            },
            {
                { level = 60, species = "SLOWBRO" },
                { level = 60, species = "EXEGGUTOR" },
                { level = 60, species = "STARMIE" },
                { level = 60, species = "MR_RIME" },
                { level = 60, species = "ESPEON" },
                { level = 60, species = "ALAKAZAM" },
            },
        },

        aiMods = { 1, 2 },
    })
end
