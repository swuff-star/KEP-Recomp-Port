local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local sirfetchdChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 2, 1 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 7,
                        frequency = 1552,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 7,
                        frequency = 1520,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 14,
                        fade = 7,
                        frequency = 1488,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 14,
                        fade = 7,
                        frequency = 1456,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 1,
                        frequency = 1424,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 7,
                        frequency = 1744,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 10,
                        fade = 7,
                        frequency = 1728,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 9,
                        fade = 1,
                        frequency = 1712,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 3, 2, 1 } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 7,
                        frequency = 1554,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 14,
                        fade = 7,
                        frequency = 1522,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 7,
                        frequency = 1490,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 7,
                        frequency = 1458,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 1,
                        frequency = 1426,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 7,
                        frequency = 1746,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 7,
                        frequency = 1730,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 8,
                        fade = 1,
                        frequency = 1714,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 5,
                        volume = 7,
                        fade = 4,
                        parameter = 177,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 7,
                        fade = 4,
                        parameter = 160,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 7,
                        fade = 1,
                        parameter = 176,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("SIRFETCHD", {
        chip = sirfetchdChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_SIRFETCHD", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SIRFETCHD", "A FARFETCH'D that\nwields a huge leek\nevolves into this\nform. It guards\nattacks using\nits leaf shield")

    mod.content.pokemon:register("SIRFETCHD", {
        id = "SIRFETCHD",
        name = "SIRFETCH'D",
        dex = 115,

        types = {
            "FIGHTING",
        },

        baseStats = {
            hp = 62,
            attack = 135,
            defense = 95,
            speed = 65,
            special = 68,
        },

        catchRate = 25,
        baseExp = 196,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "PECK",
            "SAND_ATTACK",
        },

        learnset = {
            { level = 13, move = "LEER" },
            { level = 17, move = "DOUBLE_KICK" },
            { level = 21, move = "BRUTAL_SWING" },
            { level = 25, move = "SWORDS_DANCE" },
            { level = 29, move = "LOW_KICK" },
            { level = 33, move = "JUMP_KICK" },
            { level = 41, move = "ROLLING_KICK" },
            { level = 45, move = "HI_JUMP_KICK" },
        },

        evolutions = {},

        tmhm = {
            "RAZOR_WIND",
            "SWORDS_DANCE",
            "WHIRLWIND",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/smallbird.png"),
            frames = 2,
        },
        palette = "KEP_SIRFETCHD",
        cry = "SIRFETCHD",

        spriteFront = mod.assets:path("assets/pokemon/generated/sirfetchd/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/sirfetchd/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "WILD DUCK",
            heightFt = 2,
            heightIn = 7,
            weight = 2580,
            text = "KEP_DEX_SIRFETCHD",
        },
    })
end
