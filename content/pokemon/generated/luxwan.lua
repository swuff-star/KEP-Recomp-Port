local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local luxwanChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 1, 1, 0, 0 } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 5,
                        frequency = 1689,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1721,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 2,
                        frequency = 1753,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1785,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1817,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1785,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1753,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1721,
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
                        frequency = 1610,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1643,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1674,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1706,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1739,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1706,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1674,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1642,
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
                        parameter = 101,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        parameter = 85,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 85,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        parameter = 69,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        parameter = 85,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        parameter = 69,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("LUXWAN", {
        chip = luxwanChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_LUXWAN", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_LUXWAN", "A species that is\nrarely seen. It\nalways holds a\nspring onion\nflower, according\nto studies")

    mod.content.pokemon:register("LUXWAN", {
        id = "LUXWAN",
        name = "LUXWAN",
        dex = 114,

        types = {
            "NORMAL",
            "FLYING",
        },

        baseStats = {
            hp = 72,
            attack = 105,
            defense = 75,
            speed = 70,
            special = 63,
        },

        catchRate = 25,
        baseExp = 196,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "PECK",
            "SAND_ATTACK",
            "LEER",
        },

        learnset = {
            { level = 13, move = "LEER" },
            { level = 19, move = "FURY_ATTACK" },
            { level = 25, move = "SWORDS_DANCE" },
            { level = 33, move = "AGILITY" },
            { level = 41, move = "SLASH" },
            { level = 45, move = "DRILL_PECK" },
        },

        evolutions = {},

        tmhm = {
            "RAZOR_WIND",
            "SWORDS_DANCE",
            "WHIRLWIND",
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
            "FLY",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/smallbird.png"),
            frames = 2,
        },
        palette = "KEP_LUXWAN",
        cry = "LUXWAN",

        spriteFront = mod.assets:path("assets/pokemon/generated/luxwan/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/luxwan/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "MASQUERADE",
            heightFt = 5,
            heightIn = 3,
            weight = 590,
            text = "KEP_DEX_LUXWAN",
        },
    })
end
