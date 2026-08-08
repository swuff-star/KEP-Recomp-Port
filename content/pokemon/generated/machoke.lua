local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local machokeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 4,
                        frequency = 1673,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 13,
                        fade = 6,
                        frequency = 1897,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 4,
                        frequency = 1889,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1890,
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
                        frequency = 1480,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 14,
                        fade = 6,
                        frequency = 1832,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 5,
                        frequency = 1824,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1828,
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
                        parameter = 142,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 10,
                        fade = 5,
                        parameter = 140,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 141,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        parameter = 140,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("MACHOKE", {
        chip = machokeChip.chip,
        pitch = 0,
        length = 96,
    })

    mod.content.palettes:register("KEP_MACHOKE", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MACHOKE", "Its powerful body\nnever gets tired,\nso it is often\nemployed to help\npeople transport\nheavy cargo")

    mod.content.pokemon:patch("MACHOKE", {
        name = "MACHOKE",
        dex = 141,

        types = {
            "FIGHTING",
        },

        baseStats = {
            hp = 80,
            attack = 100,
            defense = 70,
            speed = 45,
            special = 50,
        },

        catchRate = 90,
        baseExp = 146,
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

        evolutions = {
            { method = "TRADE", species = "MACHAMP" },
        },

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
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
        palette = "KEP_MACHOKE",
        cry = "MACHOKE",

        spriteFront = mod.assets:path("assets/pokemon/generated/machoke/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/machoke/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "SUPERPOWER",
            heightFt = 4,
            heightIn = 11,
            weight = 1550,
            text = "KEP_DEX_MACHOKE",
        },
    })
end
