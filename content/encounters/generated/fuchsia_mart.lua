return function(mod)
    mod.content.encounters:override("FUCHSIA_MART", {
        grass = {
            rate = 0,
            slots = {},
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
