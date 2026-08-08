return function(mod)
    mod.content.trainers:patch("OPP_GIOVANNI", {
        name = "GIOVANNI",
        pic = mod.assets:path("assets/trainers/generated/giovanni.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 28, species = "BEEDRILL" },
                { level = 30, species = "RHYHORN" },
                { level = 30, species = "KANGASKHAN" },
                { level = 32, species = "PERSIAN" },
            },
            {
                { level = 38, species = "BEEDRILL" },
                { level = 39, species = "RHYDON" },
                { level = 38, species = "KANGASKHAN" },
                { level = 40, species = "NIDOKING" },
                { level = 40, species = "NIDOQUEEN" },
                { level = 42, species = "PERSIAN" },
            },
        },

        aiMods = { 1, 2, 3 },
    })
end
