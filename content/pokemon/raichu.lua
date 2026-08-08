return function(mod)
    mod.content.pokemon:patch("RAICHU", {
    evolutions = {
        __append = {
                {
                    method = "TRADE",
                    species = "GOROCHU",
                },
            },
        },
    })
end