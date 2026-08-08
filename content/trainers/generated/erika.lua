return function(mod)
    mod.content.trainers:patch("OPP_ERIKA", {
        name = "ERIKA",
        pic = mod.assets:path("assets/trainers/generated/erika.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 11, species = "BELLSPROUT" },
                { level = 12, species = "ODDISH" },
                { level = 14, species = "TANGELA" },
            },
            {
                { level = 19, species = "BELLSPROUT" },
                { level = 18, species = "TOEDSCOOL" },
                { level = 19, species = "ODDISH" },
                { level = 21, species = "TANGELA" },
            },
            {
                { level = 22, species = "BELLSPROUT" },
                { level = 21, species = "PARAS" },
                { level = 21, species = "TOEDSCOOL" },
                { level = 23, species = "GLOOM" },
                { level = 25, species = "TANGELA" },
            },
            {
                { level = 29, species = "WEEPINBELL" },
                { level = 28, species = "PARASECT" },
                { level = 28, species = "CACTORMUS" },
                { level = 29, species = "TANGELA" },
                { level = 31, species = "BELLOSSOM" },
            },
            {
                { level = 38, species = "VICTREEBEL" },
                { level = 37, species = "PARASECT" },
                { level = 37, species = "CACTORMUS" },
                { level = 38, species = "TANGELA" },
                { level = 40, species = "BELLOSSOM" },
            },
            {
                { level = 41, species = "VICTREEBEL" },
                { level = 40, species = "PARASECT" },
                { level = 40, species = "CACTORMUS" },
                { level = 41, species = "BELLOSSOM" },
                { level = 43, species = "TANGROWTH" },
            },
            {
                { level = 45, species = "VICTREEBEL" },
                { level = 44, species = "PARASECT" },
                { level = 44, species = "CACTORMUS" },
                { level = 45, species = "BELLOSSOM" },
                { level = 47, species = "TANGROWTH" },
            },
            {
                { level = 57, species = "VICTREEBEL" },
                { level = 56, species = "PARASECT" },
                { level = 56, species = "CACTORMUS" },
                { level = 57, species = "BELLOSSOM" },
                { level = 57, species = "LEAFEON" },
                { level = 60, species = "TANGROWTH" },
            },
            {
                { level = 67, species = "BELLOSSOM" },
                { level = 67, species = "TOEDSCRUEL" },
                { level = 66, species = "ELECTRODE_H" },
                { level = 66, species = "LEAFEON" },
                { level = 67, species = "VENUSAUR" },
                { level = 70, species = "TANGROWTH" },
            },
        },

        aiMods = { 1, 3, 4 },
    })
end
