local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local steelixChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 0, 2 } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 128,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 128,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 128,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 1440,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 1440,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 1440,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 1440,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 1440,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 1440,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1408,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1344,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1408,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1344,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1408,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1344,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1408,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1344,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1408,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1344,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1408,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1344,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 1376,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 1328,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 1376,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 1328,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 1376,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 1328,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 1376,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 1328,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 1376,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 1328,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 1376,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 1328,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 1,
                        frequency = 1296,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 2,
                        fade = 1,
                        frequency = 1264,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 1,
                        frequency = 1296,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 2,
                        fade = 1,
                        frequency = 1264,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 1,
                        frequency = 1296,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 2,
                        fade = 1,
                        frequency = 1264,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 1,
                        frequency = 1296,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 2,
                        fade = 1,
                        frequency = 1264,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 3, 2, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = -1,
                        frequency = 47,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = -1,
                        frequency = 53,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 6,
                        frequency = 124,
                    } },
                    { squareNote = {
                        len = 1,
                        volume = 15,
                        fade = 6,
                        frequency = 124,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 0,
                        frequency = 128,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 0,
                        frequency = 124,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 0,
                        frequency = 118,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        frequency = 114,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 2,
                        frequency = 114,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 16,
                        volume = 10,
                        fade = 6,
                        parameter = 5,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 10,
                        fade = 6,
                        parameter = 5,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 9,
                        fade = 0,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 0,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 9,
                        fade = 0,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 9,
                        fade = 0,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 9,
                        fade = 0,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 7,
                        fade = 5,
                        parameter = 78,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 7,
                        fade = 5,
                        parameter = 78,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 7,
                        fade = 5,
                        parameter = 78,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("STEELIX", {
        chip = steelixChip.chip,
        pitch = 0,
        length = 119,
    })

    mod.content.palettes:register("KEP_STEELIX", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_STEELIX", "Its hard, metallic\nbody cannot be\nscratched. Using\nits sturdy jaws,\nit can easily\ncrush boulders")

    mod.content.pokemon:register("STEELIX", {
        id = "STEELIX",
        name = "STEELIX",
        dex = 128,

        types = {
            "STEEL",
            "GROUND",
        },

        baseStats = {
            hp = 75,
            attack = 85,
            defense = 200,
            speed = 30,
            special = 55,
        },

        catchRate = 25,
        baseExp = 196,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "SCREECH",
        },

        learnset = {
            { level = 8, move = "IRON_DEFENSE" },
            { level = 15, move = "BIND" },
            { level = 19, move = "ROCK_THROW" },
            { level = 25, move = "RAGE" },
            { level = 33, move = "SLAM" },
            { level = 38, move = "IRON_HEAD" },
            { level = 43, move = "HARDEN" },
            { level = 50, move = "FISSURE" },
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
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SELFDESTRUCT",
            "SKULL_BASH",
            "REST",
            "EXPLOSION",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "CUT",
            "STRENGTH",
        },

        icon = "SNAKE",
        palette = "KEP_STEELIX",
        cry = "STEELIX",

        spriteFront = mod.assets:path("assets/pokemon/generated/steelix/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/steelix/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "IRON SNAKE",
            heightFt = 30,
            heightIn = 2,
            weight = 8820,
            text = "KEP_DEX_STEELIX",
        },
    })
end
