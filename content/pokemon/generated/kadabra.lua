local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local kadabraChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 6,
                        frequency = 137,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 6,
                        frequency = 138,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 6,
                        frequency = 137,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 136,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 138,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 137,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 6,
                        frequency = 136,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 135,
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
                        frequency = 113,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 3,
                        frequency = 111,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 12,
                        fade = 4,
                        frequency = 107,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 111,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 113,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 109,
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
                        parameter = 36,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 15,
                        fade = 7,
                        parameter = 52,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 36,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 20,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        parameter = 4,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("KADABRA", {
        chip = kadabraChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_KADABRA", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_KADABRA", "Its popularity has\nincreased after\nthe release of a\nshort story about\na boy who turned\ninto a KADABRA")

    mod.content.pokemon:patch("KADABRA", {
        name = "KADABRA",
        dex = 104,

        types = {
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 40,
            attack = 35,
            defense = 30,
            speed = 105,
            special = 120,
        },

        catchRate = 100,
        baseExp = 145,
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

        evolutions = {
            { method = "TRADE", species = "ALAKAZAM" },
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
        palette = "KEP_KADABRA",
        cry = "KADABRA",

        spriteFront = mod.assets:path("assets/pokemon/generated/kadabra/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/kadabra/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "PSI",
            heightFt = 4,
            heightIn = 3,
            weight = 1250,
            text = "KEP_DEX_KADABRA",
        },
    })
end
