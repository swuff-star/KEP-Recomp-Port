return function(mod)
    mod.content.trainers:patch("OPP_CHANNELER", {
        name = "CHANNELER",
        pic = mod.assets:path("assets/trainers/generated/channeler.png"),
        baseMoney = 30,

        parties = {
            {
                { level = 22, species = "GASTLY" },
            },
            {
                { level = 24, species = "GASTLY" },
            },
            {
                { level = 23, species = "GASTLY" },
                { level = 23, species = "GASTLY" },
            },
            {
                { level = 24, species = "GASTLY" },
            },
            {
                { level = 23, species = "VULPIII" },
                { level = 23, species = "GASTLY" },
            },
            {
                { level = 24, species = "VULPIX" },
            },
            {
                { level = 59, species = "MUK" },
                { level = 59, species = "GUARDIA" },
                { level = 59, species = "ANNIHILAPE" },
                { level = 59, species = "HYPNO" },
                { level = 59, species = "NINETALES" },
                { level = 59, species = "GENGAR" },
            },
            {
                { level = 25, species = "GASTLY" },
                { level = 25, species = "HAUNTER" },
            },
            {
                { level = 24, species = "GASTLY" },
            },
            {
                { level = 23, species = "GASTLY" },
                { level = 23, species = "GASTLY" },
            },
            {
                { level = 24, species = "GASTLY" },
            },
            {
                { level = 22, species = "GASTLY" },
            },
            {
                { level = 24, species = "GASTLY" },
            },
            {
                { level = 23, species = "HAUNTER" },
            },
            {
                { level = 24, species = "GASTLY" },
            },
            {
                { level = 22, species = "GASTLY" },
            },
            {
                { level = 24, species = "GASTLY" },
            },
            {
                { level = 22, species = "HAUNTER" },
            },
            {
                { level = 22, species = "GASTLY" },
                { level = 22, species = "CUBONE" },
                { level = 22, species = "HAUNTER" },
            },
            {
                { level = 24, species = "GASTLY" },
                { level = 24, species = "VULPIX" },
            },
            {
                { level = 30, species = "HAUNTER" },
            },
            {
                { level = 34, species = "DROWZEE" },
                { level = 34, species = "HYPNO" },
            },
            {
                { level = 38, species = "ESPEON" },
            },
            {
                { level = 33, species = "JYNX" },
                { level = 33, species = "EXEGGCUTE" },
                { level = 33, species = "KADABRA" },
            },
        },

        aiMods = { 1 },
    })
end
