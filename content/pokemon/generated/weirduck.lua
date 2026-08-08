local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local weirduckChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 2, 3 } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 3,
                        frequency = 1527,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 14,
                        fade = 2,
                        frequency = 1495,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 13,
                        fade = 1,
                        frequency = 1461,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1303,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1333,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 3,
                        frequency = 1463,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        frequency = 1399,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1429,
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
                        volume = 13,
                        fade = 3,
                        frequency = 1523,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1491,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 12,
                        fade = 1,
                        frequency = 1459,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 1299,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1331,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 3,
                        frequency = 1459,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 4,
                        frequency = 1395,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1427,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("WEIRDUCK", {
        chip = weirduckChip.chip,
        pitch = 0,
        length = 80,
    })

    mod.content.palettes:register("KEP_WEIRDUCK", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_WEIRDUCK", "WEIRDUCK exhibits\nodd mannerisms as\nit attempts to\nkeep its still-\ndeveloping PSI\nunder control")

    mod.content.pokemon:register("WEIRDUCK", {
        id = "WEIRDUCK",
        name = "WEIRDUCK",
        dex = 97,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 65,
            attack = 67,
            defense = 63,
            speed = 70,
            special = 65,
        },

        catchRate = 120,
        baseExp = 122,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "WATER_GUN",
            "TAIL_WHIP",
            "AMNESIA",
        },

        learnset = {
            { level = 12, move = "TAIL_WHIP" },
            { level = 15, move = "AMNESIA" },
            { level = 22, move = "SUPERSONIC" },
            { level = 25, move = "DISABLE" },
            { level = 28, move = "CONFUSION" },
            { level = 32, move = "GLARE" },
            { level = 39, move = "FURY_SWIPES" },
            { level = 41, move = "PSYBEAM" },
            { level = 46, move = "HYDRO_PUMP" },
        },

        evolutions = {
            { method = "LEVEL", level = 33, species = "GOLDUCK" },
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
            "PAY_DAY",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_WEIRDUCK",
        cry = "WEIRDUCK",

        spriteFront = mod.assets:path("assets/pokemon/generated/weirduck/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/weirduck/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "DUCK",
            heightFt = 3,
            heightIn = 3,
            weight = 710,
            text = "KEP_DEX_WEIRDUCK",
        },
    })
end
