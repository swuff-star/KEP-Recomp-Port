return function(mod)
    mod.content.trainers:register("OPP_JACK", {
        id = "OPP_JACK",
        name = "JACKY",
        pic = mod.assets:path("assets/trainers/generated/jack.png"),
        baseMoney = 50,

        parties = {
            {
                { level = 25, species = "MANKEY" },
                { level = 25, species = "PORYGON" },
                { level = 25, species = "HITMONCHAN" },
                { level = 25, species = "SCYTHER" },
            },
        },

        aiMods = { 1, 2, 3, 4 },
        aiClass = "OPP_BLACKBELT",
    })
end
