local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local ninetalesChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 1800,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 6,
                        frequency = 1804,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 1816,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 5,
                        frequency = 1816,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 4,
                        frequency = 1808,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 13,
                        fade = 3,
                        frequency = 1784,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1768,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1736,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 7,
                        frequency = 1737,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 9,
                        fade = 6,
                        frequency = 1738,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 7,
                        frequency = 1753,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 5,
                        frequency = 1753,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 9,
                        fade = 4,
                        frequency = 1743,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 10,
                        fade = 3,
                        frequency = 1721,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1706,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 1673,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 16,
                        volume = 14,
                        fade = 4,
                        parameter = 196,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 7,
                        parameter = 212,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 7,
                        parameter = 196,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 11,
                        fade = 7,
                        parameter = 212,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        parameter = 228,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("NINETALES", {
        chip = ninetalesChip.chip,
        pitch = 0,
        length = 96,
    })

    mod.content.palettes:register("KEP_NINETALES", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_NINETALES", "A proverb exists\nthat refers to\nits longevity:\n'NINETALES, 1,000\nyears, TOTARTLE,\n10,000 years.'")

    mod.content.pokemon:patch("NINETALES", {
        name = "NINETALES",
        dex = 76,

        types = {
            "FIRE",
        },

        baseStats = {
            hp = 73,
            attack = 76,
            defense = 75,
            speed = 100,
            special = 100,
        },

        catchRate = 75,
        baseExp = 178,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "EMBER",
            "TAIL_WHIP",
            "QUICK_ATTACK",
            "ROAR",
        },

        learnset = {},

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "FIRE_BLAST",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
        },

        icon = "QUADRUPED",
        palette = "KEP_NINETALES",
        cry = "NINETALES",

        spriteFront = mod.assets:path("assets/pokemon/generated/ninetales/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/ninetales/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "FOX",
            heightFt = 3,
            heightIn = 7,
            weight = 440,
            text = "KEP_DEX_NINETALES",
        },
    })
end
