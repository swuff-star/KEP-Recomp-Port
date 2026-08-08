return function(mod)
    mod.content.trainers:patch("OPP_SWIMMER", {
        name = "SWIMMER",
        pic = mod.assets:path("assets/trainers/generated/swimmer.png"),
        baseMoney = 15,

        parties = {
            {
                { level = 16, species = "HORSEA" },
                { level = 16, species = "SHELLDER" },
            },
            {
                { level = 30, species = "TENTACOOL" },
                { level = 30, species = "PENDRAKEN" },
            },
            {
                { level = 29, species = "GOLDEEN" },
                { level = 29, species = "HORSEA" },
                { level = 29, species = "STARYU" },
            },
            {
                { level = 30, species = "WEIRDUCK" },
                { level = 30, species = "POLIWHIRL" },
            },
            {
                { level = 27, species = "HORSEA" },
                { level = 27, species = "TENTACOOL" },
                { level = 27, species = "TENTACOOL" },
                { level = 27, species = "GOLDEEN" },
            },
            {
                { level = 29, species = "GOLDEEN" },
                { level = 29, species = "SEAKING" },
                { level = 29, species = "WEIRDUCK" },
            },
            {
                { level = 30, species = "WIGLETT" },
                { level = 30, species = "CLOYSTER" },
            },
            {
                { level = 27, species = "TENTACOOL" },
                { level = 27, species = "TENTACOOL" },
                { level = 27, species = "STARYU" },
                { level = 27, species = "HORSEA" },
                { level = 27, species = "TENTACRUEL" },
            },
            {
                { level = 31, species = "SHELLDER" },
                { level = 31, species = "CLOYSTER" },
            },
            {
                { level = 35, species = "STARYU" },
            },
            {
                { level = 28, species = "HORSEA" },
                { level = 28, species = "BLOTTLE" },
                { level = 28, species = "SEADRA" },
                { level = 28, species = "PENDRAKEN" },
            },
            {
                { level = 33, species = "SEADRA" },
                { level = 33, species = "TENTACRUEL" },
            },
            {
                { level = 37, species = "STARMIE" },
            },
            {
                { level = 33, species = "BLASTYKE" },
                { level = 33, species = "STARYU" },
                { level = 33, species = "WARTORTLE" },
            },
            {
                { level = 32, species = "POLIWHIRL" },
                { level = 32, species = "TENTACOOL" },
                { level = 32, species = "GOLDUCK" },
            },
            {
                { level = 60, species = "LAPRAS" },
                { level = 60, species = "PENDRAKEN" },
                { level = 60, species = "CLOYSTER" },
                { level = 60, species = "GOLDUCK" },
                { level = 60, species = "POLIWRATH" },
                { level = 60, species = "VAPOREON" },
            },
        },

        aiMods = { 1, 3 },
    })
end
