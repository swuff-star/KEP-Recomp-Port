local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local electivireChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 0, 2 } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 359,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 359,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 359,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 1671,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 1671,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 1671,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 1671,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 1671,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 1671,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1639,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1575,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1639,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1575,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1639,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1575,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1639,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1575,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1639,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1575,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1639,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1575,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 1607,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 1559,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 1607,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 1559,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 1607,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 1559,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 1607,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 1559,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 1607,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 1559,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 1607,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 1559,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 1,
                        frequency = 1527,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 2,
                        fade = 1,
                        frequency = 1495,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 1,
                        frequency = 1527,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 2,
                        fade = 1,
                        frequency = 1495,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 1,
                        frequency = 1527,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 2,
                        fade = 1,
                        frequency = 1495,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 1,
                        frequency = 1527,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 2,
                        fade = 1,
                        frequency = 1495,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 3, 2, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = -1,
                        frequency = 278,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = -1,
                        frequency = 284,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 6,
                        frequency = 355,
                    } },
                    { squareNote = {
                        len = 1,
                        volume = 15,
                        fade = 6,
                        frequency = 355,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 0,
                        frequency = 359,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 0,
                        frequency = 355,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 0,
                        frequency = 349,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        frequency = 345,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 2,
                        frequency = 345,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 6,
                        parameter = 16,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 48,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("ELECTIVIRE", {
        chip = electivireChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_ELECTIVIRE", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ELECTIVIRE", "When it's excited,\nit beats its chest\nrepeatedly. With\nevery thud, it\ndischarges sparks\nof electricity")

    mod.content.pokemon:register("ELECTIVIRE", {
        id = "ELECTIVIRE",
        name = "ELECTIVIRE",
        dex = 216,

        types = {
            "ELECTRIC",
        },

        baseStats = {
            hp = 75,
            attack = 123,
            defense = 67,
            speed = 95,
            special = 85,
        },

        catchRate = 30,
        baseExp = 199,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "QUICK_ATTACK",
            "LEER",
        },

        learnset = {
            { level = 34, move = "THUNDERSHOCK" },
            { level = 37, move = "SCREECH" },
            { level = 42, move = "THUNDERPUNCH" },
            { level = 49, move = "LIGHT_SCREEN" },
            { level = 54, move = "THUNDER" },
            { level = 58, move = "LOW_KICK" },
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
            "THUNDERBOLT",
            "THUNDER",
            "EARTHQUAKE",
            "FISSURE",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "METRONOME",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "STRENGTH",
            "FLASH",
        },

        icon = "MON",
        palette = "KEP_ELECTIVIRE",
        cry = "ELECTIVIRE",

        spriteFront = mod.assets:path("assets/pokemon/generated/electivire/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/electivire/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "THUNDER",
            heightFt = 5,
            heightIn = 11,
            weight = 3060,
            text = "KEP_DEX_ELECTIVIRE",
        },
    })
end
