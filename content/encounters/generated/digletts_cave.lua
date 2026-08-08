return function(mod)
    mod.content.encounters:override("DIGLETTS_CAVE", {
        grass = {
            rate = 15,
            slots = {
                { level = 18, species = "DIGLETT" },
                { level = 19, species = "DIGLETT" },
                { level = 20, species = "ONIX" },
                { level = 20, species = "DIGLETT" },
                { level = 17, species = "DIGLETT" },
                { level = 16, species = "DIGLETT" },
                { level = 21, species = "DIGLETT" },
                { level = 22, species = "DIGLETT" },
                { level = 28, species = "DUGTRIO" },
                { level = 30, species = "DUGTRIO" },
            },
        },

        water = {
            rate = 5,
            slots = {
                { level = 18, species = "WIGLETT" },
                { level = 19, species = "WIGLETT" },
                { level = 17, species = "WIGLETT" },
                { level = 20, species = "WIGLETT" },
                { level = 16, species = "WIGLETT" },
                { level = 15, species = "WIGLETT" },
                { level = 21, species = "WIGLETT" },
                { level = 22, species = "WIGLETT" },
                { level = 28, species = "WUGTRIO" },
                { level = 30, species = "WUGTRIO" },
            },
        },
    })
end
