local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local geodudeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 1904,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 6,
                        frequency = 1908,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 5,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 4,
                        frequency = 1912,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 13,
                        fade = 3,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1872,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1840,
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
                        frequency = 1841,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 9,
                        fade = 6,
                        frequency = 1842,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 7,
                        frequency = 1857,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 5,
                        frequency = 1857,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 9,
                        fade = 4,
                        frequency = 1847,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 10,
                        fade = 3,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1810,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 1777,
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
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 7,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 7,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 11,
                        fade = 7,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        parameter = 76,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("GEODUDE", {
        chip = geodudeChip.chip,
        pitch = 0,
        length = 16,
    })

    mod.content.palettes:register("KEP_GEODUDE", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GEODUDE", "Being round and\neasy to hold, it\nis often tossed\naround by people\nas if it were in\na snowball fight")

    mod.content.pokemon:patch("GEODUDE", {
        name = "GEODUDE",
        dex = 59,

        types = {
            "ROCK",
            "GROUND",
        },

        baseStats = {
            hp = 40,
            attack = 80,
            defense = 100,
            speed = 20,
            special = 30,
        },

        catchRate = 255,
        baseExp = 86,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
        },

        learnset = {
            { level = 11, move = "DEFENSE_CURL" },
            { level = 16, move = "ROCK_THROW" },
            { level = 21, move = "SELFDESTRUCT" },
            { level = 25, move = "MEGA_PUNCH" },
            { level = 29, move = "HARDEN" },
            { level = 33, move = "EARTHQUAKE" },
            { level = 37, move = "BODY_SLAM" },
            { level = 41, move = "ROCK_SLIDE" },
            { level = 45, move = "EXPLOSION" },
            { level = 49, move = "DOUBLE_EDGE" },
            { level = 53, move = "FISSURE" },
        },

        evolutions = {
            { method = "LEVEL", level = 25, species = "GRAVELER" },
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
        palette = "KEP_GEODUDE",
        cry = "GEODUDE",

        spriteFront = mod.assets:path("assets/pokemon/generated/geodude/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/geodude/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "ROCK",
            heightFt = 1,
            heightIn = 4,
            weight = 440,
            text = "KEP_DEX_GEODUDE",
        },
    })
end
