return function(mod)
    mod.content.trainers:patch("OPP_POKEMANIAC", {
        name = "POKéMANIAC",
        pic = mod.assets:path("assets/trainers/generated/pokemaniac.png"),
        baseMoney = 50,

        parties = {
            {
                { level = 30, species = "RHYHORN" },
                { level = 30, species = "LICKITUNG" },
            },
            {
                { level = 21, species = "CHARMELEON" },
                { level = 21, species = "CUBONE" },
            },
            {
                { level = 20, species = "SLOWPOKE" },
                { level = 20, species = "SQUEAMATA" },
                { level = 20, species = "RHYHORN" },
            },
            {
                { level = 22, species = "CHARMANDER" },
                { level = 22, species = "CUBONE" },
            },
            {
                { level = 23, species = "GAVILLAIN" },
            },
            {
                { level = 47, species = "MINISTARE" },
                { level = 47, species = "LAPRAS" },
                { level = 47, species = "LICKILICKY" },
                { level = 47, species = "RHYDON" },
            },
            {
                { level = 23, species = "CUBONE" },
                { level = 23, species = "SLOWPOKE" },
            },
            {
                { level = 57, species = "GUARDIA" },
                { level = 57, species = "SLOWKING" },
                { level = 57, species = "CHARIZARD" },
                { level = 57, species = "STEELIX" },
                { level = 57, species = "LICKILICKY" },
                { level = 57, species = "RHYDON" },
            },
        },

        aiMods = { 1, 2, 3 },
    })
end
