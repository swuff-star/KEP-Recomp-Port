return function(mod)
    mod.content.encounters:override("GIOVANNIS_ROOM", {
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
