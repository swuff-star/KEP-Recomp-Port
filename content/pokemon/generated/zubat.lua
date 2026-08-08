local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local zubatChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 2021,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 0,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        frequency = 2032,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1796,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 2, 0, 2 } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 0,
                        frequency = 1955,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 10,
                        fade = 0,
                        frequency = 1953,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 4,
                        frequency = 1970,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1953,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 2,
                        frequency = 1729,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        frequency = 1736,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 6,
                        parameter = 28,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 5,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 11,
                        fade = 2,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 44,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("ZUBAT", {
        chip = zubatChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_ZUBAT", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ZUBAT", "Because it lives\nin darkness, its\neyes disappeared.\nIt emits ultra-\nsonic cries to\nlocate prey")

    mod.content.pokemon:patch("ZUBAT", {
        name = "ZUBAT",
        dex = 56,

        types = {
            "POISON",
            "FLYING",
        },

        baseStats = {
            hp = 40,
            attack = 45,
            defense = 35,
            speed = 55,
            special = 40,
        },

        catchRate = 255,
        baseExp = 54,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "LEECH_LIFE",
            "TACKLE",
        },

        learnset = {
            { level = 7, move = "WING_ATTACK" },
            { level = 12, move = "GUST" },
            { level = 14, move = "SUPERSONIC" },
            { level = 20, move = "BITE" },
            { level = 24, move = "CONFUSE_RAY" },
            { level = 29, move = "DISABLE" },
            { level = 34, move = "HAZE" },
        },

        evolutions = {
            { method = "LEVEL", level = 23, species = "GOLBAT" },
        },

        tmhm = {
            "RAZOR_WIND",
            "WHIRLWIND",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "MEGA_DRAIN",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "REST",
            "SUBSTITUTE",
        },

        icon = "MON",
        palette = "KEP_ZUBAT",
        cry = "ZUBAT",

        spriteFront = mod.assets:path("assets/pokemon/generated/zubat/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/zubat/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "BAT",
            heightFt = 2,
            heightIn = 7,
            weight = 170,
            text = "KEP_DEX_ZUBAT",
        },
    })
end
