return function(mod)
    mod.content.encounters:patch("ROUTE_1", {
        grass = {
            slots = {
                __prepend = {
                    {
                        species = "GOROCHU",
                        level = 5,
                    },
                },
            },
        },
    })
end