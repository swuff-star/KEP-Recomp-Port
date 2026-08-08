return function(mod)
    mod.content.trainers:patch("OPP_TAMER", {
        name = "TAMER",
        pic = mod.assets:path("assets/trainers/generated/tamer.png"),
        baseMoney = 40,

        parties = {
            {
                { level = 34, species = "NIDOQUEEN" },
                { level = 34, species = "ARBOK" },
            },
            {
                { level = 33, species = "ARBOK" },
                { level = 33, species = "NIDORINA" },
                { level = 33, species = "NIDOKING" },
            },
            {
                { level = 43, species = "RHYDON" },
            },
            {
                { level = 39, species = "SANDSLASH" },
                { level = 39, species = "TRAMPEL" },
            },
            {
                { level = 47, species = "KANGASKHAN" },
                { level = 47, species = "TAUROS" },
                { level = 47, species = "GOLDUCK" },
                { level = 47, species = "PRIMEAPE" },
            },
            {
                { level = 60, species = "TAUROS" },
                { level = 60, species = "ARBOK" },
                { level = 60, species = "KANGASKHAN" },
                { level = 60, species = "ANNIHILAPE" },
                { level = 60, species = "TRAMPEL" },
                { level = 60, species = "KANGASKHAN" },
            },
        },

        aiMods = { 1 },
    })
end
