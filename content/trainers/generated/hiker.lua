return function(mod)
    mod.content.trainers:patch("OPP_HIKER", {
        name = "HIKER",
        pic = mod.assets:path("assets/trainers/generated/hiker.png"),
        baseMoney = 35,

        parties = {
            {
                { level = 10, species = "GEODUDE" },
                { level = 10, species = "GEODUDE" },
                { level = 10, species = "ONIX" },
            },
            {
                { level = 15, species = "MACHOP" },
                { level = 15, species = "GEODUDE" },
            },
            {
                { level = 13, species = "GEODUDE" },
                { level = 13, species = "ZUBAT" },
                { level = 13, species = "MACHOP" },
                { level = 13, species = "ZUBAT" },
            },
            {
                { level = 17, species = "ONIX" },
            },
            {
                { level = 21, species = "GEODUDE" },
                { level = 21, species = "ONIX" },
            },
            {
                { level = 20, species = "GEODUDE" },
                { level = 20, species = "MACHOP" },
                { level = 20, species = "DIGLETT" },
            },
            {
                { level = 21, species = "CUBONE" },
                { level = 21, species = "ONIX" },
            },
            {
                { level = 19, species = "ZUBAT" },
                { level = 19, species = "GRAVELER" },
            },
            {
                { level = 21, species = "GEODUDE" },
                { level = 21, species = "GEODUDE" },
                { level = 21, species = "GRAVELER" },
            },
            {
                { level = 24, species = "GOLBAT" },
            },
            {
                { level = 20, species = "MACHOP" },
                { level = 20, species = "RHYHORN" },
            },
            {
                { level = 19, species = "GEODUDE" },
                { level = 19, species = "MACHOP" },
                { level = 19, species = "RHYHORN" },
            },
            {
                { level = 20, species = "ZUBAT" },
                { level = 20, species = "DIGLETT" },
                { level = 20, species = "ONIX" },
            },
            {
                { level = 21, species = "GEODUDE" },
                { level = 21, species = "GRAVELER" },
            },
            {
                { level = 57, species = "STEELIX" },
                { level = 57, species = "GOLEM" },
                { level = 57, species = "MACHAMP" },
                { level = 57, species = "CROBAT" },
                { level = 57, species = "DUGTRIO" },
                { level = 57, species = "GUARDIA" },
            },
        },

        aiMods = { 1 },
    })
end
