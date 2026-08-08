local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local dittoChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 2047,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 127,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 63,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1791,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 6,
                        fade = 2,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1760,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 49,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 32,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        parameter = 16,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("DITTO", {
        chip = dittoChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_DITTO", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_DITTO", "Capable of copying\nan enemy's genetic\ncode to instantly\ntransform itself\ninto a duplicate\nof the enemy")

    mod.content.pokemon:patch("DITTO", {
        name = "DITTO",
        dex = 220,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 48,
            attack = 48,
            defense = 48,
            speed = 48,
            special = 48,
        },

        catchRate = 35,
        baseExp = 61,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TRANSFORM",
        },

        learnset = {},

        evolutions = {
            { method = "ITEM", item = "METAL_COAT", species = "MIMMEO" },
        },

        tmhm = {},

        icon = "MON",
        palette = "KEP_DITTO",
        cry = "DITTO",

        spriteFront = mod.assets:path("assets/pokemon/generated/ditto/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/ditto/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "TRANSFORM",
            heightFt = 1,
            heightIn = 0,
            weight = 90,
            text = "KEP_DEX_DITTO",
        },
    })
end
