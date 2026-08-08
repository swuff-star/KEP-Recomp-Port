local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local tauros_pbChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 1814,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 0,
                        frequency = 1809,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1809,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1585,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1589,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 2, 0, 2 } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 0,
                        frequency = 1748,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 10,
                        fade = 0,
                        frequency = 1746,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 4,
                        frequency = 1763,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1746,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 2,
                        frequency = 1522,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        frequency = 1529,
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
                        fade = 6,
                        parameter = 93,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 6,
                        parameter = 77,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 5,
                        parameter = 91,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 11,
                        fade = 2,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 93,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("TAUROS_PB", {
        chip = tauros_pbChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_TAUROS_PB", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_TAUROS_PB", "People often call\nthis TAUROS the\nBlaze Breed, due\nto its ability to\nheat up its horns\nand expel hot air")

    mod.content.pokemon:register("TAUROS_PB", {
        id = "TAUROS_PB",
        name = "TAUROS",
        dex = 205,

        types = {
            "FIGHTING",
            "FIRE",
        },

        baseStats = {
            hp = 75,
            attack = 110,
            defense = 105,
            speed = 100,
            special = 70,
        },

        catchRate = 45,
        baseExp = 211,
        growthRate = "SLOW",

        level1Moves = {
            "DOUBLE_KICK",
            "TAIL_WHIP",
        },

        learnset = {
            { level = 21, move = "LOW_KICK" },
            { level = 28, move = "LEER" },
            { level = 35, move = "FLAMETHROWER" },
            { level = 44, move = "RAGE" },
            { level = 51, move = "FIRE_SPIN" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "EARTHQUAKE",
            "FISSURE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "QUADRUPED",
        palette = "KEP_TAUROS_PB",
        cry = "TAUROS_PB",

        spriteFront = mod.assets:path("assets/pokemon/generated/tauros_pb/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/tauros_pb/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "WILD BULL",
            heightFt = 4,
            heightIn = 7,
            weight = 1870,
            text = "KEP_DEX_TAUROS_PB",
        },
    })
end
