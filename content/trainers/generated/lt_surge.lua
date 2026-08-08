return function(mod)
    mod.content.trainers:patch("OPP_LT_SURGE", {
        name = "LT.SURGE",
        pic = mod.assets:path("assets/trainers/generated/lt_surge.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 11, species = "VOLTORB" },
                { level = 12, species = "PIKACHU" },
                { level = 14, species = "GAOTORA" },
            },
            {
                { level = 19, species = "VOLTORB" },
                { level = 18, species = "PIKACHU" },
                { level = 19, species = "GAOTORA" },
                { level = 21, species = "ELECTABUZZ" },
            },
            {
                { level = 22, species = "VOLTORB" },
                { level = 21, species = "GAOTORA" },
                { level = 21, species = "MAGNETITE" },
                { level = 23, species = "ELECTABUZZ" },
                { level = 25, species = "RAICHU" },
            },
            {
                { level = 29, species = "VOLTORB" },
                { level = 28, species = "GAOTORA" },
                { level = 28, species = "MAGNETITE" },
                { level = 29, species = "ELECTABUZZ" },
                { level = 31, species = "RAICHU" },
            },
            {
                { level = 38, species = "ELECTRODE" },
                { level = 37, species = "GOROTORA" },
                { level = 37, species = "MAGNETON" },
                { level = 38, species = "ELECTABUZZ" },
                { level = 40, species = "GOROCHU" },
            },
            {
                { level = 41, species = "ELECTRODE" },
                { level = 40, species = "GOROTORA" },
                { level = 40, species = "MAGNETON" },
                { level = 41, species = "ELECTABUZZ" },
                { level = 43, species = "GOROCHU" },
            },
            {
                { level = 45, species = "ELECTRODE" },
                { level = 44, species = "GOROTORA" },
                { level = 44, species = "MAGNEZONE" },
                { level = 45, species = "ELECTIVIRE" },
                { level = 47, species = "GOROCHU" },
            },
            {
                { level = 57, species = "ELECTRODE" },
                { level = 56, species = "GOROTORA" },
                { level = 56, species = "MAGNEZONE" },
                { level = 57, species = "ELECTIVIRE" },
                { level = 57, species = "JOLTEON" },
                { level = 60, species = "GOROCHU" },
            },
            {
                { level = 67, species = "GOROTORA" },
                { level = 67, species = "MAGNEZONE" },
                { level = 66, species = "GOLEM_A" },
                { level = 67, species = "ELECTIVIRE" },
                { level = 66, species = "JOLTEON" },
                { level = 70, species = "GOROCHU" },
            },
        },

        aiMods = { 1, 2, 3 },
    })
end
