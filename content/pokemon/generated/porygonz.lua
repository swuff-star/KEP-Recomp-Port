local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local porygonzChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1823,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 1823,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        frequency = 1887,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 2,
                        frequency = 1887,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        frequency = 1951,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 2,
                        frequency = 1951,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        frequency = 2015,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 2,
                        frequency = 2015,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        frequency = 31,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 2,
                        frequency = 31,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 95,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 95,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 2,
                        frequency = 159,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 2,
                        frequency = 159,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 1,
                        frequency = 223,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 10,
                        fade = 1,
                        frequency = 223,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 1, 0, 1 } },
                    { squareNote = {
                        len = 12,
                        volume = 0,
                        fade = 0,
                        frequency = 288,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 2,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 2,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 10,
                        fade = 2,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 2,
                        frequency = 1953,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 2,
                        frequency = 1953,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 2017,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 10,
                        fade = 2,
                        frequency = 2017,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 9,
                        fade = 2,
                        frequency = 32,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 2,
                        frequency = 32,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 97,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 10,
                        fade = 2,
                        frequency = 97,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 8,
                        fade = 1,
                        frequency = 160,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 8,
                        fade = 1,
                        frequency = 160,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 0,
                        fade = 0,
                        parameter = 32,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        parameter = 123,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        parameter = 107,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 2,
                        parameter = 91,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 11,
                        fade = 2,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 10,
                        fade = 2,
                        parameter = 58,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 9,
                        fade = 2,
                        parameter = 57,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        parameter = 55,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("PORYGONZ", {
        chip = porygonzChip.chip,
        pitch = 0,
        length = 45,
    })

    mod.content.palettes:register("KEP_PORYGONZ", {
        { 255, 255, 255 },
        { 247, 140, 90 },
        { 90, 41, 115 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PORYGONZ", "Corrupted by a\nfaulty update\nadded to it, this\nPOKéMON exhibits\nstrange behaviour\nand movements")

    mod.content.pokemon:register("PORYGONZ", {
        id = "PORYGONZ",
        name = "PORYGON-Z",
        dex = 224,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 85,
            attack = 80,
            defense = 70,
            speed = 90,
            special = 135,
        },

        catchRate = 30,
        baseExp = 185,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "SHARPEN",
            "CONVERSION",
        },

        learnset = {
            { level = 50, move = "NASTY_PLOT" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "FLASH",
        },

        icon = "BALL",
        palette = "KEP_PORYGONZ",
        cry = "PORYGONZ",

        spriteFront = mod.assets:path("assets/pokemon/generated/porygonz/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/porygonz/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "VIRTUAL",
            heightFt = 2,
            heightIn = 11,
            weight = 750,
            text = "KEP_DEX_PORYGONZ",
        },
    })
end
