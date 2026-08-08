return function(mod)
    mod.content.trainers:patch("OPP_BLAINE", {
        name = "BLAINE",
        pic = mod.assets:path("assets/trainers/generated/blaine.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 11, species = "VULPIX" },
                { level = 12, species = "GROWLITHE" },
                { level = 14, species = "PONYTA" },
            },
            {
                { level = 19, species = "PONYTA" },
                { level = 18, species = "VULPIX" },
                { level = 19, species = "GROWLITHE" },
                { level = 21, species = "MAGMAR" },
            },
            {
                { level = 22, species = "PONYTA" },
                { level = 21, species = "VULPIX" },
                { level = 21, species = "GROWLITHE" },
                { level = 23, species = "CHARMELEON" },
                { level = 25, species = "MAGMAR" },
            },
            {
                { level = 29, species = "PONYTA" },
                { level = 28, species = "VULPIX" },
                { level = 28, species = "GROWLITHE" },
                { level = 29, species = "CHARMELEON" },
                { level = 31, species = "MAGMAR" },
            },
            {
                { level = 38, species = "PONYTA" },
                { level = 37, species = "NINETALES" },
                { level = 37, species = "FLAREON" },
                { level = 38, species = "ARCANINE" },
                { level = 40, species = "MAGMORTAR" },
            },
            {
                { level = 41, species = "RAPIDASH" },
                { level = 40, species = "NINETALES" },
                { level = 40, species = "FLAREON" },
                { level = 41, species = "ARCANINE" },
                { level = 43, species = "MAGMORTAR" },
            },
            {
                { level = 45, species = "RAPIDASH" },
                { level = 44, species = "NINETALES" },
                { level = 44, species = "FLAREON" },
                { level = 45, species = "ARCANINE" },
                { level = 47, species = "MAGMORTAR" },
            },
            {
                { level = 57, species = "RAPIDASH" },
                { level = 56, species = "NINETALES" },
                { level = 56, species = "FLAREON" },
                { level = 57, species = "CHARIZARD" },
                { level = 57, species = "ARCANINE" },
                { level = 60, species = "MAGMORTAR" },
            },
            {
                { level = 67, species = "RAPIDASH" },
                { level = 67, species = "ARCANINE" },
                { level = 66, species = "TAUROS_PB" },
                { level = 66, species = "FLAREON" },
                { level = 67, species = "CHARIZARD" },
                { level = 70, species = "MAGMORTAR" },
            },
        },

        aiMods = { 1, 2, 3 },
    })
end
