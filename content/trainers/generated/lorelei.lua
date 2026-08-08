return function(mod)
    mod.content.trainers:patch("OPP_LORELEI", {
        name = "LORELEI",
        pic = mod.assets:path("assets/trainers/generated/lorelei.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 53, species = "DEWGONG" },
                { level = 54, species = "CLOYSTER" },
                { level = 53, species = "BUU" },
                { level = 55, species = "JYNX" },
                { level = 55, species = "GLACEON" },
                { level = 57, species = "LAPRAS" },
            },
            {
                { level = 73, species = "DEWGONG" },
                { level = 74, species = "CLOYSTER" },
                { level = 73, species = "NINETALES_A" },
                { level = 74, species = "JYNX" },
                { level = 74, species = "GLACEON" },
                { level = 76, species = "LAPRAS" },
            },
        },

        aiMods = { 1, 2, 3, 4 },
    })
end
