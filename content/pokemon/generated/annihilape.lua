local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local annihilapeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 480,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 7,
                        frequency = 480,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 6,
                        frequency = 485,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 4,
                        frequency = 480,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 6,
                        frequency = 464,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 14,
                        fade = 3,
                        frequency = 448,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 2,
                        frequency = 432,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 456,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 456,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 8,
                        volume = 0,
                        fade = 0,
                        frequency = 768,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 7,
                        frequency = 417,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 7,
                        frequency = 417,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 8,
                        fade = 6,
                        frequency = 419,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 7,
                        fade = 4,
                        frequency = 417,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 7,
                        fade = 6,
                        frequency = 401,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 8,
                        fade = 3,
                        frequency = 386,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 10,
                        fade = 2,
                        frequency = 369,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 7,
                        fade = 2,
                        frequency = 393,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 7,
                        fade = 2,
                        frequency = 393,
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
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 62,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 7,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 5,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 13,
                        fade = 4,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 11,
                        fade = 6,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 10,
                        fade = 4,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 60,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("ANNIHILAPE", {
        chip = annihilapeChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_ANNIHILAPE", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ANNIHILAPE", "Fuelled by a new,\nspirit-like power,\nits punches have\nenough power to\nshatter both minds\nand bones alike")

    mod.content.pokemon:register("ANNIHILAPE", {
        id = "ANNIHILAPE",
        name = "ANNIHILAPE",
        dex = 80,

        types = {
            "FIGHTING",
            "GHOST",
        },

        baseStats = {
            hp = 110,
            attack = 115,
            defense = 80,
            speed = 90,
            special = 50,
        },

        catchRate = 45,
        baseExp = 210,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "LEER",
            "UPPERCUT",
            "KARATE_CHOP",
        },

        learnset = {
            { level = 9, move = "LOW_KICK" },
            { level = 15, move = "KARATE_CHOP" },
            { level = 21, move = "FURY_SWIPES" },
            { level = 27, move = "FOCUS_ENERGY" },
            { level = 28, move = "RAGE" },
            { level = 37, move = "SEISMIC_TOSS" },
            { level = 45, move = "SCREECH" },
            { level = 46, move = "THRASH" },
            { level = 50, move = "NIGHT_SHADE" },
            { level = 54, move = "SUBMISSION" },
            { level = 62, move = "COUNTER" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
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
        palette = "KEP_ANNIHILAPE",
        cry = "ANNIHILAPE",

        spriteFront = mod.assets:path("assets/pokemon/generated/annihilape/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/annihilape/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "RAGEMONKEY",
            heightFt = 3,
            heightIn = 11,
            weight = 1230,
            text = "KEP_DEX_ANNIHILAPE",
        },
    })
end
