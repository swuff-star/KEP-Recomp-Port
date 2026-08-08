return function(mod)
    mod.content.encounters:override("ROUTE_4", {
        grass = {
            rate = 20,
            slots = {
                { level = 11, species = "RATTATA" },
                { level = 11, species = "PIDGEY" },
                { level = 11, species = "MANKEY" },
                { level = 12, species = "RATTATA" },
                { level = 10, species = "EKANS" },
                { level = 11, species = "EKANS" },
                { level = 11, species = "VULPIII" },
                { level = 12, species = "VULPIII" },
                { level = 8, species = "JIGGLYPUFF" },
                { level = 10, species = "JIGGLYPUFF" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
