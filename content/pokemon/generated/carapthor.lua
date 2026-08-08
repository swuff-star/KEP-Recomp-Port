local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local carapthorChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 14,
                        volume = 15,
                        fade = 1,
                        frequency = 1542,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 1,
                        frequency = 1546,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 1,
                        frequency = 1542,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1542,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 1, 1, 1 } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 1,
                        frequency = 1537,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 1,
                        frequency = 1541,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 1,
                        frequency = 1537,
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
                    { noiseNote = {
                        len = 15,
                        volume = 15,
                        fade = 2,
                        parameter = 90,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 14,
                        fade = 2,
                        parameter = 74,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 13,
                        fade = 2,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 91,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("CARAPTHOR", {
        chip = carapthorChip.chip,
        pitch = 0,
        length = 160,
    })

    mod.content.palettes:register("KEP_CARAPTHOR", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_CARAPTHOR", "It's often called\nthe Forest Gent.\nCARAPTHOR strolls\naround forests\nwith swagger, to\nBEEDRILL's ire")

    mod.content.pokemon:register("CARAPTHOR", {
        id = "CARAPTHOR",
        name = "CARAPTHOR",
        dex = 42,

        types = {
            "BUG",
            "FIGHTING",
        },

        baseStats = {
            hp = 60,
            attack = 85,
            defense = 50,
            speed = 60,
            special = 60,
        },

        catchRate = 45,
        baseExp = 161,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "UPPERCUT",
            "LEECH_LIFE",
            "STRING_SHOT",
            "HARDEN",
        },

        learnset = {
            { level = 10, move = "UPPERCUT" },
            { level = 12, move = "COMET_PUNCH" },
            { level = 16, move = "PIN_MISSILE" },
            { level = 20, move = "DEFENSE_CURL" },
            { level = 25, move = "SWIFT" },
            { level = 30, move = "MEGA_PUNCH" },
            { level = 35, move = "SUBSTITUTE" },
            { level = 40, move = "SEISMIC_TOSS" },
            { level = 45, move = "TAKE_DOWN" },
            { level = 50, move = "SUBMISSION" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "RAZOR_WIND",
            "SWORDS_DANCE",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "PAY_DAY",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "MEGA_DRAIN",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
        },

        icon = "BUG",
        palette = "KEP_CARAPTHOR",
        cry = "CARAPTHOR",

        spriteFront = mod.assets:path("assets/pokemon/generated/carapthor/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/carapthor/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "DAPPER",
            heightFt = 3,
            heightIn = 11,
            weight = 760,
            text = "KEP_DEX_CARAPTHOR",
        },
    })
end
