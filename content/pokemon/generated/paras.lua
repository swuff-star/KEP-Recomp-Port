local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local parasChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 2,
                        frequency = 1568,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1632,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1824,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1952,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 2016,
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
                        frequency = 33,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1505,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1570,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1633,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1698,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1762,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 9,
                        fade = 2,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1890,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        frequency = 1953,
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
                        parameter = 33,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 2,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 11,
                        fade = 2,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 10,
                        fade = 2,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 9,
                        fade = 2,
                        parameter = 58,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        parameter = 56,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("PARAS", {
        chip = parasChip.chip,
        pitch = 0,
        length = 224,
    })

    mod.content.palettes:register("KEP_PARAS", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PARAS", "The mushrooms on\nthe bug's back are\ncalled tochukaso.\nThese mushrooms\ngrow alongside\nthe host")

    mod.content.pokemon:patch("PARAS", {
        name = "PARAS",
        dex = 63,

        types = {
            "BUG",
            "GRASS",
        },

        baseStats = {
            hp = 35,
            attack = 70,
            defense = 55,
            speed = 25,
            special = 55,
        },

        catchRate = 190,
        baseExp = 70,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
        },

        learnset = {
            { level = 6, move = "ABSORB" },
            { level = 13, move = "STUN_SPORE" },
            { level = 20, move = "LEECH_LIFE" },
            { level = 27, move = "SPORE" },
            { level = 34, move = "SLASH" },
            { level = 41, move = "GROWTH" },
            { level = 48, move = "SWORDS_DANCE" },
        },

        evolutions = {
            { method = "LEVEL", level = 24, species = "PARASECT" },
        },

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
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
        palette = "KEP_PARAS",
        cry = "PARAS",

        spriteFront = mod.assets:path("assets/pokemon/generated/paras/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/paras/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "MUSHROOM",
            heightFt = 1,
            heightIn = 0,
            weight = 120,
            text = "KEP_DEX_PARAS",
        },
    })
end
