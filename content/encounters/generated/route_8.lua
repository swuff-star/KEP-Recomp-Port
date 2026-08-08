return function(mod)
    mod.content.encounters:override("ROUTE_8", {
        grass = {
            rate = 15,
            slots = {
                { level = 20, species = "PIDGEOTTO" },
                { level = 18, species = "MANKEY" },
                { level = 17, species = "RATTATA" },
                { level = 16, species = "GROWLITHE" },
                { level = 18, species = "KOLTA" },
                { level = 20, species = "SANDSHREW" },
                { level = 19, species = "GROWLITHE" },
                { level = 17, species = "VULPIX" },
                { level = 18, species = "VULPIX" },
                { level = 18, species = "KADABRA" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
