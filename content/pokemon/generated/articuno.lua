local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local articunoChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 32,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        frequency = 35,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 4,
                        frequency = 32,
                    } },
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 6,
                        frequency = 88,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 3,
                        frequency = 87,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 88,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 3,
                        volume = 0,
                        fade = 0,
                        frequency = 128,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 7,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 6,
                        frequency = 1826,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 7,
                        fade = 4,
                        frequency = 1825,
                    } },
                    { dutyPattern = { 1, 1, 3, 3 } },
                    { squareNote = {
                        len = 11,
                        volume = 7,
                        fade = 6,
                        frequency = 1878,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 8,
                        fade = 3,
                        frequency = 1881,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1879,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 190,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 12,
                        fade = 5,
                        parameter = 187,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 4,
                        parameter = 189,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 6,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 4,
                        parameter = 189,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        parameter = 187,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("ARTICUNO", {
        chip = articunoChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_ARTICUNO", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ARTICUNO", "Folklore states\nthat those who\nsee ARTICUNO will\ndie rooted to\nthe spot, caught\nup in its beauty")

    mod.content.pokemon:patch("ARTICUNO", {
        name = "ARTICUNO",
        dex = 242,

        types = {
            "ICE",
            "FLYING",
        },

        baseStats = {
            hp = 90,
            attack = 85,
            defense = 100,
            speed = 85,
            special = 125,
        },

        catchRate = 3,
        baseExp = 215,
        growthRate = "SLOW",

        level1Moves = {
            "PECK",
            "ICE_BEAM",
            "POWDER_SNOW",
        },

        learnset = {
            { level = 51, move = "BLIZZARD" },
            { level = 55, move = "AGILITY" },
            { level = 60, move = "MIST" },
        },

        evolutions = {},

        tmhm = {
            "RAZOR_WIND",
            "WHIRLWIND",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKY_ATTACK",
            "REST",
            "SUBSTITUTE",
            "FLY",
        },

        icon = "BIRD",
        palette = "KEP_ARTICUNO",
        cry = "ARTICUNO",

        spriteFront = mod.assets:path("assets/pokemon/generated/articuno/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/articuno/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "FREEZE",
            heightFt = 5,
            heightIn = 7,
            weight = 1220,
            text = "KEP_DEX_ARTICUNO",
        },
    })
end
