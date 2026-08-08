local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local flareonChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 7,
                        frequency = 1872,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 1876,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 5,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 1904,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 1936,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1968,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 7,
                        frequency = 1809,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 11,
                        fade = 6,
                        frequency = 1810,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1841,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 3,
                        frequency = 1873,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1906,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 7,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 14,
                        fade = 2,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 60,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("FLAREON", {
        chip = flareonChip.chip,
        pitch = 0,
        length = 32,
    })

    mod.content.palettes:register("KEP_FLAREON", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_FLAREON", "It has a flame\nsac in its body.\nAfter inhaling,\nit blows out\nflames that reach")

    mod.content.pokemon:patch("FLAREON", {
        name = "FLAREON",
        dex = 17,

        types = {
            "FIRE",
        },

        baseStats = {
            hp = 65,
            attack = 130,
            defense = 60,
            speed = 65,
            special = 110,
        },

        catchRate = 45,
        baseExp = 198,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "SAND_ATTACK",
            "QUICK_ATTACK",
            "EMBER",
        },

        learnset = {
            { level = 8, move = "SAND_ATTACK" },
            { level = 16, move = "EMBER" },
            { level = 23, move = "QUICK_ATTACK" },
            { level = 30, move = "BITE" },
            { level = 36, move = "FIRE_SPIN" },
            { level = 42, move = "SMOG" },
            { level = 44, move = "RAGE" },
            { level = 47, move = "LEER" },
            { level = 52, move = "FLAMETHROWER" },
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
            "FIRE_BLAST",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/cat.png"),
            frames = 2,
        },
        palette = "KEP_FLAREON",
        cry = "FLAREON",

        spriteFront = mod.assets:path("assets/pokemon/generated/flareon/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/flareon/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "FLAME",
            heightFt = 2,
            heightIn = 11,
            weight = 550,
            text = "KEP_DEX_FLAREON",
        },
    })
end
