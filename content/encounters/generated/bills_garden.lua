return function(mod)
    mod.content.encounters:override("BILLS_GARDEN", {
        grass = {
            rate = 10,
            slots = {
                { level = 48, species = "EEVEE" },
                { level = 48, species = "PIKACHU" },
                { level = 50, species = "CHARMANDER" },
                { level = 50, species = "BULBASAUR" },
                { level = 51, species = "HITMONLEE" },
                { level = 51, species = "HITMONCHAN" },
                { level = 51, species = "HITMONTOP" },
                { level = 52, species = "ELECTRODE_H" },
                { level = 52, species = "ARCANINE_H" },
                { level = 53, species = "DECILLA" },
            },
        },

        water = {
            rate = 10,
            slots = {
                { level = 44, species = "KABUTO" },
                { level = 44, species = "OMANYTE" },
                { level = 50, species = "SQUIRTLE" },
                { level = 45, species = "KABUTO" },
                { level = 45, species = "OMANYTE" },
                { level = 52, species = "WARTORTLE" },
                { level = 52, species = "LAPRAS" },
                { level = 53, species = "AERODACTYL" },
                { level = 53, species = "LAPRAS" },
                { level = 55, species = "TOTARTLE" },
            },
        },
    })
end
