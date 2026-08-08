local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local arcanineChip = ChipAsm.sfx({
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

    mod.content.cries:override("ARCANINE", {
        chip = arcanineChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_ARCANINE", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ARCANINE", "Often depicted in\nChinese folklore\nand legends, this\nPOKéMON is capable\nof outrunning\na racing car")

    mod.content.pokemon:patch("ARCANINE", {
        name = "ARCANINE",
        dex = 111,

        types = {
            "FIRE",
        },

        baseStats = {
            hp = 90,
            attack = 110,
            defense = 80,
            speed = 95,
            special = 80,
        },

        catchRate = 75,
        baseExp = 213,
        growthRate = "SLOW",

        level1Moves = {
            "ROAR",
            "EMBER",
            "LEER",
            "TAKE_DOWN",
        },

        learnset = {},

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "DRAGON_RAGE",
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
            "SUBSTITUTE",
        },

        icon = "QUADRUPED",
        palette = "KEP_ARCANINE",
        cry = "ARCANINE",

        spriteFront = mod.assets:path("assets/pokemon/generated/arcanine/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/arcanine/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "LEGENDARY",
            heightFt = 6,
            heightIn = 3,
            weight = 3420,
            text = "KEP_DEX_ARCANINE",
        },
    })
end
