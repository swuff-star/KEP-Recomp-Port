return function(mod)
    mod.content.encounters:override("ROUTE_7", {
        grass = {
            rate = 15,
            slots = {
                { level = 19, species = "PIDGEOTTO" },
                { level = 19, species = "MEOWTH" },
                { level = 20, species = "MEOWTH" },
                { level = 20, species = "PIDGEOTTO" },
                { level = 19, species = "SANDSHREW" },
                { level = 18, species = "KOLTA" },
                { level = 18, species = "SANDSHREW" },
                { level = 19, species = "KOLTA" },
                { level = 19, species = "VULPIX" },
                { level = 20, species = "VULPIX" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
