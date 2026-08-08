local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local wartortleChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 1829,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 0,
                        frequency = 1824,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        frequency = 1840,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1824,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1600,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1604,
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
                        frequency = 1763,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 10,
                        fade = 0,
                        frequency = 1761,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 4,
                        frequency = 1778,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1761,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 2,
                        frequency = 1537,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        frequency = 1544,
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
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 6,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 5,
                        parameter = 106,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 11,
                        fade = 2,
                        parameter = 123,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 108,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("WARTORTLE", {
        chip = wartortleChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_WARTORTLE", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_WARTORTLE", "Its fur-covered\ntail is a symbol\nof longevity.\nHighly popular as\na pet for its\ncute profile")

    mod.content.pokemon:patch("WARTORTLE", {
        name = "WARTORTLE",
        dex = 8,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 59,
            attack = 63,
            defense = 80,
            speed = 58,
            special = 65,
        },

        catchRate = 45,
        baseExp = 143,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "TAIL_WHIP",
            "BUBBLE",
        },

        learnset = {
            { level = 8, move = "BUBBLE" },
            { level = 15, move = "WATER_GUN" },
            { level = 20, move = "BITE" },
            { level = 23, move = "WITHDRAW" },
            { level = 28, move = "BUBBLEBEAM" },
            { level = 31, move = "TAKE_DOWN" },
            { level = 35, move = "BODY_SLAM" },
            { level = 39, move = "SKULL_BASH" },
            { level = 44, move = "MEGA_PUNCH" },
            { level = 48, move = "HYDRO_PUMP" },
            { level = 53, move = "DOUBLE_EDGE" },
            { level = 58, move = "MEGA_KICK" },
        },

        evolutions = {
            { method = "LEVEL", level = 36, species = "TOTARTLE" },
        },

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
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
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
        palette = "KEP_WARTORTLE",
        cry = "WARTORTLE",

        spriteFront = mod.assets:path("assets/pokemon/generated/wartortle/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/wartortle/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "TURTLE",
            heightFt = 3,
            heightIn = 3,
            weight = 500,
            text = "KEP_DEX_WARTORTLE",
        },
    })
end
