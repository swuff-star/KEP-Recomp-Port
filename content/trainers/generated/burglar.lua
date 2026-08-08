return function(mod)
    mod.content.trainers:patch("OPP_BURGLAR", {
        name = "BURGLAR",
        pic = mod.assets:path("assets/trainers/generated/burglar.png"),
        baseMoney = 90,

        parties = {
            {
                { level = 59, species = "RAPIDASH" },
                { level = 59, species = "CROAKOZUNA" },
                { level = 59, species = "ARCANINE" },
                { level = 59, species = "UMBREON" },
                { level = 59, species = "WEEZING_G" },
                { level = 59, species = "MAGMORTAR" },
            },
            {
                { level = 33, species = "GROWLITHE" },
            },
            {
                { level = 28, species = "VULPIX" },
                { level = 28, species = "CHARMANDER" },
                { level = 28, species = "PONYTA" },
            },
            {
                { level = 36, species = "GROWLITHE" },
                { level = 36, species = "VULPIX" },
                { level = 36, species = "ARCANINE" },
            },
            {
                { level = 41, species = "RAPIDASH" },
            },
            {
                { level = 37, species = "VULPIX" },
                { level = 37, species = "NINETALES" },
            },
            {
                { level = 34, species = "CHARMANDER" },
                { level = 34, species = "CHARMELEON" },
            },
            {
                { level = 38, species = "KOLTA" },
                { level = 38, species = "NINETALES" },
            },
            {
                { level = 34, species = "GROWLITHE" },
                { level = 34, species = "PONYTA" },
            },
        },

        aiMods = { 1, 3 },
    })
end
