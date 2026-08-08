return function(mod)
    mod.content.trainers:patch("OPP_BRUNO", {
        name = "BRUNO",
        pic = mod.assets:path("assets/trainers/generated/bruno.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 54, species = "JABETTA" },
                { level = 55, species = "STEELIX" },
                { level = 54, species = "GORILLAIMO" },
                { level = 56, species = "HITMONCHAN" },
                { level = 56, species = "HITMONLEE" },
                { level = 58, species = "MACHAMP" },
            },
            {
                { level = 75, species = "JABETTA" },
                { level = 76, species = "STEELIX" },
                { level = 75, species = "SIRFETCHD" },
                { level = 76, species = "GORILLAIMO" },
                { level = 76, species = "HITMONTOP" },
                { level = 78, species = "MACHAMP" },
            },
        },

        aiMods = { 1, 2, 3 },
    })
end
