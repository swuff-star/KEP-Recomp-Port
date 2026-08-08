local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local mewtwoChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 2,
                        frequency = 1689,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1753,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1817,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1881,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1945,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 2009,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 25,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 89,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 1, 0, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 0,
                        fade = 0,
                        frequency = 154,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1626,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1691,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1754,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1819,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1883,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 9,
                        fade = 2,
                        frequency = 1946,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 2011,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        frequency = 26,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 0,
                        fade = 0,
                        parameter = 154,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        parameter = 245,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        parameter = 229,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 2,
                        parameter = 213,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 11,
                        fade = 2,
                        parameter = 197,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        parameter = 181,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 10,
                        fade = 2,
                        parameter = 180,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 9,
                        fade = 2,
                        parameter = 179,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        parameter = 177,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("MEWTWO", {
        chip = mewtwoChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_MEWTWO", {
        { 255, 255, 255 },
        { 247, 140, 90 },
        { 90, 41, 115 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MEWTWO", "It was created by\na scientist after\nyears of horrific\ngene splicing and\nDNA engineering\nexperiments")

    mod.content.pokemon:patch("MEWTWO", {
        name = "MEWTWO",
        dex = 248,

        types = {
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 106,
            attack = 110,
            defense = 90,
            speed = 130,
            special = 154,
        },

        catchRate = 3,
        baseExp = 220,
        growthRate = "SLOW",

        level1Moves = {
            "CONFUSION",
            "DISABLE",
            "SWIFT",
            "PSYCHIC_M",
        },

        learnset = {
            { level = 63, move = "BARRIER" },
            { level = 66, move = "PSYCHIC_M" },
            { level = 70, move = "RECOVER" },
            { level = 75, move = "MIST" },
            { level = 81, move = "AMNESIA" },
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
            "PAY_DAY",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "SOLARBEAM",
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "METRONOME",
            "SELFDESTRUCT",
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "STRENGTH",
            "FLASH",
        },

        icon = "MON",
        palette = "KEP_MEWTWO",
        cry = "MEWTWO",

        spriteFront = mod.assets:path("assets/pokemon/generated/mewtwo/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/mewtwo/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "GENETIC",
            heightFt = 6,
            heightIn = 7,
            weight = 2690,
            text = "KEP_DEX_MEWTWO",
        },
    })
end
