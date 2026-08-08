local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local arcanine_hChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 3,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 7,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 3,
                        frequency = 1808,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 2,
                        frequency = 1776,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1760,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 1793,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 11,
                        fade = 7,
                        frequency = 1665,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 11,
                        fade = 3,
                        frequency = 1682,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 2,
                        frequency = 1665,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 2,
                        frequency = 1650,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1633,
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
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 13,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 12,
                        fade = 6,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 11,
                        fade = 3,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 10,
                        fade = 2,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        parameter = 108,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("ARCANINE_H", {
        chip = arcanine_hChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_ARCANINE_H", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ARCANINE_H", "Its body has a\nrock-like feel.\nIt dances around\nits foe, before\nbiting it in a")

    mod.content.pokemon:register("ARCANINE_H", {
        id = "ARCANINE_H",
        name = "ARCANINE",
        dex = 112,

        types = {
            "FIRE",
            "ROCK",
        },

        baseStats = {
            hp = 95,
            attack = 115,
            defense = 80,
            speed = 90,
            special = 80,
        },

        catchRate = 75,
        baseExp = 213,
        growthRate = "SLOW",

        level1Moves = {
            "BITE",
            "ROAR",
            "ROCK_THROW",
        },

        learnset = {
            { level = 10, move = "RAGE" },
            { level = 18, move = "EMBER" },
            { level = 23, move = "LEER" },
            { level = 30, move = "TAKE_DOWN" },
            { level = 35, move = "ROCK_SLIDE" },
            { level = 39, move = "AGILITY" },
            { level = 44, move = "DOUBLE_EDGE" },
            { level = 50, move = "FLAMETHROWER" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "DRAGON_RAGE",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "FIRE_BLAST",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
        },

        icon = "QUADRUPED",
        palette = "KEP_ARCANINE_H",
        cry = "ARCANINE_H",

        spriteFront = mod.assets:path("assets/pokemon/generated/arcanine_h/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/arcanine_h/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "LEGENDARY",
            heightFt = 6,
            heightIn = 7,
            weight = 3700,
            text = "KEP_DEX_ARCANINE_H",
        },
    })
end
