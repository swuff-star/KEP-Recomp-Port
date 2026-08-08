local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local perrserkerChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 1, 0, 2 } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 0,
                        frequency = 1491,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1480,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1472,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 1,
                        frequency = 1453,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 0,
                        frequency = 1625,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 0,
                        frequency = 1603,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1585,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 1585,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 2, 1, 3 } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 1751,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 1751,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 1751,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 1751,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 1751,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 1751,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 1751,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 1751,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 1715,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 1715,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 1715,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1712,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1712,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 9,
                        fade = 2,
                        frequency = 1720,
                    } },
                    { squareNote = {
                        len = 1,
                        volume = 9,
                        fade = 2,
                        frequency = 1720,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 1,
                        volume = 15,
                        fade = 1,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 15,
                        fade = 1,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 15,
                        fade = 1,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 15,
                        fade = 1,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 9,
                        fade = 1,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 10,
                        fade = 0,
                        parameter = 109,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 14,
                        fade = 1,
                        parameter = 110,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 2,
                        parameter = 114,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        parameter = 113,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        parameter = 112,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 10,
                        fade = 3,
                        parameter = 111,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 10,
                        fade = 3,
                        parameter = 111,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("PERRSERKER", {
        chip = perrserkerChip.chip,
        pitch = 0,
        length = 104,
    })

    mod.content.palettes:register("KEP_PERRSERKER", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PERRSERKER", "A savage POKéMON\nwith a body of\niron. It uses its\ndagger-like claws\nto tear into\nfoes in battle")

    mod.content.pokemon:register("PERRSERKER", {
        id = "PERRSERKER",
        name = "PERRSERKER",
        dex = 33,

        types = {
            "STEEL",
        },

        baseStats = {
            hp = 60,
            attack = 110,
            defense = 100,
            speed = 50,
            special = 60,
        },

        catchRate = 90,
        baseExp = 148,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "GROWL",
            "BITE",
            "SCREECH",
        },

        learnset = {
            { level = 5, move = "PAY_DAY" },
            { level = 8, move = "BITE" },
            { level = 12, move = "FURY_SWIPES" },
            { level = 21, move = "SMART_STRIKE" },
            { level = 26, move = "SCREECH" },
            { level = 35, move = "METAL_SOUND" },
            { level = 40, move = "SLASH" },
            { level = 46, move = "IRON_HEAD" },
        },

        evolutions = {},

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "HYPER_BEAM",
            "PAY_DAY",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "DIG",
            "MIMIC",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/cat.png"),
            frames = 2,
        },
        palette = "KEP_PERRSERKER",
        cry = "PERRSERKER",

        spriteFront = mod.assets:path("assets/pokemon/generated/perrserker/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/perrserker/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "VIKING",
            heightFt = 2,
            heightIn = 7,
            weight = 620,
            text = "KEP_DEX_PERRSERKER",
        },
    })
end
