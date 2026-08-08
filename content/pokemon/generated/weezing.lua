local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local weezingChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 13,
                        volume = 15,
                        fade = 2,
                        frequency = 1343,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 3,
                        frequency = 1439,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 2,
                        frequency = 1423,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1407,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 2, 3, 2 } },
                    { squareNote = {
                        len = 12,
                        volume = 13,
                        fade = 2,
                        frequency = 1335,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 6,
                        frequency = 1431,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1415,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1399,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 11,
                        volume = 14,
                        fade = 6,
                        parameter = 107,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        parameter = 91,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        parameter = 107,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 91,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("WEEZING", {
        chip = weezingChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_WEEZING", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_WEEZING", "A rare mutation\ncaused 2 KOFFING\nto fuse together.\nResearchers are\ntrying to bleach\nits toxicity")

    mod.content.pokemon:patch("WEEZING", {
        name = "WEEZING",
        dex = 169,

        types = {
            "POISON",
        },

        baseStats = {
            hp = 65,
            attack = 90,
            defense = 120,
            speed = 60,
            special = 85,
        },

        catchRate = 60,
        baseExp = 173,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "SMOG",
            "SLUDGE",
        },

        learnset = {
            { level = 17, move = "SLUDGE" },
            { level = 21, move = "SMOKESCREEN" },
            { level = 25, move = "SELFDESTRUCT" },
            { level = 33, move = "HAZE" },
            { level = 46, move = "EXPLOSION" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "HYPER_BEAM",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SELFDESTRUCT",
            "FIRE_BLAST",
            "REST",
            "EXPLOSION",
            "SUBSTITUTE",
        },

        icon = "MON",
        palette = "KEP_WEEZING",
        cry = "WEEZING",

        spriteFront = mod.assets:path("assets/pokemon/generated/weezing/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/weezing/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "POISON GAS",
            heightFt = 3,
            heightIn = 11,
            weight = 210,
            text = "KEP_DEX_WEEZING",
        },
    })
end
