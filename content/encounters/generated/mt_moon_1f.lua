return function(mod)
    mod.content.encounters:override("MT_MOON_1F", {
        grass = {
            rate = 10,
            slots = {
                { level = 8, species = "BITTYBAT" },
                { level = 7, species = "BITTYBAT" },
                { level = 9, species = "BITTYBAT" },
                { level = 8, species = "GEODUDE" },
                { level = 6, species = "BITTYBAT" },
                { level = 9, species = "SANDSHREW" },
                { level = 9, species = "GEODUDE" },
                { level = 8, species = "PARAS" },
                { level = 10, species = "BITTYBAT" },
                { level = 8, species = "CLEFAIRY" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
