local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local drowzeeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 0, 2, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1752,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1768,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1690,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 12,
                        fade = 1,
                        frequency = 1706,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1688,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 1,
                        frequency = 1704,
                    } },
                    { dutyPattern = { 2, 0, 2, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1752,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1768,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1690,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 12,
                        fade = 1,
                        frequency = 1706,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1688,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 1,
                        frequency = 1704,
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
                        frequency = 136,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1753,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1769,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1692,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1708,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1689,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 1,
                        frequency = 1705,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1692,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1708,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1689,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1705,
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
                        parameter = 164,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 11,
                        fade = 1,
                        parameter = 180,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 2,
                        parameter = 180,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 11,
                        fade = 1,
                        parameter = 196,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        parameter = 180,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 10,
                        fade = 2,
                        parameter = 196,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 2,
                        parameter = 180,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 10,
                        fade = 1,
                        parameter = 196,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 12,
                        fade = 2,
                        parameter = 180,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 10,
                        fade = 1,
                        parameter = 196,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("DROWZEE", {
        chip = drowzeeChip.chip,
        pitch = 0,
        length = 32,
    })

    mod.content.palettes:register("KEP_DROWZEE", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_DROWZEE", "Said to be a\ndecendant of the\nlegendary Baku,\nit is often seen\neerily muttering\nto itself")

    mod.content.pokemon:patch("DROWZEE", {
        name = "DROWZEE",
        dex = 116,

        types = {
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 60,
            attack = 48,
            defense = 45,
            speed = 42,
            special = 90,
        },

        catchRate = 190,
        baseExp = 102,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "POUND",
            "HYPNOSIS",
        },

        learnset = {
            { level = 12, move = "DISABLE" },
            { level = 17, move = "CONFUSION" },
            { level = 24, move = "HEADBUTT" },
            { level = 29, move = "POISON_GAS" },
            { level = 32, move = "PSYCHIC_M" },
            { level = 37, move = "MEDITATE" },
        },

        evolutions = {
            { method = "LEVEL", level = 26, species = "HYPNO" },
        },

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
        palette = "KEP_DROWZEE",
        cry = "DROWZEE",

        spriteFront = mod.assets:path("assets/pokemon/generated/drowzee/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/drowzee/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "HYPNOSIS",
            heightFt = 3,
            heightIn = 3,
            weight = 710,
            text = "KEP_DEX_DROWZEE",
        },
    })
end
