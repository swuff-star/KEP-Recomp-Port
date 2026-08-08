local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local sylveonChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 7,
                        frequency = 2013,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        frequency = 2018,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 4,
                        frequency = 2013,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 6,
                        frequency = 1997,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 3,
                        frequency = 1981,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 1965,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1989,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 0,
                        fade = 0,
                        frequency = 253,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 7,
                        frequency = 1950,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 6,
                        frequency = 1952,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 7,
                        fade = 4,
                        frequency = 1950,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 7,
                        fade = 6,
                        frequency = 1934,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 8,
                        fade = 3,
                        frequency = 1919,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 10,
                        fade = 2,
                        frequency = 1902,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 7,
                        fade = 2,
                        frequency = 1926,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        parameter = 57,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 7,
                        parameter = 57,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 5,
                        parameter = 56,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 13,
                        fade = 4,
                        parameter = 41,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 11,
                        fade = 6,
                        parameter = 57,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 10,
                        fade = 4,
                        parameter = 41,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 57,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("SYLVEON", {
        chip = sylveonChip.chip,
        pitch = 0,
        length = 239,
    })

    mod.content.palettes:register("KEP_SYLVEON", {
        { 255, 255, 255 },
        { 255, 123, 123 },
        { 90, 189, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SYLVEON", "This POKéMON uses\nits ribbonlike\nfeelers to emit\na soothing aura\nthat calms any\nhostile emotions")

    mod.content.pokemon:register("SYLVEON", {
        id = "SYLVEON",
        name = "SYLVEON",
        dex = 22,

        types = {
            "FAIRY",
        },

        baseStats = {
            hp = 95,
            attack = 65,
            defense = 65,
            speed = 60,
            special = 130,
        },

        catchRate = 45,
        baseExp = 196,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "SAND_ATTACK",
            "QUICK_ATTACK",
            "DISARMING_VOICE",
        },

        learnset = {
            { level = 8, move = "SAND_ATTACK" },
            { level = 16, move = "DISARMING_VOICE" },
            { level = 23, move = "QUICK_ATTACK" },
            { level = 30, move = "DRAININGKISS" },
            { level = 36, move = "DAZZLE_GLEAM" },
            { level = 42, move = "TAKE_DOWN" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/cat.png"),
            frames = 2,
        },
        palette = "KEP_SYLVEON",
        cry = "SYLVEON",

        spriteFront = mod.assets:path("assets/pokemon/generated/sylveon/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/sylveon/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "INTERTWINE",
            heightFt = 3,
            heightIn = 3,
            weight = 520,
            text = "KEP_DEX_SYLVEON",
        },
    })
end
