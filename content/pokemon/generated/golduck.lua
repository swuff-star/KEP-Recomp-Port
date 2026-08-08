local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local golduckChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 2, 3 } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 3,
                        frequency = 1635,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 14,
                        fade = 2,
                        frequency = 1603,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 13,
                        fade = 1,
                        frequency = 1569,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1411,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1441,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 3,
                        frequency = 1571,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        frequency = 1507,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1537,
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
                        frequency = 1631,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1599,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 12,
                        fade = 1,
                        frequency = 1567,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 1407,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1439,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 3,
                        frequency = 1567,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 4,
                        frequency = 1503,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1535,
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

    mod.content.cries:override("GOLDUCK", {
        chip = golduckChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_GOLDUCK", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GOLDUCK", "Its webbed hands\nand feet make it\na superb swimmer.\nAt top speed, it\ncan even overtake\na motorboat")

    mod.content.pokemon:patch("GOLDUCK", {
        name = "GOLDUCK",
        dex = 98,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 80,
            attack = 82,
            defense = 78,
            speed = 85,
            special = 80,
        },

        catchRate = 75,
        baseExp = 174,
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
            { level = 42, move = "FURY_SWIPES" },
            { level = 47, move = "PSYBEAM" },
            { level = 52, move = "HYDRO_PUMP" },
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
        palette = "KEP_GOLDUCK",
        cry = "GOLDUCK",

        spriteFront = mod.assets:path("assets/pokemon/generated/golduck/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/golduck/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "DUCK",
            heightFt = 5,
            heightIn = 7,
            weight = 1690,
            text = "KEP_DEX_GOLDUCK",
        },
    })
end
