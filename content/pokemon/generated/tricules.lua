local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local triculesChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 1, 3, 2 } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 1867,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 1,
                        frequency = 1611,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 1867,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 1,
                        frequency = 1611,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 1867,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 1,
                        frequency = 1611,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 1867,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 1,
                        frequency = 1611,
                    } },
                    { duty = 0 },
                    { squareNote = {
                        len = 5,
                        volume = 7,
                        fade = 0,
                        frequency = 395,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 7,
                        fade = 0,
                        frequency = 347,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1611,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 2,
                        frequency = 1611,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 3, 0, 2 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 0,
                        frequency = 299,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 0,
                        frequency = 331,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 0,
                        frequency = 443,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 0,
                        frequency = 395,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 347,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 2,
                        frequency = 347,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 5,
                        volume = 8,
                        fade = 0,
                        parameter = 152,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 0,
                        parameter = 147,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 0,
                        parameter = 148,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 9,
                        fade = 0,
                        parameter = 101,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 9,
                        fade = 0,
                        parameter = 103,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        parameter = 134,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 2,
                        parameter = 134,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("TRICULES", {
        chip = triculesChip.chip,
        pitch = 0,
        length = 228,
    })

    mod.content.palettes:register("KEP_TRICULES", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_TRICULES", "Withstands foes'\nattacks with its\nsturdy body, then\npinches them in\nits horns before\nflipping them")

    mod.content.pokemon:register("TRICULES", {
        id = "TRICULES",
        name = "TRICULES",
        dex = 200,

        types = {
            "BUG",
            "STEEL",
        },

        baseStats = {
            hp = 65,
            attack = 125,
            defense = 140,
            speed = 45,
            special = 55,
        },

        catchRate = 25,
        baseExp = 209,
        growthRate = "SLOW",

        level1Moves = {
            "VICEGRIP",
            "HARDEN",
        },

        learnset = {
            { level = 21, move = "BIND" },
            { level = 25, move = "SMART_STRIKE" },
            { level = 30, move = "GUILLOTINE" },
            { level = 36, move = "FOCUS_ENERGY" },
            { level = 43, move = "IRON_DEFENSE" },
            { level = 49, move = "SLASH" },
            { level = 54, move = "SWORDS_DANCE" },
        },

        evolutions = {},

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "SUBMISSION",
            "SEISMIC_TOSS",
            "RAGE",
            "EARTHQUAKE",
            "FISSURE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "REST",
            "SUBSTITUTE",
            "CUT",
            "STRENGTH",
        },

        icon = "BUG",
        palette = "KEP_TRICULES",
        cry = "TRICULES",

        spriteFront = mod.assets:path("assets/pokemon/generated/tricules/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/tricules/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "BIG HORN",
            heightFt = 5,
            heightIn = 11,
            weight = 2540,
            text = "KEP_DEX_TRICULES",
        },
    })
end
