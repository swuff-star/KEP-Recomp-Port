local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local totartleChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 1797,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 0,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        frequency = 1808,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1568,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1572,
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
                        frequency = 1731,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 10,
                        fade = 0,
                        frequency = 1729,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 4,
                        frequency = 1746,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1729,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 2,
                        frequency = 1505,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        frequency = 1512,
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
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 6,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 5,
                        parameter = 74,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 11,
                        fade = 2,
                        parameter = 91,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 76,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("TOTARTLE", {
        chip = totartleChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_TOTARTLE", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_TOTARTLE", "Capable of living\nfor 10,000 years.\nTOTARTLE's shell\nbecomes slowly\ncovered in algae\nas it ages")

    mod.content.pokemon:register("TOTARTLE", {
        id = "TOTARTLE",
        name = "TOTARTLE",
        dex = 9,

        types = {
            "WATER",
            "GRASS",
        },

        baseStats = {
            hp = 79,
            attack = 83,
            defense = 85,
            speed = 78,
            special = 100,
        },

        catchRate = 45,
        baseExp = 209,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "TAIL_WHIP",
            "BUBBLE",
            "LEER",
        },

        learnset = {
            { level = 8, move = "BUBBLE" },
            { level = 15, move = "WATER_GUN" },
            { level = 20, move = "BITE" },
            { level = 23, move = "WITHDRAW" },
            { level = 28, move = "BUBBLEBEAM" },
            { level = 31, move = "TAKE_DOWN" },
            { level = 35, move = "BODY_SLAM" },
            { level = 42, move = "SKULL_BASH" },
            { level = 45, move = "COMET_PUNCH" },
            { level = 49, move = "MEGA_PUNCH" },
            { level = 53, move = "HYDRO_PUMP" },
            { level = 57, move = "DOUBLE_EDGE" },
            { level = 62, move = "MEGA_KICK" },
            { level = 66, move = "PETAL_DANCE" },
            { level = 70, move = "BLIZZARD" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "WATER",
        palette = "KEP_TOTARTLE",
        cry = "TOTARTLE",

        spriteFront = mod.assets:path("assets/pokemon/generated/totartle/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/totartle/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "TURTLE",
            heightFt = 5,
            heightIn = 11,
            weight = 2190,
            text = "KEP_DEX_TOTARTLE",
        },
    })
end
