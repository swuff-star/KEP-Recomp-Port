return function(mod)
    mod.content.trainers:patch("OPP_COOLTRAINER_M", {
        name = "COOLTRAINER♂",
        pic = mod.assets:path("assets/trainers/generated/cooltrainer_m.png"),
        baseMoney = 35,

        parties = {
            {
                { level = 39, species = "MAROWAK" },
                { level = 39, species = "NIDOKING" },
            },
            {
                { level = 50, species = "EXEGGUTOR" },
                { level = 50, species = "CLOYSTER" },
                { level = 50, species = "ARCANINE" },
            },
            {
                { level = 50, species = "KINGLER" },
                { level = 50, species = "TENTACRUEL" },
                { level = 50, species = "BLASTOISE" },
            },
            {
                { level = 60, species = "GOROCHU" },
                { level = 60, species = "VENUSAUR" },
                { level = 60, species = "ESPEON" },
                { level = 60, species = "CHARIZARD" },
                { level = 60, species = "SNORLAX" },
                { level = 60, species = "TOTARTLE" },
            },
            {
                { level = 48, species = "FLAREON" },
                { level = 48, species = "VAPOREON" },
                { level = 48, species = "JOLTEON" },
                { level = 48, species = "LEAFEON" },
            },
            {
                { level = 44, species = "IVYSAUR" },
                { level = 44, species = "WARTORTLE" },
                { level = 44, species = "CHARMELEON" },
            },
            {
                { level = 49, species = "NIDOKING" },
            },
            {
                { level = 44, species = "KINGLER" },
                { level = 44, species = "CLOYSTER" },
            },
            {
                { level = 39, species = "SANDSLASH" },
                { level = 39, species = "DUGTRIO" },
            },
            {
                { level = 43, species = "NIDOKING" },
            },
            {
                { level = 64, species = "KANGASKHAN" },
                { level = 64, species = "FLAREON" },
                { level = 64, species = "VAPOREON" },
                { level = 64, species = "JOLTEON" },
                { level = 64, species = "MACHAMP" },
                { level = 64, species = "DRAGONITE" },
            },
            {
                { level = 60, species = "RATICATE" },
                { level = 60, species = "POLITOED" },
                { level = 60, species = "BUTTERFREE" },
                { level = 60, species = "WIGGLYTUFF" },
                { level = 60, species = "MACHAMP" },
                { level = 60, species = "RHYDON" },
            },
            {
                { level = 57, species = "PIDGEOT" },
                { level = 57, species = "VILEPLUME" },
                { level = 57, species = "GUARDIA" },
                { level = 57, species = "RAPIDASH" },
                { level = 57, species = "SLOWBRO" },
                { level = 57, species = "JOLTEON" },
            },
            {
                { level = 60, species = "EXEGGUTOR" },
                { level = 60, species = "SLOWBRO" },
                { level = 60, species = "JYNX" },
            },
        },

        aiMods = { 1, 3, 4 },
    })
end
