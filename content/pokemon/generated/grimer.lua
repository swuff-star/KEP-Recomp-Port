local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local grimerChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1280,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 3,
                        frequency = 1408,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 3,
                        frequency = 1392,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1376,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1154,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 3,
                        frequency = 1281,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1250,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        frequency = 1217,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("GRIMER", {
        chip = grimerChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_GRIMER", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GRIMER", "Sludge mutated by\nx-rays from the\nmoon eventually\nbecame GRIMER.\nLoves to feed on\nfilthy things")

    mod.content.pokemon:patch("GRIMER", {
        name = "GRIMER",
        dex = 165,

        types = {
            "POISON",
        },

        baseStats = {
            hp = 80,
            attack = 80,
            defense = 50,
            speed = 25,
            special = 40,
        },

        catchRate = 190,
        baseExp = 90,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "POUND",
            "DISABLE",
        },

        learnset = {
            { level = 11, move = "POISON_GAS" },
            { level = 15, move = "ACID" },
            { level = 19, move = "MINIMIZE" },
            { level = 24, move = "SLUDGE" },
            { level = 29, move = "HARDEN" },
            { level = 35, move = "SCREECH" },
            { level = 41, move = "ACID_ARMOR" },
            { level = 47, move = "HAZE" },
        },

        evolutions = {
            { method = "LEVEL", level = 38, species = "MUK" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "RAGE",
            "MEGA_DRAIN",
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
        palette = "KEP_GRIMER",
        cry = "GRIMER",

        spriteFront = mod.assets:path("assets/pokemon/generated/grimer/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/grimer/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "SLUDGE",
            heightFt = 2,
            heightIn = 11,
            weight = 660,
            text = "KEP_DEX_GRIMER",
        },
    })
end
