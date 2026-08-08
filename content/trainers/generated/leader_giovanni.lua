return function(mod)
    mod.content.trainers:register("OPP_LEADER_GIOVANNI", {
        id = "OPP_LEADER_GIOVANNI",
        name = "GIOVANNI",
        pic = mod.assets:path("assets/trainers/generated/leader_giovanni.png"),
        baseMoney = 99,

        parties = {
            {
                { level = 47, species = "TRAMPEL" },
                { level = 46, species = "DUGTRIO" },
                { level = 46, species = "GUARDIA" },
                { level = 48, species = "NIDOQUEEN" },
                { level = 48, species = "NIDOKING" },
                { level = 50, species = "RHYPERIOR" },
            },
        },

        aiMods = { 1, 2, 3, 4 },
        aiClass = "OPP_SABRINA",
    })
end
