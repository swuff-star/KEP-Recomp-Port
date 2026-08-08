local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local jynxChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 0, 2, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1871,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1887,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1809,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 12,
                        fade = 1,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1807,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 1,
                        frequency = 1823,
                    } },
                    { dutyPattern = { 2, 0, 2, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1871,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1887,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1809,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 12,
                        fade = 1,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1807,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 1,
                        frequency = 1823,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 0,
                        fade = 0,
                        frequency = 255,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1872,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1811,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1827,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1808,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 1,
                        frequency = 1824,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1811,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1827,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1808,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1824,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        parameter = 27,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 11,
                        fade = 1,
                        parameter = 43,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 2,
                        parameter = 43,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 11,
                        fade = 1,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        parameter = 43,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 10,
                        fade = 2,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 2,
                        parameter = 43,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 10,
                        fade = 1,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 12,
                        fade = 2,
                        parameter = 43,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 10,
                        fade = 1,
                        parameter = 59,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("JYNX", {
        chip = jynxChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_JYNX", {
        { 255, 255, 255 },
        { 247, 140, 90 },
        { 90, 41, 115 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_JYNX", "While it speaks in\na language that\nsounds human, it\nis currently\nimpossible to\nfully translate")

    mod.content.pokemon:patch("JYNX", {
        name = "JYNX",
        dex = 213,

        types = {
            "ICE",
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 65,
            attack = 50,
            defense = 35,
            speed = 95,
            special = 95,
        },

        catchRate = 45,
        baseExp = 137,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "POUND",
            "LOVELY_KISS",
            "POWDER_SNOW",
        },

        learnset = {
            { level = 13, move = "POWDER_SNOW" },
            { level = 18, move = "LICK" },
            { level = 23, move = "DOUBLESLAP" },
            { level = 31, move = "ICE_PUNCH" },
            { level = 39, move = "BODY_SLAM" },
            { level = 47, move = "THRASH" },
            { level = 58, move = "BLIZZARD" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "METRONOME",
            "SKULL_BASH",
            "REST",
            "PSYWAVE",
            "SUBSTITUTE",
        },

        icon = "MON",
        palette = "KEP_JYNX",
        cry = "JYNX",

        spriteFront = mod.assets:path("assets/pokemon/generated/jynx/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/jynx/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "HUMANSHAPE",
            heightFt = 4,
            heightIn = 7,
            weight = 900,
            text = "KEP_DEX_JYNX",
        },
    })
end
