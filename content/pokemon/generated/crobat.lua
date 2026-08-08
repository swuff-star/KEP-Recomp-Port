local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local crobatChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 1781,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 0,
                        frequency = 1776,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1776,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1552,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1556,
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
                        frequency = 1715,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 10,
                        fade = 0,
                        frequency = 1713,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 4,
                        frequency = 1730,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1713,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 2,
                        frequency = 1489,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        frequency = 1496,
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
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 6,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 5,
                        parameter = 58,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 11,
                        fade = 2,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 60,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("CROBAT", {
        chip = crobatChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_CROBAT", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_CROBAT", "Although it can\nfly silently and\nswiftly using its\nfour wings, it\ncannot move well\non the ground")

    mod.content.pokemon:register("CROBAT", {
        id = "CROBAT",
        name = "CROBAT",
        dex = 58,

        types = {
            "POISON",
            "FLYING",
        },

        baseStats = {
            hp = 85,
            attack = 90,
            defense = 80,
            speed = 130,
            special = 80,
        },

        catchRate = 90,
        baseExp = 204,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "LEECH_LIFE",
            "TACKLE",
            "BITE",
            "SCREECH",
        },

        learnset = {
            { level = 7, move = "WING_ATTACK" },
            { level = 12, move = "GUST" },
            { level = 14, move = "SUPERSONIC" },
            { level = 20, move = "BITE" },
            { level = 26, move = "CONFUSE_RAY" },
            { level = 32, move = "DISABLE" },
            { level = 38, move = "SCREECH" },
            { level = 42, move = "SLUDGE" },
            { level = 46, move = "HAZE" },
            { level = 50, move = "AGILITY" },
        },

        evolutions = {},

        tmhm = {
            "RAZOR_WIND",
            "WHIRLWIND",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MEGA_DRAIN",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKY_ATTACK",
            "REST",
            "SUBSTITUTE",
            "FLY",
        },

        icon = "MON",
        palette = "KEP_CROBAT",
        cry = "CROBAT",

        spriteFront = mod.assets:path("assets/pokemon/generated/crobat/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/crobat/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "BAT",
            heightFt = 5,
            heightIn = 11,
            weight = 1650,
            text = "KEP_DEX_CROBAT",
        },
    })
end
