return function(mod)
    mod.content.encounters:override("MT_MOON_B2F", {
        grass = {
            rate = 10,
            slots = {
                { level = 9, species = "BITTYBAT" },
                { level = 9, species = "GEODUDE" },
                { level = 10, species = "BITTYBAT" },
                { level = 10, species = "GEODUDE" },
                { level = 10, species = "SANDSHREW" },
                { level = 10, species = "PARAS" },
                { level = 11, species = "SANDSHREW" },
                { level = 10, species = "CLEFAIRY" },
                { level = 12, species = "SANDSHREW" },
                { level = 12, species = "ZUBAT" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
