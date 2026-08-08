return function(mod)
    mod.content.trainers:patch("OPP_BUG_CATCHER", {
        name = "BUG CATCHER",
        pic = mod.assets:path("assets/trainers/generated/bug_catcher.png"),
        baseMoney = 10,

        parties = {
            {
                { level = 6, species = "WEEDLE" },
                { level = 6, species = "CATERPIE" },
            },
            {
                { level = 7, species = "CATERPIE" },
                { level = 7, species = "KAKUNA" },
                { level = 7, species = "GENTLARVA" },
            },
            {
                { level = 9, species = "VENONAT" },
            },
            {
                { level = 10, species = "GENTLARVA" },
                { level = 10, species = "PUPAL" },
            },
            {
                { level = 10, species = "WEEDLE" },
                { level = 10, species = "KAKUNA" },
            },
            {
                { level = 10, species = "CATERPIE" },
                { level = 10, species = "METAPOD" },
            },
            {
                { level = 12, species = "PARAS" },
            },
            {
                { level = 10, species = "PUPAL" },
                { level = 10, species = "PARAS" },
            },
            {
                { level = 14, species = "GENTLARVA" },
                { level = 14, species = "WEEDLE" },
            },
            {
                { level = 16, species = "VENONAT" },
                { level = 16, species = "PARAS" },
            },
            {
                { level = 17, species = "BUTTERFREE" },
            },
            {
                { level = 56, species = "SCIZOR" },
                { level = 56, species = "CARAPTHOR" },
                { level = 56, species = "PARASECT" },
                { level = 56, species = "VENOMOTH" },
                { level = 56, species = "TRICULES" },
                { level = 56, species = "KLEAVOR" },
            },
            {
                { level = 19, species = "BUTTERFREE" },
                { level = 19, species = "BEEDRILL" },
            },
            {
                { level = 20, species = "PUPAL" },
                { level = 20, species = "VENONAT" },
                { level = 20, species = "BEEDRILL" },
            },
        },

        aiMods = { 1 },
    })
end
