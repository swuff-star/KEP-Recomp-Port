local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local koffingChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 13,
                        volume = 15,
                        fade = 2,
                        frequency = 1318,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 3,
                        frequency = 1414,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 2,
                        frequency = 1398,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1382,
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
                        frequency = 1310,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 6,
                        frequency = 1406,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1390,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1374,
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
                        parameter = 82,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        parameter = 66,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        parameter = 82,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 66,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("KOFFING", {
        chip = koffingChip.chip,
        pitch = 0,
        length = 221,
    })

    mod.content.palettes:register("KEP_KOFFING", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_KOFFING", "The toxic gases\nthat it emits can\ninduce tears.\nIt was originally\ndiscovered in a\nmunitions factory")

    mod.content.pokemon:patch("KOFFING", {
        name = "KOFFING",
        dex = 168,

        types = {
            "POISON",
        },

        baseStats = {
            hp = 40,
            attack = 65,
            defense = 95,
            speed = 35,
            special = 60,
        },

        catchRate = 190,
        baseExp = 114,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "SMOG",
        },

        learnset = {
            { level = 17, move = "SLUDGE" },
            { level = 21, move = "SMOKESCREEN" },
            { level = 25, move = "SELFDESTRUCT" },
            { level = 33, move = "HAZE" },
            { level = 41, move = "EXPLOSION" },
        },

        evolutions = {
            { method = "LEVEL", level = 35, species = "WEEZING" },
        },

        tmhm = {
            "TOXIC",
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
        palette = "KEP_KOFFING",
        cry = "KOFFING",

        spriteFront = mod.assets:path("assets/pokemon/generated/koffing/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/koffing/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "POISON GAS",
            heightFt = 2,
            heightIn = 0,
            weight = 20,
            text = "KEP_DEX_KOFFING",
        },
    })
end
