local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local bittybatChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 1977,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 0,
                        frequency = 1972,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        frequency = 1988,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1972,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1748,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1752,
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
                        frequency = 1911,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 10,
                        fade = 0,
                        frequency = 1909,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 4,
                        frequency = 1926,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1909,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 2,
                        frequency = 1685,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        frequency = 1692,
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
                        parameter = 0,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 6,
                        parameter = 240,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 5,
                        parameter = 254,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 11,
                        fade = 2,
                        parameter = 15,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 0,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("BITTYBAT", {
        chip = bittybatChip.chip,
        pitch = 0,
        length = 78,
    })

    mod.content.palettes:register("KEP_BITTYBAT", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_BITTYBAT", "Flits about in\ndark caves. A\nswarm of BITTYBAT\ncan overwhelm even\nsignificantly\nlarger POKéMON")

    mod.content.pokemon:register("BITTYBAT", {
        id = "BITTYBAT",
        name = "BITTYBAT",
        dex = 55,

        types = {
            "POISON",
            "FLYING",
        },

        baseStats = {
            hp = 35,
            attack = 40,
            defense = 30,
            speed = 50,
            special = 35,
        },

        catchRate = 255,
        baseExp = 44,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "LEECH_LIFE",
            "TACKLE",
        },

        learnset = {
            { level = 7, move = "WING_ATTACK" },
            { level = 12, move = "GUST" },
            { level = 18, move = "BITE" },
            { level = 22, move = "CONFUSE_RAY" },
            { level = 30, move = "DISABLE" },
            { level = 34, move = "HAZE" },
        },

        evolutions = {
            { method = "LEVEL", level = 14, species = "ZUBAT" },
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
        palette = "KEP_BITTYBAT",
        cry = "BITTYBAT",

        spriteFront = mod.assets:path("assets/pokemon/generated/bittybat/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/bittybat/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "TINY BAT",
            heightFt = 1,
            heightIn = 0,
            weight = 80,
            text = "KEP_DEX_BITTYBAT",
        },
    })
end
