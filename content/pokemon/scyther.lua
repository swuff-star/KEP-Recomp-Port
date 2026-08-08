return function(mod)
    mod.content.pokemon:patch("SCYTHER", {
        evolutions = {
            __append = {
                {
                    method = "ITEM",
                    item = "BLK_AUGURITE",
                    species = "KLEAVOR",
                },
            },
        },
    })
end