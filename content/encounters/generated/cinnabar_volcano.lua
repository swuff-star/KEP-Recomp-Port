return function(mod)
    mod.content.encounters:override("CINNABAR_VOLCANO", {
        grass = {
            rate = 10,
            slots = {
                { level = 35, species = "VULPIX" },
                { level = 35, species = "PONYTA" },
                { level = 35, species = "GROWLITHE" },
                { level = 36, species = "PONYTA" },
                { level = 36, species = "GROWLITHE" },
                { level = 36, species = "ONIX" },
                { level = 37, species = "ONIX" },
                { level = 36, species = "MAGMAR" },
                { level = 38, species = "MAGMAR" },
                { level = 40, species = "RHYDON" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
