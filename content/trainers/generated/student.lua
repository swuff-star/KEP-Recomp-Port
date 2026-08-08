return function(mod)
    mod.content.trainers:register("OPP_STUDENT", {
        id = "OPP_STUDENT",
        name = "STUDENT",
        pic = mod.assets:path("assets/trainers/generated/student.png"),
        baseMoney = 10,

        parties = {
            {
                { level = 4, species = "PIDGEY" },
                { level = 4, species = "RATTATA" },
            },
            {
                { level = 6, species = "CLEFAIRY" },
            },
            {
                { level = 56, species = "WIGGLYTUFF" },
                { level = 56, species = "PIDGEOT" },
                { level = 56, species = "TRAMPEL" },
                { level = 56, species = "CLEFABLE" },
                { level = 56, species = "KANGASKHAN" },
                { level = 56, species = "RAMOOSE" },
            },
            {
                { level = 22, species = "BULBASAUR" },
                { level = 22, species = "CHARMANDER" },
                { level = 22, species = "SQUIRTLE" },
            },
            {
                { level = 40, species = "VENUSAUR" },
                { level = 40, species = "CHARIZARD" },
                { level = 40, species = "TOTARTLE" },
            },
        },

        aiMods = { 1 },
    })
end
