return function(mod)
    mod.content.encounters:override("CHAMPIONS_ROOM", {
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
