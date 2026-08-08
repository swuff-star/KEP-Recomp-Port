return function(mod)
    mod.content.trainers:patch("OPP_LASS", {
        name = "LASS",
        pic = mod.assets:path("assets/trainers/generated/lass.png"),
        baseMoney = 15,

        parties = {
            {
                { level = 9, species = "PIDGEY" },
                { level = 9, species = "CLEFAIRY" },
            },
            {
                { level = 10, species = "RATTATA" },
                { level = 10, species = "NIDORAN_M" },
            },
            {
                { level = 14, species = "JIGGLYPUFF" },
            },
            {
                { level = 37, species = "PARASECT" },
                { level = 37, species = "CLEFABLE" },
                { level = 37, species = "GOROTORA" },
            },
            {
                { level = 11, species = "ODDISH" },
                { level = 11, species = "BELLSPROUT" },
            },
            {
                { level = 14, species = "CLEFAIRY" },
            },
            {
                { level = 16, species = "KOTORA" },
                { level = 16, species = "PIKACHU" },
            },
            {
                { level = 16, species = "PIDGEY" },
                { level = 16, species = "NIDORAN_F" },
            },
            {
                { level = 15, species = "NIDORAN_M" },
                { level = 15, species = "NIDORAN_F" },
            },
            {
                { level = 13, species = "ODDISH" },
                { level = 13, species = "PIDGEY" },
                { level = 13, species = "BULBASAUR" },
            },
            {
                { level = 18, species = "PIDGEY" },
                { level = 18, species = "NIDORAN_F" },
            },
            {
                { level = 18, species = "RATTATA" },
                { level = 18, species = "PIKACHU" },
            },
            {
                { level = 23, species = "NIDORAN_F" },
                { level = 23, species = "NIDORINA" },
            },
            {
                { level = 24, species = "JIGGLYPUFF" },
                { level = 24, species = "MEOWTH" },
                { level = 24, species = "IVYSAUR" },
            },
            {
                { level = 19, species = "PIDGEY" },
                { level = 19, species = "RATTATA" },
                { level = 19, species = "NIDORAN_M" },
                { level = 19, species = "MEOWTH" },
                { level = 19, species = "PIKACHU" },
            },
            {
                { level = 22, species = "JIGGLYPUFF" },
                { level = 22, species = "CLEFAIRY" },
            },
            {
                { level = 23, species = "LEAFEON" },
            },
            {
                { level = 23, species = "ODDISH" },
                { level = 23, species = "GLOOM" },
            },
            {
                { level = 57, species = "PERSIAN" },
                { level = 57, species = "CLEFABLE" },
                { level = 57, species = "VILEPLUME" },
                { level = 57, species = "WIGGLYTUFF" },
                { level = 57, species = "POLITOED" },
                { level = 57, species = "NIDOQUEEN" },
            },
        },

        aiMods = { 1 },
    })
end
