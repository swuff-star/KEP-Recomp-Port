local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local kabutopsChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 1, 1, 0, 0 } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 5,
                        frequency = 1902,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1934,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 2,
                        frequency = 1966,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1998,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 2030,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1998,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1966,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1934,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 3, 3 } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 5,
                        frequency = 1823,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1887,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1919,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1952,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1919,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1887,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1855,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 3,
                        parameter = 58,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        parameter = 26,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        parameter = 26,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("KABUTOPS", {
        chip = kabutopsChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_KABUTOPS", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_KABUTOPS", "When it evolved,\nits nature turned\naggressive. The\nonly complete\nfossil was found\nonly 6 years ago")

    mod.content.pokemon:patch("KABUTOPS", {
        name = "KABUTOPS",
        dex = 228,

        types = {
            "ROCK",
            "WATER",
        },

        baseStats = {
            hp = 60,
            attack = 115,
            defense = 105,
            speed = 80,
            special = 70,
        },

        catchRate = 45,
        baseExp = 201,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "HARDEN",
            "ABSORB",
        },

        learnset = {
            { level = 21, move = "ROCK_THROW" },
            { level = 34, move = "ABSORB" },
            { level = 39, move = "SLASH" },
            { level = 46, move = "LEER" },
            { level = 53, move = "HYDRO_PUMP" },
        },

        evolutions = {},

        tmhm = {
            "RAZOR_WIND",
            "SWORDS_DANCE",
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
            "SEISMIC_TOSS",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
            "SURF",
        },

        icon = "HELIX",
        palette = "KEP_KABUTOPS",
        cry = "KABUTOPS",

        spriteFront = mod.assets:path("assets/pokemon/generated/kabutops/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/kabutops/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "SHELLFISH",
            heightFt = 4,
            heightIn = 3,
            weight = 890,
            text = "KEP_DEX_KABUTOPS",
        },
    })
end
