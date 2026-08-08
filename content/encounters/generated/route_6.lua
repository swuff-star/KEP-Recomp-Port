return function(mod)
    mod.content.encounters:override("ROUTE_6", {
        grass = {
            rate = 15,
            slots = {
                { level = 13, species = "RATTATA" },
                { level = 13, species = "PIDGEY" },
                { level = 15, species = "PIDGEOTTO" },
                { level = 15, species = "MEOWTH" },
                { level = 16, species = "MEOWTH" },
                { level = 15, species = "GROWLITHE" },
                { level = 16, species = "GROWLITHE" },
                { level = 16, species = "JIGGLYPUFF" },
                { level = 14, species = "GROWLITHE" },
                { level = 16, species = "ABRA" },
            },
        },

        water = {
            rate = 10,
            slots = {
                { level = 12, species = "PSYDUCK" },
                { level = 12, species = "SLOWPOKE" },
                { level = 15, species = "PSYDUCK" },
                { level = 15, species = "SLOWPOKE" },
                { level = 15, species = "GOLDEEN" },
                { level = 15, species = "WEIRDUCK" },
                { level = 15, species = "WEIRDUCK" },
                { level = 16, species = "SEAKING" },
                { level = 15, species = "GOLDUCK" },
                { level = 20, species = "GOLDUCK" },
            },
        },
    })
end
