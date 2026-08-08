local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local krabbyChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 14,
                        volume = 15,
                        fade = 1,
                        frequency = 1329,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 1,
                        frequency = 1333,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 1,
                        frequency = 1329,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1329,
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
                        frequency = 1324,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 1,
                        frequency = 1328,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 1,
                        frequency = 1324,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1322,
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
                        parameter = 133,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 14,
                        fade = 2,
                        parameter = 117,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 13,
                        fade = 2,
                        parameter = 118,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 134,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("KRABBY", {
        chip = krabbyChip.chip,
        pitch = 0,
        length = 224,
    })

    mod.content.palettes:register("KEP_KRABBY", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_KRABBY", "Raises its pincers\nin the air to\nintimidate foes.\nIt typically\nprefers to avoid\nfighting, though")

    mod.content.pokemon:patch("KRABBY", {
        name = "KRABBY",
        dex = 143,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 30,
            attack = 105,
            defense = 90,
            speed = 50,
            special = 25,
        },

        catchRate = 225,
        baseExp = 115,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "BUBBLE",
            "LEER",
        },

        learnset = {
            { level = 20, move = "VICEGRIP" },
            { level = 25, move = "GUILLOTINE" },
            { level = 30, move = "STOMP" },
            { level = 35, move = "CRABHAMMER" },
            { level = 40, move = "HARDEN" },
        },

        evolutions = {
            { method = "LEVEL", level = 28, species = "KINGLER" },
        },

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
        palette = "KEP_KRABBY",
        cry = "KRABBY",

        spriteFront = mod.assets:path("assets/pokemon/generated/krabby/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/krabby/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "RIVER CRAB",
            heightFt = 1,
            heightIn = 4,
            weight = 140,
            text = "KEP_DEX_KRABBY",
        },
    })
end
