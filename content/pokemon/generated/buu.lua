local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local buuChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 0, 2, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1662,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1678,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1600,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 12,
                        fade = 1,
                        frequency = 1616,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1598,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 1,
                        frequency = 1614,
                    } },
                    { dutyPattern = { 2, 0, 2, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1662,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1678,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1600,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 12,
                        fade = 1,
                        frequency = 1616,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1598,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 1,
                        frequency = 1614,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 0,
                        fade = 0,
                        frequency = 46,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1663,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1679,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1602,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1618,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1599,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 1,
                        frequency = 1615,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1602,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1618,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1599,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1615,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        parameter = 74,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 11,
                        fade = 1,
                        parameter = 90,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 2,
                        parameter = 90,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 11,
                        fade = 1,
                        parameter = 106,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        parameter = 90,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 10,
                        fade = 2,
                        parameter = 106,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 2,
                        parameter = 90,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 10,
                        fade = 1,
                        parameter = 106,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 12,
                        fade = 2,
                        parameter = 90,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 10,
                        fade = 1,
                        parameter = 106,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("BUU", {
        chip = buuChip.chip,
        pitch = 0,
        length = 224,
    })

    mod.content.palettes:register("KEP_BUU", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_BUU", "Long thought to\nbe an urban myth\nuntil one was\nfound hiding in\na secluded cave\nin the tundra")

    mod.content.pokemon:register("BUU", {
        id = "BUU",
        name = "BUU",
        dex = 214,

        types = {
            "ICE",
        },

        baseStats = {
            hp = 65,
            attack = 93,
            defense = 57,
            speed = 95,
            special = 85,
        },

        catchRate = 45,
        baseExp = 167,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "POWDER_SNOW",
            "LEER",
        },

        learnset = {
            { level = 35, move = "MIST" },
            { level = 38, move = "DISABLE" },
            { level = 42, move = "ICE_PUNCH" },
            { level = 48, move = "HAZE" },
            { level = 54, move = "ICE_BEAM" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "METRONOME",
            "SKULL_BASH",
            "REST",
            "PSYWAVE",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_BUU",
        cry = "BUU",

        spriteFront = mod.assets:path("assets/pokemon/generated/buu/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/buu/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "ICE BEAST",
            heightFt = 4,
            heightIn = 7,
            weight = 900,
            text = "KEP_DEX_BUU",
        },
    })
end
