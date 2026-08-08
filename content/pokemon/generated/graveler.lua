local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local gravelerChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 1664,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 6,
                        frequency = 1668,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 1680,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 5,
                        frequency = 1680,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 4,
                        frequency = 1672,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 13,
                        fade = 3,
                        frequency = 1648,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1632,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1600,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 7,
                        frequency = 1601,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 9,
                        fade = 6,
                        frequency = 1602,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 7,
                        frequency = 1617,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 5,
                        frequency = 1617,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 9,
                        fade = 4,
                        frequency = 1607,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 10,
                        fade = 3,
                        frequency = 1585,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1570,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 1537,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 16,
                        volume = 14,
                        fade = 4,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 7,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 7,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 11,
                        fade = 7,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        parameter = 92,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("GRAVELER", {
        chip = gravelerChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_GRAVELER", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GRAVELER", "Often seen quickly\nrolling down\nmountain trails.\nIts strange smile\ncan be unnerving\nto novice HIKERs")

    mod.content.pokemon:patch("GRAVELER", {
        name = "GRAVELER",
        dex = 60,

        types = {
            "ROCK",
            "GROUND",
        },

        baseStats = {
            hp = 55,
            attack = 95,
            defense = 115,
            speed = 35,
            special = 45,
        },

        catchRate = 120,
        baseExp = 134,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "DEFENSE_CURL",
        },

        learnset = {
            { level = 11, move = "DEFENSE_CURL" },
            { level = 16, move = "ROCK_THROW" },
            { level = 21, move = "SELFDESTRUCT" },
            { level = 25, move = "MEGA_PUNCH" },
            { level = 30, move = "HARDEN" },
            { level = 35, move = "EARTHQUAKE" },
            { level = 40, move = "BODY_SLAM" },
            { level = 45, move = "ROCK_SLIDE" },
            { level = 50, move = "EXPLOSION" },
            { level = 55, move = "DOUBLE_EDGE" },
            { level = 60, move = "FISSURE" },
        },

        evolutions = {
            { method = "TRADE", species = "GOLEM" },
        },

        tmhm = {
            "MEGA_PUNCH",
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
            "SELFDESTRUCT",
            "FIRE_BLAST",
            "REST",
            "EXPLOSION",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_GRAVELER",
        cry = "GRAVELER",

        spriteFront = mod.assets:path("assets/pokemon/generated/graveler/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/graveler/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "ROCK",
            heightFt = 3,
            heightIn = 3,
            weight = 2320,
            text = "KEP_DEX_GRAVELER",
        },
    })
end
