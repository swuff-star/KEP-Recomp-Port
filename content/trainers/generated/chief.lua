return function(mod)
    mod.content.trainers:patch("OPP_CHIEF", {
        name = "CHIEF",
        pic = mod.assets:path("assets/trainers/generated/chief.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 71, species = "ELECTRODE" },
                { level = 70, species = "LAPRAS" },
                { level = 71, species = "SCIZOR" },
                { level = 70, species = "GENGAR" },
                { level = 73, species = "PORYGONZ" },
                { level = 77, species = "OMEGADGE" },
            },
            {
                { level = 82, species = "ELECTRODE" },
                { level = 81, species = "LAPRAS" },
                { level = 82, species = "SCIZOR" },
                { level = 81, species = "GENGAR" },
                { level = 84, species = "PORYGONZ" },
                { level = 87, species = "OMEGADGE" },
            },
        },

        aiMods = { 1, 2, 3, 4 },
    })
end
