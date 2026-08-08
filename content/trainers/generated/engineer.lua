return function(mod)
    mod.content.trainers:patch("OPP_ENGINEER", {
        name = "ENGINEER",
        pic = mod.assets:path("assets/trainers/generated/engineer.png"),
        baseMoney = 50,

        parties = {
            {
                { level = 36, species = "GOLEM" },
            },
            {
                { level = 21, species = "KOTORA" },
                { level = 21, species = "VOLTORB" },
            },
            {
                { level = 18, species = "MAGNEMITE" },
                { level = 18, species = "MAGNEMITE" },
                { level = 18, species = "PIKACHU" },
            },
            {
                { level = 58, species = "ELECTRODE" },
                { level = 58, species = "SANDSLASH_A" },
                { level = 58, species = "ELECTIVIRE" },
                { level = 58, species = "GOROTORA" },
                { level = 58, species = "PERRSERKER" },
                { level = 58, species = "SCIZOR" },
            },
            {
                { level = 52, species = "GOLEM_A" },
            },
        },

        aiMods = { 1, 3 },
    })
end
