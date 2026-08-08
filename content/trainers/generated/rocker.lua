return function(mod)
    mod.content.trainers:patch("OPP_ROCKER", {
        name = "ROCKER",
        pic = mod.assets:path("assets/trainers/generated/rocker.png"),
        baseMoney = 25,

        parties = {
            {
                { level = 20, species = "VOLTORB" },
                { level = 20, species = "MAGNEMITE" },
                { level = 20, species = "KOTORA" },
            },
            {
                { level = 29, species = "VOLTORB" },
                { level = 29, species = "ELECTRODE" },
            },
            {
                { level = 58, species = "GAVILLAIN" },
                { level = 58, species = "GAWARHED" },
                { level = 58, species = "MAGNEZONE" },
                { level = 58, species = "GOLEM_A" },
                { level = 58, species = "GOROCHU" },
                { level = 58, species = "JOLTEON" },
            },
        },

        aiMods = { 1, 3 },
    })
end
