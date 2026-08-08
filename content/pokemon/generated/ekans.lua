local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local ekansChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 0, 3, 3 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 1298,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 7,
                        frequency = 1306,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 1170,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1138,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 15,
                        volume = 13,
                        fade = 7,
                        frequency = 1171,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 7,
                        frequency = 1179,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 11,
                        fade = 4,
                        frequency = 1043,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1011,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 15,
                        volume = 15,
                        fade = 7,
                        parameter = 142,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 15,
                        fade = 6,
                        parameter = 126,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 14,
                        fade = 4,
                        parameter = 142,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        parameter = 126,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("EKANS", {
        chip = ekansChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_EKANS", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_EKANS", "EKANS flicks its\ntongue to check\nfor danger. If it\neats a RATTATA, it\nwon't need to eat\nagain for a month")

    mod.content.pokemon:patch("EKANS", {
        name = "EKANS",
        dex = 72,

        types = {
            "POISON",
        },

        baseStats = {
            hp = 35,
            attack = 60,
            defense = 44,
            speed = 55,
            special = 40,
        },

        catchRate = 255,
        baseExp = 62,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "WRAP",
            "LEER",
        },

        learnset = {
            { level = 10, move = "POISON_STING" },
            { level = 17, move = "BITE" },
            { level = 24, move = "GLARE" },
            { level = 31, move = "SCREECH" },
            { level = 38, move = "ACID" },
            { level = 45, move = "TOXIC" },
        },

        evolutions = {
            { method = "LEVEL", level = 22, species = "ARBOK" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "MEGA_DRAIN",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "SNAKE",
        palette = "KEP_EKANS",
        cry = "EKANS",

        spriteFront = mod.assets:path("assets/pokemon/generated/ekans/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/ekans/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "SNAKE",
            heightFt = 6,
            heightIn = 7,
            weight = 150,
            text = "KEP_DEX_EKANS",
        },
    })
end
