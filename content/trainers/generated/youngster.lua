return function(mod)
    mod.content.trainers:patch("OPP_YOUNGSTER", {
        name = "YOUNGSTER",
        pic = mod.assets:path("assets/trainers/generated/youngster.png"),
        baseMoney = 15,

        parties = {
            {
                { level = 11, species = "RATTATA" },
                { level = 11, species = "EKANS" },
            },
            {
                { level = 14, species = "SPEAROW" },
            },
            {
                { level = 10, species = "RATTATA" },
                { level = 10, species = "SPEAROW" },
                { level = 10, species = "BITTYBAT" },
            },
            {
                { level = 14, species = "RATTATA" },
                { level = 14, species = "EKANS" },
                { level = 14, species = "ZUBAT" },
            },
            {
                { level = 15, species = "RATTATA" },
                { level = 15, species = "SPEAROW" },
            },
            {
                { level = 15, species = "SHELLDER" },
                { level = 15, species = "SLOWPOKE" },
            },
            {
                { level = 14, species = "EKANS" },
                { level = 14, species = "SANDSHREW" },
            },
            {
                { level = 21, species = "NIDORINO" },
            },
            {
                { level = 21, species = "EKANS" },
            },
            {
                { level = 19, species = "SANDSHREW" },
                { level = 19, species = "ZUBAT" },
            },
            {
                { level = 17, species = "RATTATA" },
                { level = 17, species = "SPEAROW" },
                { level = 17, species = "RATICATE" },
            },
            {
                { level = 18, species = "NIDORAN_M" },
                { level = 18, species = "NIDORINO" },
            },
            {
                { level = 56, species = "RATICATE" },
                { level = 56, species = "ARBOK" },
                { level = 56, species = "SLOWBRO" },
                { level = 56, species = "FEAROW" },
                { level = 56, species = "NIDOKING" },
                { level = 56, species = "VENUSAUR" },
            },
        },

        aiMods = { 1 },
    })
end
