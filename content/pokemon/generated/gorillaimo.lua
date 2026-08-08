local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local gorillaimoChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 7,
                        frequency = 1969,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 6,
                        frequency = 1973,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 6,
                        frequency = 1969,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 3,
                        frequency = 1841,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 3,
                        frequency = 1844,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1849,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1857,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 5,
                        volume = 0,
                        fade = 0,
                        frequency = 17,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 7,
                        frequency = 1874,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 8,
                        fade = 6,
                        frequency = 1876,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 7,
                        fade = 6,
                        frequency = 1874,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 8,
                        fade = 3,
                        frequency = 1747,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 7,
                        fade = 3,
                        frequency = 1746,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 8,
                        fade = 2,
                        frequency = 1757,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 1769,
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
                        parameter = 93,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 7,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 6,
                        parameter = 61,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 5,
                        parameter = 77,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 2,
                        parameter = 78,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 61,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("GORILLAIMO", {
        chip = gorillaimoChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_GORILLAIMO", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GORILLAIMO", "Intelligent enough\nto craft items of\nclothing. Ancient\nscripture shows a\ngiant GORILLAIMO\nbattling GAWARHED")

    mod.content.pokemon:register("GORILLAIMO", {
        id = "GORILLAIMO",
        name = "GORILLAIMO",
        dex = 209,

        types = {
            "NORMAL",
            "FIGHTING",
        },

        baseStats = {
            hp = 130,
            attack = 100,
            defense = 75,
            speed = 65,
            special = 40,
        },

        catchRate = 45,
        baseExp = 204,
        growthRate = "SLOW",

        level1Moves = {
            "COMET_PUNCH",
            "GROWL",
            "UPPERCUT",
        },

        learnset = {
            { level = 7, move = "ROAR" },
            { level = 15, move = "BITE" },
            { level = 22, move = "THUNDERPUNCH" },
            { level = 29, move = "SEISMIC_TOSS" },
            { level = 35, move = "BODY_SLAM" },
            { level = 42, move = "AMNESIA" },
            { level = 49, move = "SUBMISSION" },
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
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "METRONOME",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_GORILLAIMO",
        cry = "GORILLAIMO",

        spriteFront = mod.assets:path("assets/pokemon/generated/gorillaimo/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/gorillaimo/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "GREAT APE",
            heightFt = 7,
            heightIn = 11,
            weight = 4080,
            text = "KEP_DEX_GORILLAIMO",
        },
    })
end
