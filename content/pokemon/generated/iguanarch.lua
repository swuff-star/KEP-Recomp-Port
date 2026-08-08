local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local iguanarchChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 2018,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1680,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 5,
                        frequency = 1664,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1632,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 7,
                        frequency = 1953,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        frequency = 1952,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1633,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1618,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1601,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1570,
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
                        fade = 4,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 7,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 125,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("IGUANARCH", {
        chip = iguanarchChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_IGUANARCH", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_IGUANARCH", "Highly aggressive,\nit drives other\nPOKéMON away with\nits strong tail\nbefore finishing\nthem with SLASH")

    mod.content.pokemon:register("IGUANARCH", {
        id = "IGUANARCH",
        name = "IGUANARCH",
        dex = 238,

        types = {
            "DRAGON",
        },

        baseStats = {
            hp = 102,
            attack = 93,
            defense = 76,
            speed = 108,
            special = 121,
        },

        catchRate = 9,
        baseExp = 210,
        growthRate = "SLOW",

        level1Moves = {
            "SCRATCH",
            "TAIL_WHIP",
            "LEER",
            "BITE",
        },

        learnset = {
            { level = 10, move = "LEER" },
            { level = 20, move = "BITE" },
            { level = 35, move = "GLARE" },
            { level = 45, move = "DRAGON_RAGE" },
            { level = 60, move = "SLASH" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "HYPER_BEAM",
            "RAGE",
            "DRAGON_RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "CUT",
            "SURF",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_IGUANARCH",
        cry = "IGUANARCH",

        spriteFront = mod.assets:path("assets/pokemon/generated/iguanarch/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/iguanarch/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "HOSTILE",
            heightFt = 8,
            heightIn = 6,
            weight = 3130,
            text = "KEP_DEX_IGUANARCH",
        },
    })
end
