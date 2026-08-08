return function(mod)
    mod.content.encounters:override("ROUTE_23", {
        grass = {
            rate = 10,
            slots = {
                { level = 40, species = "ARBOK" },
                { level = 40, species = "SANDSLASH" },
                { level = 38, species = "FEAROW" },
                { level = 39, species = "EXEGGCUTE" },
                { level = 38, species = "EXEGGCUTE" },
                { level = 40, species = "PRIMEAPE" },
                { level = 38, species = "NIDORINO" },
                { level = 38, species = "NIDORINA" },
                { level = 40, species = "FEAROW" },
                { level = 41, species = "PRIMEAPE" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
