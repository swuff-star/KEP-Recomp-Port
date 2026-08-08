local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local zapdosChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 1, 1, 0, 0 } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 5,
                        frequency = 1919,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1951,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 2,
                        frequency = 1983,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 2015,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 2047,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 2015,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1983,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1951,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 3, 3 } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 5,
                        frequency = 1840,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1873,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1904,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1936,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1969,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1936,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1904,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1872,
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
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        parameter = 43,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        parameter = 43,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("ZAPDOS", {
        chip = zapdosChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_ZAPDOS", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ZAPDOS", "Said to be the\ndivine bird that\npresides over the\nheavens, ZAPDOS\nspends milennia\nabove the clouds")

    mod.content.pokemon:patch("ZAPDOS", {
        name = "ZAPDOS",
        dex = 244,

        types = {
            "ELECTRIC",
            "FLYING",
        },

        baseStats = {
            hp = 90,
            attack = 90,
            defense = 85,
            speed = 100,
            special = 125,
        },

        catchRate = 3,
        baseExp = 216,
        growthRate = "SLOW",

        level1Moves = {
            "THUNDERSHOCK",
            "DRILL_PECK",
            "THUNDERBOLT",
        },

        learnset = {
            { level = 51, move = "THUNDER" },
            { level = 55, move = "AGILITY" },
            { level = 60, move = "LIGHT_SCREEN" },
        },

        evolutions = {},

        tmhm = {
            "RAZOR_WIND",
            "WHIRLWIND",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKY_ATTACK",
            "REST",
            "THUNDER_WAVE",
            "SUBSTITUTE",
            "FLY",
            "FLASH",
        },

        icon = "BIRD",
        palette = "KEP_ZAPDOS",
        cry = "ZAPDOS",

        spriteFront = mod.assets:path("assets/pokemon/generated/zapdos/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/zapdos/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "ELECTRIC",
            heightFt = 5,
            heightIn = 3,
            weight = 1160,
            text = "KEP_DEX_ZAPDOS",
        },
    })
end
