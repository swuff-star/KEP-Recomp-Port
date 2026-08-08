return function(mod)
    mod.content.encounters:override("BRUNSWICK_GROTTO", {
        grass = {
            rate = 10,
            slots = {
                { level = 45, species = "BEEDRILL" },
                { level = 45, species = "BUTTERFREE" },
                { level = 47, species = "CARAPTHOR" },
                { level = 45, species = "SQUEAMATA" },
                { level = 46, species = "PARASECT" },
                { level = 47, species = "PARASECT" },
                { level = 50, species = "SCYTHER" },
                { level = 50, species = "PINSIR" },
                { level = 48, species = "GORILLAIMO" },
                { level = 50, species = "MINISTARE" },
            },
        },

        water = {
            rate = 0,
            slots = {},
        },
    })
end
