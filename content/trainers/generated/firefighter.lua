return function(mod)
    mod.content.trainers:register("OPP_FIREFIGHTER", {
        id = "OPP_FIREFIGHTER",
        name = "FIREFIGHTER",
        pic = mod.assets:path("assets/trainers/generated/firefighter.png"),
        baseMoney = 25,

        parties = {
            {
                { level = 15, species = "POLIWAG" },
                { level = 15, species = "CHEEP" },
                { level = 15, species = "SQUIRTLE" },
            },
            {
                { level = 58, species = "BLASTOISE" },
                { level = 58, species = "OMASTAR" },
                { level = 58, species = "SANDSLASH" },
                { level = 58, species = "KINGDRA" },
                { level = 58, species = "GUARDIA" },
                { level = 58, species = "PENDRAKEN" },
            },
            {
                { level = 36, species = "WARTORTLE" },
                { level = 36, species = "MAROWAK" },
                { level = 36, species = "POLITOED" },
            },
            {
                { level = 35, species = "SANDSLASH" },
                { level = 35, species = "OMANYTE" },
                { level = 35, species = "SEAKING" },
                { level = 35, species = "CROAKOZUNA" },
            },
            {
                { level = 38, species = "SEADRA" },
                { level = 38, species = "BLASTOISE" },
            },
        },

        aiMods = { 1, 3 },
    })
end
