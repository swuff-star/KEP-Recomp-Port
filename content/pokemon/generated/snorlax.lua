local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local snorlaxChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1365,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 3,
                        frequency = 1493,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 3,
                        frequency = 1477,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1461,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1239,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 3,
                        frequency = 1366,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1335,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        frequency = 1302,
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

    mod.content.cries:override("SNORLAX", {
        chip = snorlaxChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_SNORLAX", {
        { 255, 255, 255 },
        { 247, 140, 90 },
        { 90, 41, 115 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SNORLAX", "Isn't satisfied\nunless it eats\nover 880 lbs of\nfood every day.\nWhen done, it\nfalls asleep")

    mod.content.pokemon:patch("SNORLAX", {
        name = "SNORLAX",
        dex = 233,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 160,
            attack = 110,
            defense = 65,
            speed = 30,
            special = 65,
        },

        catchRate = 25,
        baseExp = 154,
        growthRate = "SLOW",

        level1Moves = {
            "HEADBUTT",
            "AMNESIA",
            "REST",
        },

        learnset = {
            { level = 35, move = "BODY_SLAM" },
            { level = 41, move = "HARDEN" },
            { level = 48, move = "DOUBLE_EDGE" },
            { level = 56, move = "HYPER_BEAM" },
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
            "SOLARBEAM",
            "THUNDERBOLT",
            "THUNDER",
            "EARTHQUAKE",
            "FISSURE",
            "PSYCHIC_M",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "METRONOME",
            "SELFDESTRUCT",
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "PSYWAVE",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_SNORLAX",
        cry = "SNORLAX",

        spriteFront = mod.assets:path("assets/pokemon/generated/snorlax/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/snorlax/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "SLEEPING",
            heightFt = 6,
            heightIn = 11,
            weight = 10140,
            text = "KEP_DEX_SNORLAX",
        },
    })
end
