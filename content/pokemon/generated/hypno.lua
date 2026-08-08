local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local hypnoChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 0, 2, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1854,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1870,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 12,
                        fade = 1,
                        frequency = 1808,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1790,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 1,
                        frequency = 1806,
                    } },
                    { dutyPattern = { 2, 0, 2, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1854,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1870,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 12,
                        fade = 1,
                        frequency = 1808,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1790,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 1,
                        frequency = 1806,
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
                        frequency = 238,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1855,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1871,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1794,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1810,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1791,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 1,
                        frequency = 1807,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1794,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1810,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1791,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1807,
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
                        parameter = 10,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 11,
                        fade = 1,
                        parameter = 26,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 2,
                        parameter = 26,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 11,
                        fade = 1,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        parameter = 26,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 10,
                        fade = 2,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 2,
                        parameter = 26,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 10,
                        fade = 1,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 12,
                        fade = 2,
                        parameter = 26,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 10,
                        fade = 1,
                        parameter = 42,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("HYPNO", {
        chip = hypnoChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_HYPNO", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_HYPNO", "It carries a\npendulum-like\ndevice. Wherever\nHYPNO travels,\ncases of missing\nchildren surge")

    mod.content.pokemon:patch("HYPNO", {
        name = "HYPNO",
        dex = 117,

        types = {
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 85,
            attack = 73,
            defense = 70,
            speed = 67,
            special = 115,
        },

        catchRate = 75,
        baseExp = 165,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "POUND",
            "HYPNOSIS",
            "DISABLE",
            "CONFUSION",
        },

        learnset = {
            { level = 12, move = "DISABLE" },
            { level = 17, move = "CONFUSION" },
            { level = 24, move = "HEADBUTT" },
            { level = 33, move = "POISON_GAS" },
            { level = 37, move = "PSYCHIC_M" },
            { level = 43, move = "MEDITATE" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
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
            "DREAM_EATER",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "FLASH",
        },

        icon = "MON",
        palette = "KEP_HYPNO",
        cry = "HYPNO",

        spriteFront = mod.assets:path("assets/pokemon/generated/hypno/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/hypno/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "HYPNOSIS",
            heightFt = 5,
            heightIn = 3,
            weight = 1670,
            text = "KEP_DEX_HYPNO",
        },
    })
end
