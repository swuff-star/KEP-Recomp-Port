local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local machampChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 4,
                        frequency = 1609,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 13,
                        fade = 6,
                        frequency = 1833,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 4,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1826,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 4,
                        frequency = 1416,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 14,
                        fade = 6,
                        frequency = 1768,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 5,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1764,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 4,
                        parameter = 78,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 10,
                        fade = 5,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 77,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        parameter = 76,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("MACHAMP", {
        chip = machampChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_MACHAMP", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MACHAMP", "It can launch a\nflurry of 1,000\npunches in just\ntwo seconds. What\ntriggers it to\nevolve is unclear")

    mod.content.pokemon:patch("MACHAMP", {
        name = "MACHAMP",
        dex = 142,

        types = {
            "FIGHTING",
        },

        baseStats = {
            hp = 90,
            attack = 130,
            defense = 80,
            speed = 55,
            special = 65,
        },

        catchRate = 45,
        baseExp = 193,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "KARATE_CHOP",
            "LOW_KICK",
            "LEER",
            "UPPERCUT",
        },

        learnset = {
            { level = 15, move = "COUNTER" },
            { level = 20, move = "LOW_KICK" },
            { level = 25, move = "LEER" },
            { level = 36, move = "FOCUS_ENERGY" },
            { level = 44, move = "SEISMIC_TOSS" },
            { level = 52, move = "SUBMISSION" },
            { level = 60, move = "MEGA_PUNCH" },
            { level = 66, move = "MEGA_KICK" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "METRONOME",
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_MACHAMP",
        cry = "MACHAMP",

        spriteFront = mod.assets:path("assets/pokemon/generated/machamp/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/machamp/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "SUPERPOWER",
            heightFt = 5,
            heightIn = 3,
            weight = 2870,
            text = "KEP_DEX_MACHAMP",
        },
    })
end
