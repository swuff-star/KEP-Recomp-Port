return function(mod)
    mod.content.encounters:override("CELESTE_HILL", {
        grass = {
            rate = 10,
            slots = {
                { level = 47, species = "FARFETCHD" },
                { level = 47, species = "NIDORINO" },
                { level = 48, species = "FARFETCHD" },
                { level = 47, species = "NIDORINA" },
                { level = 47, species = "NIDORINA" },
                { level = 49, species = "LUXWAN" },
                { level = 49, species = "BUU" },
                { level = 49, species = "WIGGLYTUFF" },
                { level = 48, species = "BALUMBA" },
                { level = 50, species = "DRAGONAIR" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
