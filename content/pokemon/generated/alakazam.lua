local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local alakazamChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 6,
                        frequency = 121,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 6,
                        frequency = 122,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 6,
                        frequency = 121,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 120,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 122,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 121,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 6,
                        frequency = 120,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 119,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 97,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 3,
                        frequency = 95,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 12,
                        fade = 4,
                        frequency = 91,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 95,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 97,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 93,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 14,
                        volume = 1,
                        fade = -1,
                        parameter = 20,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 15,
                        fade = 7,
                        parameter = 36,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 20,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 4,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        parameter = 244,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("ALAKAZAM", {
        chip = alakazamChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_ALAKAZAM", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ALAKAZAM", "Disdainful of\nphysical attacks,\nALAKAZAM uses\nPSI moves instead.\nIn battle, it is\nexpressionless")

    mod.content.pokemon:patch("ALAKAZAM", {
        name = "ALAKAZAM",
        dex = 105,

        types = {
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 55,
            attack = 50,
            defense = 45,
            speed = 120,
            special = 135,
        },

        catchRate = 50,
        baseExp = 186,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TELEPORT",
            "CONFUSION",
            "DISABLE",
            "KINESIS",
        },

        learnset = {
            { level = 16, move = "CONFUSION" },
            { level = 20, move = "DISABLE" },
            { level = 27, move = "PSYBEAM" },
            { level = 31, move = "RECOVER" },
            { level = 38, move = "PSYCHIC_M" },
            { level = 42, move = "REFLECT" },
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
            "DIG",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "METRONOME",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "FLASH",
        },

        icon = "MON",
        palette = "KEP_ALAKAZAM",
        cry = "ALAKAZAM",

        spriteFront = mod.assets:path("assets/pokemon/generated/alakazam/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/alakazam/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "PSI",
            heightFt = 4,
            heightIn = 11,
            weight = 1060,
            text = "KEP_DEX_ALAKAZAM",
        },
    })
end
