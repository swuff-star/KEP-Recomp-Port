local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local muk_aChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 3,
                        frequency = 1999,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 4,
                        frequency = 1839,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1807,
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
                        frequency = 1906,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 11,
                        fade = 4,
                        frequency = 1777,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1776,
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
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 14,
                        fade = 6,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        parameter = 75,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("MUK_A", {
        chip = muk_aChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_MUK_A", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MUK_A", "Its body contains\nover 100 different\nkinds of poison.\nWhile friendly,\nit must be fed\na lot of trash")

    mod.content.pokemon:register("MUK_A", {
        id = "MUK_A",
        name = "MUK",
        dex = 167,

        types = {
            "POISON",
            "DARK",
        },

        baseStats = {
            hp = 105,
            attack = 105,
            defense = 75,
            speed = 50,
            special = 65,
        },

        catchRate = 75,
        baseExp = 157,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "POUND",
            "DISABLE",
            "POISON_GAS",
        },

        learnset = {
            { level = 11, move = "POISON_GAS" },
            { level = 15, move = "MINIMIZE" },
            { level = 19, move = "SLUDGE" },
            { level = 24, move = "BRUTAL_SWING" },
            { level = 29, move = "HARDEN" },
            { level = 35, move = "SCREECH" },
            { level = 46, move = "NIGHT_SLASH" },
            { level = 53, move = "ACID_ARMOR" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "HYPER_BEAM",
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
        palette = "KEP_MUK_A",
        cry = "MUK_A",

        spriteFront = mod.assets:path("assets/pokemon/generated/muk_a/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/muk_a/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "SLUDGE",
            heightFt = 3,
            heightIn = 3,
            weight = 1150,
            text = "KEP_DEX_MUK_A",
        },
    })
end
