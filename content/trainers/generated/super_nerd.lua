return function(mod)
    mod.content.trainers:patch("OPP_SUPER_NERD", {
        name = "SUPER NERD",
        pic = mod.assets:path("assets/trainers/generated/super_nerd.png"),
        baseMoney = 25,

        parties = {
            {
                { level = 11, species = "MAGNEMITE" },
                { level = 11, species = "VOLTORB" },
            },
            {
                { level = 12, species = "GRIMER" },
                { level = 12, species = "VOLTORB" },
                { level = 12, species = "KOFFING" },
            },
            {
                { level = 20, species = "GRIMER" },
                { level = 20, species = "KOFFING" },
                { level = 20, species = "KOFFING" },
                { level = 20, species = "MAGNEMITE" },
            },
            {
                { level = 22, species = "VOLTORB" },
                { level = 22, species = "KOFFING" },
                { level = 22, species = "MAGNETITE" },
            },
            {
                { level = 26, species = "ELECTRODE" },
            },
            {
                { level = 30, species = "PORYGON" },
            },
            {
                { level = 25, species = "GRIMER" },
                { level = 25, species = "KOFFING" },
                { level = 25, species = "KABUTO" },
                { level = 25, species = "OMANYTE" },
            },
            {
                { level = 57, species = "ELECTRODE" },
                { level = 57, species = "MUK" },
                { level = 57, species = "KABUTOPS" },
                { level = 57, species = "OMASTAR" },
                { level = 57, species = "MAGNEZONE" },
                { level = 57, species = "PORYGON2" },
            },
            {
                { level = 36, species = "VULPIX" },
                { level = 36, species = "NINETALES" },
                { level = 36, species = "CHARIZARD" },
            },
            {
                { level = 34, species = "PONYTA" },
                { level = 34, species = "CHARMANDER" },
                { level = 34, species = "RAPIDASH" },
                { level = 34, species = "ARCANINE" },
            },
            {
                { level = 41, species = "FLAREON" },
            },
            {
                { level = 37, species = "CHARMELEON" },
                { level = 37, species = "MAGMAR" },
            },
            {
                { level = 48, species = "PORYGON2" },
            },
            {
                { level = 42, species = "MUK" },
                { level = 42, species = "WEEZING" },
                { level = 42, species = "KABUTOPS" },
                { level = 42, species = "OMASTAR" },
                { level = 42, species = "AERODACTYL" },
            },
        },

        aiMods = { 1, 2 },
    })
end
