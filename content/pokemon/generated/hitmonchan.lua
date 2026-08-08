local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local hitmonchanChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 5,
                        frequency = 1774,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 13,
                        fade = 2,
                        frequency = 1830,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1822,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1814,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1806,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1790,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 10,
                        fade = 2,
                        frequency = 1798,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1790,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1806,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 13,
                        volume = 12,
                        fade = 3,
                        frequency = 1710,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 1,
                        frequency = 1767,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 10,
                        fade = 1,
                        frequency = 1759,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 10,
                        fade = 1,
                        frequency = 1751,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 1,
                        frequency = 1743,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 1,
                        frequency = 1735,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 8,
                        fade = 1,
                        frequency = 1727,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 1,
                        frequency = 1735,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1743,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("HITMONCHAN", {
        chip = hitmonchanChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_HITMONCHAN", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_HITMONCHAN", "It is inhabited\nby the spirit of\na pro boxer.\nIt throws punches\nthat can outspeed\na bullet train")

    mod.content.pokemon:patch("HITMONCHAN", {
        name = "HITMONCHAN",
        dex = 175,

        types = {
            "FIGHTING",
        },

        baseStats = {
            hp = 50,
            attack = 105,
            defense = 79,
            speed = 76,
            special = 35,
        },

        catchRate = 45,
        baseExp = 140,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "COMET_PUNCH",
            "AGILITY",
            "UPPERCUT",
        },

        learnset = {
            { level = 33, move = "FIRE_PUNCH" },
            { level = 38, move = "ICE_PUNCH" },
            { level = 43, move = "THUNDERPUNCH" },
            { level = 48, move = "MEGA_PUNCH" },
            { level = 53, move = "COUNTER" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
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
            "BIDE",
            "METRONOME",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_HITMONCHAN",
        cry = "HITMONCHAN",

        spriteFront = mod.assets:path("assets/pokemon/generated/hitmonchan/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/hitmonchan/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "PUNCHING",
            heightFt = 4,
            heightIn = 7,
            weight = 1110,
            text = "KEP_DEX_HITMONCHAN",
        },
    })
end
