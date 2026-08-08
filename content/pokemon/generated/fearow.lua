local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local fearowChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 1, 1, 0, 0 } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 5,
                        frequency = 1728,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 2,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1824,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1824,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1760,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 3, 3 } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 5,
                        frequency = 1649,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1682,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1713,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1745,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1778,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1745,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1713,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1681,
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
                        fade = 3,
                        parameter = 140,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        parameter = 108,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("FEAROW", {
        chip = fearowChip.chip,
        pitch = 0,
        length = 160,
    })

    mod.content.palettes:register("KEP_FEAROW", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_FEAROW", "It soars in the\nsky all day long.\nIts long, powerful\nbeak allows it to\nswallow prey like\nRATTATA whole")

    mod.content.pokemon:patch("FEAROW", {
        name = "FEAROW",
        dex = 47,

        types = {
            "NORMAL",
            "FLYING",
        },

        baseStats = {
            hp = 65,
            attack = 90,
            defense = 65,
            speed = 100,
            special = 61,
        },

        catchRate = 90,
        baseExp = 162,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "PECK",
            "GROWL",
            "LEER",
            "RAGE",
        },

        learnset = {
            { level = 5, move = "RAGE" },
            { level = 9, move = "LEER" },
            { level = 15, move = "FURY_ATTACK" },
            { level = 25, move = "MIRROR_MOVE" },
            { level = 34, move = "DRILL_PECK" },
            { level = 43, move = "AGILITY" },
            { level = 50, move = "TAKE_DOWN" },
            { level = 56, move = "WHIRLWIND" },
        },

        evolutions = {},

        tmhm = {
            "RAZOR_WIND",
            "WHIRLWIND",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "PAY_DAY",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKY_ATTACK",
            "REST",
            "SUBSTITUTE",
            "FLY",
        },

        icon = "BIRD",
        palette = "KEP_FEAROW",
        cry = "FEAROW",

        spriteFront = mod.assets:path("assets/pokemon/generated/fearow/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/fearow/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "BEAK",
            heightFt = 3,
            heightIn = 11,
            weight = 840,
            text = "KEP_DEX_FEAROW",
        },
    })
end
