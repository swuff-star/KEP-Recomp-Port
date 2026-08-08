local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local abraChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 6,
                        frequency = 161,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 6,
                        frequency = 162,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 6,
                        frequency = 161,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 160,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 162,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 161,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 6,
                        frequency = 160,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 159,
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
                        frequency = 137,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 3,
                        frequency = 135,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 12,
                        fade = 4,
                        frequency = 131,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 135,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 137,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 133,
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
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 15,
                        fade = 7,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        parameter = 28,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("ABRA", {
        chip = abraChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_ABRA", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ABRA", "Even when asleep,\nABRA can use\ntelekinetic\npowers. It is\nrare due to a\nsmall population")

    mod.content.pokemon:patch("ABRA", {
        name = "ABRA",
        dex = 103,

        types = {
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 25,
            attack = 20,
            defense = 15,
            speed = 90,
            special = 105,
        },

        catchRate = 200,
        baseExp = 73,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TELEPORT",
        },

        learnset = {},

        evolutions = {
            { method = "LEVEL", level = 16, species = "KADABRA" },
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
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "FLASH",
        },

        icon = "MON",
        palette = "KEP_ABRA",
        cry = "ABRA",

        spriteFront = mod.assets:path("assets/pokemon/generated/abra/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/abra/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "PSI",
            heightFt = 2,
            heightIn = 11,
            weight = 430,
            text = "KEP_DEX_ABRA",
        },
    })
end
