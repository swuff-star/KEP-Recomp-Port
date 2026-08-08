local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local mankeyChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 7,
                        frequency = 1981,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        frequency = 1986,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 4,
                        frequency = 1981,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 6,
                        frequency = 1965,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 3,
                        frequency = 1949,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 1933,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1957,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 0,
                        fade = 0,
                        frequency = 221,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 7,
                        frequency = 1918,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 6,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 7,
                        fade = 4,
                        frequency = 1918,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 7,
                        fade = 6,
                        frequency = 1902,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 8,
                        fade = 3,
                        frequency = 1887,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 10,
                        fade = 2,
                        frequency = 1870,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 7,
                        fade = 2,
                        frequency = 1894,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        parameter = 25,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 27,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 7,
                        parameter = 25,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 5,
                        parameter = 24,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 13,
                        fade = 4,
                        parameter = 9,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 11,
                        fade = 6,
                        parameter = 25,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 10,
                        fade = 4,
                        parameter = 9,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 25,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("MANKEY", {
        chip = mankeyChip.chip,
        pitch = 0,
        length = 96,
    })

    mod.content.palettes:register("KEP_MANKEY", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MANKEY", "It's believed that\nMANKEY's habit of\nsuddenly rampaging\ncould be due to a\ncalcium deficiency\nin its diet")

    mod.content.pokemon:patch("MANKEY", {
        name = "MANKEY",
        dex = 78,

        types = {
            "FIGHTING",
        },

        baseStats = {
            hp = 40,
            attack = 80,
            defense = 35,
            speed = 70,
            special = 35,
        },

        catchRate = 190,
        baseExp = 74,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "LEER",
            "UPPERCUT",
        },

        learnset = {
            { level = 9, move = "LOW_KICK" },
            { level = 15, move = "KARATE_CHOP" },
            { level = 21, move = "FURY_SWIPES" },
            { level = 27, move = "FOCUS_ENERGY" },
            { level = 33, move = "SEISMIC_TOSS" },
            { level = 39, move = "THRASH" },
            { level = 45, move = "SCREECH" },
            { level = 51, move = "SUBMISSION" },
            { level = 58, move = "COUNTER" },
        },

        evolutions = {
            { method = "LEVEL", level = 28, species = "PRIMEAPE" },
        },

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "PAY_DAY",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "METRONOME",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_MANKEY",
        cry = "MANKEY",

        spriteFront = mod.assets:path("assets/pokemon/generated/mankey/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/mankey/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "PIG MONKEY",
            heightFt = 1,
            heightIn = 8,
            weight = 620,
            text = "KEP_DEX_MANKEY",
        },
    })
end
