local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local gentlarvaChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 3,
                        frequency = 1923,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 4,
                        frequency = 1763,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1731,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 1830,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 11,
                        fade = 4,
                        frequency = 1701,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1700,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        parameter = 255,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 14,
                        fade = 6,
                        parameter = 239,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        parameter = 255,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("GENTLARVA", {
        chip = gentlarvaChip.chip,
        pitch = 0,
        length = 59,
    })

    mod.content.palettes:register("KEP_GENTLARVA", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GENTLARVA", "Closely related to\nWEEDLE. Due to the\nlack of a horn, it\nhides under tall\ntrees, gnawing on\ntheir roots")

    mod.content.pokemon:register("GENTLARVA", {
        id = "GENTLARVA",
        name = "GENTLARVA",
        dex = 40,

        types = {
            "BUG",
        },

        baseStats = {
            hp = 40,
            attack = 35,
            defense = 30,
            speed = 45,
            special = 25,
        },

        catchRate = 255,
        baseExp = 54,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "LEECH_LIFE",
            "STRING_SHOT",
        },

        learnset = {},

        evolutions = {
            { method = "LEVEL", level = 7, species = "PUPAL" },
        },

        tmhm = {},

        icon = "BUG",
        palette = "KEP_GENTLARVA",
        cry = "GENTLARVA",

        spriteFront = mod.assets:path("assets/pokemon/generated/gentlarva/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/gentlarva/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "GRUB",
            heightFt = 1,
            heightIn = 0,
            weight = 80,
            text = "KEP_DEX_GENTLARVA",
        },
    })
end
