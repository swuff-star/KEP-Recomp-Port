return function(mod)
    mod.content.trainers:patch("OPP_BEAUTY", {
        name = "BEAUTY",
        pic = mod.assets:path("assets/trainers/generated/beauty.png"),
        baseMoney = 70,

        parties = {
            {
                { level = 21, species = "ODDISH" },
                { level = 21, species = "BELLSPROUT" },
                { level = 21, species = "WEEPINBELL" },
            },
            {
                { level = 24, species = "TOEDSCOOL" },
                { level = 24, species = "GLOOM" },
            },
            {
                { level = 26, species = "RAMOOSE" },
            },
            {
                { level = 27, species = "RATTATA" },
                { level = 27, species = "PIKACHU" },
                { level = 27, species = "JIGGLYPUFF" },
            },
            {
                { level = 29, species = "CLEFAIRY" },
                { level = 29, species = "MEOWTH" },
            },
            {
                { level = 35, species = "SEAKING" },
            },
            {
                { level = 30, species = "SHELLDER" },
                { level = 30, species = "DISTURBAN" },
                { level = 30, species = "CLOYSTER" },
            },
            {
                { level = 31, species = "POLIWAG" },
                { level = 31, species = "SEAKING" },
            },
            {
                { level = 29, species = "PERSIAN" },
            },
            {
                { level = 29, species = "BULBASAUR" },
                { level = 29, species = "IVYSAUR" },
            },
            {
                { level = 57, species = "PERSIAN_A" },
                { level = 57, species = "VICTREEBEL" },
                { level = 57, species = "WIGGLYTUFF" },
                { level = 57, species = "SHARPOON" },
                { level = 57, species = "CLOYSTER" },
                { level = 57, species = "SYLVEON" },
            },
            {
                { level = 27, species = "POLIWAG" },
                { level = 27, species = "GOLDEEN" },
                { level = 27, species = "SEAKING" },
            },
            {
                { level = 30, species = "BLASTYKE" },
                { level = 30, species = "GOLDUCK" },
            },
            {
                { level = 29, species = "STARYU" },
                { level = 29, species = "WEIRDUCK" },
                { level = 29, species = "SEAKING" },
            },
            {
                { level = 30, species = "KINGDRA" },
            },
            {
                { level = 58, species = "PERSIAN" },
                { level = 58, species = "VENUSAUR" },
                { level = 58, species = "KINGDRA" },
                { level = 58, species = "SYLVEON" },
                { level = 58, species = "CLOYSTER" },
            },
            {
                { level = 60, species = "BALUMBA" },
                { level = 60, species = "NINETALES_A" },
                { level = 60, species = "PENDRAKEN" },
                { level = 60, species = "SYLVEON" },
            },
            {
                { level = 62, species = "PERSIAN" },
                { level = 62, species = "PERSIAN_A" },
                { level = 62, species = "PERRSERKER" },
            },
            {
                { level = 63, species = "MUK" },
                { level = 63, species = "ARBOK" },
                { level = 63, species = "VILEPLUME" },
            },
        },

        aiMods = { 1, 3 },
    })
end
