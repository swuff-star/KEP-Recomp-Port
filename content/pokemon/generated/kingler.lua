local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local kinglerChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 14,
                        volume = 15,
                        fade = 1,
                        frequency = 1535,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 1,
                        frequency = 1539,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 1,
                        frequency = 1535,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1535,
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
                        frequency = 1530,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 1,
                        frequency = 1534,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 1,
                        frequency = 1530,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1528,
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
                        parameter = 83,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 14,
                        fade = 2,
                        parameter = 67,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 13,
                        fade = 2,
                        parameter = 68,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 84,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("KINGLER", {
        chip = kinglerChip.chip,
        pitch = 0,
        length = 224,
    })

    mod.content.palettes:register("KEP_KINGLER", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_KINGLER", "The large pincer\nhas 10,000 hp of\ncrushing power.\nHowever, its huge\nsize makes it\nunwieldy to use")

    mod.content.pokemon:patch("KINGLER", {
        name = "KINGLER",
        dex = 144,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 55,
            attack = 130,
            defense = 115,
            speed = 75,
            special = 50,
        },

        catchRate = 60,
        baseExp = 206,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "BUBBLE",
            "LEER",
            "VICEGRIP",
        },

        learnset = {
            { level = 20, move = "VICEGRIP" },
            { level = 25, move = "GUILLOTINE" },
            { level = 34, move = "STOMP" },
            { level = 42, move = "CRABHAMMER" },
            { level = 49, move = "HARDEN" },
        },

        evolutions = {},

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "REST",
            "SUBSTITUTE",
            "CUT",
            "SURF",
            "STRENGTH",
        },

        icon = "WATER",
        palette = "KEP_KINGLER",
        cry = "KINGLER",

        spriteFront = mod.assets:path("assets/pokemon/generated/kingler/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/kingler/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "PINCER",
            heightFt = 4,
            heightIn = 3,
            weight = 1320,
            text = "KEP_DEX_KINGLER",
        },
    })
end
