return function(mod)
    mod.content.trainers:patch("OPP_JUGGLER", {
        name = "JUGGLER",
        pic = mod.assets:path("assets/trainers/generated/juggler.png"),
        baseMoney = 35,

        parties = {
            {
                { level = 29, species = "ELECTRODE" },
                { level = 29, species = "KADABRA" },
                { level = 29, species = "MR_MIME" },
            },
            {
                { level = 45, species = "ESPEON" },
                { level = 45, species = "UMBREON" },
                { level = 45, species = "HYPNO" },
                { level = 45, species = "MR_MIME" },
            },
            {
                { level = 31, species = "BEEDRILL" },
                { level = 31, species = "HAUNTER" },
                { level = 31, species = "VILEPLUME" },
            },
            {
                { level = 34, species = "GOLBAT" },
                { level = 34, species = "TENTACRUEL" },
            },
            {
                { level = 48, species = "ELECTRODE" },
                { level = 48, species = "HYPNO" },
                { level = 48, species = "MR_MIME" },
            },
            {
                { level = 60, species = "TENTACRUEL" },
                { level = 60, species = "MR_MIME" },
                { level = 60, species = "ALAKAZAM" },
                { level = 60, species = "ELECTRODE" },
                { level = 60, species = "BELLIGNAN" },
                { level = 60, species = "SLOWKING_G" },
            },
            {
                { level = 36, species = "UMBREON" },
            },
            {
                { level = 34, species = "WEEPINBELL" },
                { level = 34, species = "BELLIGNAN" },
            },
        },

        aiMods = { 1 },
    })
end
