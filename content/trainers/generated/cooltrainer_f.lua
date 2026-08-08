return function(mod)
    mod.content.trainers:patch("OPP_COOLTRAINER_F", {
        name = "COOLTRAINER♀",
        pic = mod.assets:path("assets/trainers/generated/cooltrainer_f.png"),
        baseMoney = 35,

        parties = {
            {
                { level = 24, species = "CACTORMUS" },
                { level = 24, species = "GLOOM" },
            },
            {
                { level = 49, species = "BELLIGNAN" },
                { level = 49, species = "VICTREEBEL" },
            },
            {
                { level = 47, species = "PARASECT" },
                { level = 47, species = "DEWGONG" },
                { level = 47, species = "CHANSEY" },
            },
            {
                { level = 60, species = "CLEFABLE" },
                { level = 60, species = "GENGAR" },
                { level = 60, species = "NINETALES" },
                { level = 60, species = "LEAFEON" },
                { level = 60, species = "GLACEON" },
                { level = 60, species = "BLASTOISE" },
            },
            {
                { level = 48, species = "PERSIAN" },
                { level = 48, species = "NINETALES" },
                { level = 48, species = "BELLOSSOM" },
            },
            {
                { level = 60, species = "BLASTOISE" },
                { level = 60, species = "VENUSAUR" },
                { level = 60, species = "CLEFABLE" },
                { level = 60, species = "ESPEON" },
            },
        },

        aiMods = { 1, 3, 4 },
    })
end
