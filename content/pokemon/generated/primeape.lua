local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local primeapeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 7,
                        frequency = 1935,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        frequency = 1940,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 4,
                        frequency = 1935,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 6,
                        frequency = 1919,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 3,
                        frequency = 1903,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 1887,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1911,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 0,
                        fade = 0,
                        frequency = 175,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 7,
                        frequency = 1872,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 6,
                        frequency = 1874,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 7,
                        fade = 4,
                        frequency = 1872,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 7,
                        fade = 6,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 8,
                        fade = 3,
                        frequency = 1841,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 10,
                        fade = 2,
                        frequency = 1824,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 7,
                        fade = 2,
                        frequency = 1848,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        parameter = 235,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 237,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 7,
                        parameter = 235,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 5,
                        parameter = 234,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 13,
                        fade = 4,
                        parameter = 219,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 11,
                        fade = 6,
                        parameter = 235,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 10,
                        fade = 4,
                        parameter = 219,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 235,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("PRIMEAPE", {
        chip = primeapeChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_PRIMEAPE", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PRIMEAPE", "Always furious\nand tenacious to\nboot. It will not\nabandon chasing\nits quarry until\nit is caught")

    mod.content.pokemon:patch("PRIMEAPE", {
        name = "PRIMEAPE",
        dex = 79,

        types = {
            "FIGHTING",
        },

        baseStats = {
            hp = 65,
            attack = 105,
            defense = 60,
            speed = 95,
            special = 60,
        },

        catchRate = 75,
        baseExp = 149,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "LEER",
            "UPPERCUT",
            "KARATE_CHOP",
        },

        learnset = {
            { level = 9, move = "LOW_KICK" },
            { level = 15, move = "KARATE_CHOP" },
            { level = 21, move = "FURY_SWIPES" },
            { level = 27, move = "FOCUS_ENERGY" },
            { level = 28, move = "RAGE" },
            { level = 37, move = "SEISMIC_TOSS" },
            { level = 45, move = "SCREECH" },
            { level = 46, move = "THRASH" },
            { level = 54, move = "SUBMISSION" },
            { level = 62, move = "COUNTER" },
        },

        evolutions = {
            { method = "TRADE", species = "ANNIHILAPE" },
        },

        tmhm = {
            "MEGA_PUNCH",
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
            "THUNDERBOLT",
            "THUNDER",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "METRONOME",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_PRIMEAPE",
        cry = "PRIMEAPE",

        spriteFront = mod.assets:path("assets/pokemon/generated/primeape/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/primeape/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "PIG MONKEY",
            heightFt = 3,
            heightIn = 3,
            weight = 710,
            text = "KEP_DEX_PRIMEAPE",
        },
    })
end
