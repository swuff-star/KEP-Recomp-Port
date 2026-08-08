local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local parasectChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 2,
                        frequency = 1602,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1666,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1730,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1794,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1858,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1922,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1986,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 2,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 1, 0, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 0,
                        fade = 0,
                        frequency = 67,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1539,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1604,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1667,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1732,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1796,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 9,
                        fade = 2,
                        frequency = 1859,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1924,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        frequency = 1987,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 0,
                        fade = 0,
                        parameter = 67,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        parameter = 158,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        parameter = 142,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 2,
                        parameter = 126,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 11,
                        fade = 2,
                        parameter = 110,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        parameter = 94,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 10,
                        fade = 2,
                        parameter = 93,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 9,
                        fade = 2,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        parameter = 90,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("PARASECT", {
        chip = parasectChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_PARASECT", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PARASECT", "It lives in dark,\ndamp forests. In\nChina, the toxic\nspores it scatters\nare sometimes used\nto make medicine")

    mod.content.pokemon:patch("PARASECT", {
        name = "PARASECT",
        dex = 64,

        types = {
            "BUG",
            "GRASS",
        },

        baseStats = {
            hp = 60,
            attack = 95,
            defense = 80,
            speed = 30,
            special = 80,
        },

        catchRate = 75,
        baseExp = 128,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "STUN_SPORE",
            "LEECH_LIFE",
        },

        learnset = {
            { level = 6, move = "ABSORB" },
            { level = 13, move = "STUN_SPORE" },
            { level = 20, move = "LEECH_LIFE" },
            { level = 30, move = "SPORE" },
            { level = 39, move = "SLASH" },
            { level = 48, move = "GROWTH" },
            { level = 57, move = "SWORDS_DANCE" },
        },

        evolutions = {},

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
        },

        icon = "BUG",
        palette = "KEP_PARASECT",
        cry = "PARASECT",

        spriteFront = mod.assets:path("assets/pokemon/generated/parasect/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/parasect/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "MUSHROOM",
            heightFt = 3,
            heightIn = 3,
            weight = 650,
            text = "KEP_DEX_PARASECT",
        },
    })
end
