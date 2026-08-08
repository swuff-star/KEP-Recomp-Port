local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local gastlyChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 6,
                        frequency = 2017,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 6,
                        frequency = 2018,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 6,
                        frequency = 2017,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 2018,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 2017,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 6,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 2015,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 1993,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 3,
                        frequency = 1991,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 12,
                        fade = 4,
                        frequency = 1987,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 1991,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 1993,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1989,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 14,
                        volume = 1,
                        fade = -1,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 15,
                        fade = 7,
                        parameter = 140,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        parameter = 92,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("GASTLY", {
        chip = gastlyChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_GASTLY", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GASTLY", "exists as a thin\ngas. The gas is\npotent enough to\nfell a TRAMPEL\nin two seconds")

    mod.content.pokemon:patch("GASTLY", {
        name = "GASTLY",
        dex = 155,

        types = {
            "GHOST",
            "POISON",
        },

        baseStats = {
            hp = 30,
            attack = 35,
            defense = 30,
            speed = 80,
            special = 100,
        },

        catchRate = 190,
        baseExp = 95,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "LICK",
            "CONFUSE_RAY",
            "NIGHT_SHADE",
        },

        learnset = {
            { level = 27, move = "HYPNOSIS" },
            { level = 35, move = "DREAM_EATER" },
        },

        evolutions = {
            { method = "LEVEL", level = 25, species = "HAUNTER" },
        },

        tmhm = {
            "TOXIC",
            "RAGE",
            "MEGA_DRAIN",
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SELFDESTRUCT",
            "DREAM_EATER",
            "REST",
            "PSYWAVE",
            "EXPLOSION",
            "SUBSTITUTE",
        },

        icon = "MON",
        palette = "KEP_GASTLY",
        cry = "GASTLY",

        spriteFront = mod.assets:path("assets/pokemon/generated/gastly/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/gastly/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "GAS",
            heightFt = 4,
            heightIn = 3,
            weight = 2,
            text = "KEP_DEX_GASTLY",
        },
    })
end
