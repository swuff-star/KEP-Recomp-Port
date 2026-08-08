return function(mod)
    mod.content.trainers:patch("OPP_SABRINA", {
        name = "SABRINA",
        pic = mod.assets:path("assets/trainers/generated/sabrina.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 11, species = "SLOWPOKE" },
                { level = 12, species = "DROWZEE" },
                { level = 14, species = "KADABRA" },
            },
            {
                { level = 19, species = "SLOWPOKE" },
                { level = 18, species = "DROWZEE" },
                { level = 19, species = "KADABRA" },
                { level = 21, species = "MR_MIME" },
            },
            {
                { level = 22, species = "SLOWPOKE" },
                { level = 21, species = "DROWZEE" },
                { level = 21, species = "EXEGGCUTE" },
                { level = 23, species = "KADABRA" },
                { level = 25, species = "MR_MIME" },
            },
            {
                { level = 29, species = "SLOWPOKE" },
                { level = 28, species = "MR_MIME" },
                { level = 28, species = "EXEGGCUTE" },
                { level = 29, species = "HYPNO" },
                { level = 31, species = "ALAKAZAM" },
            },
            {
                { level = 38, species = "ESPEON" },
                { level = 37, species = "MR_MIME" },
                { level = 37, species = "SLOWKING" },
                { level = 38, species = "HYPNO" },
                { level = 40, species = "ALAKAZAM" },
            },
            {
                { level = 41, species = "ESPEON" },
                { level = 40, species = "MR_MIME" },
                { level = 40, species = "SLOWKING" },
                { level = 41, species = "HYPNO" },
                { level = 43, species = "ALAKAZAM" },
            },
            {
                { level = 45, species = "ESPEON" },
                { level = 44, species = "MR_MIME" },
                { level = 44, species = "SLOWKING" },
                { level = 45, species = "HYPNO" },
                { level = 47, species = "ALAKAZAM" },
            },
            {
                { level = 57, species = "ESPEON" },
                { level = 56, species = "MR_MIME" },
                { level = 56, species = "SLOWKING" },
                { level = 57, species = "JYNX" },
                { level = 57, species = "HYPNO" },
                { level = 60, species = "ALAKAZAM" },
            },
            {
                { level = 67, species = "JYNX" },
                { level = 67, species = "SLOWKING" },
                { level = 66, species = "RAPIDASH_G" },
                { level = 67, species = "HYPNO" },
                { level = 66, species = "ESPEON" },
                { level = 70, species = "ALAKAZAM" },
            },
        },

        aiMods = { 1, 3, 4 },
    })
end
