local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local melmetalChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 1, 3, 2 } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1470,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        frequency = 1214,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1470,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        frequency = 1214,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1470,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        frequency = 1214,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1470,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        frequency = 1214,
                    } },
                    { duty = 0 },
                    { squareNote = {
                        len = 10,
                        volume = 7,
                        fade = 0,
                        frequency = 2046,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 7,
                        fade = 0,
                        frequency = 1998,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1214,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1214,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1214,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 2,
                        frequency = 1214,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 3, 0, 2 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 1950,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1950,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 1982,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 0,
                        frequency = 46,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 0,
                        frequency = 2046,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1998,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1998,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1998,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 2,
                        frequency = 1998,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 5,
                        volume = 8,
                        fade = 0,
                        parameter = 11,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 0,
                        parameter = 6,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 0,
                        parameter = 7,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 9,
                        fade = 0,
                        parameter = 216,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 9,
                        fade = 0,
                        parameter = 218,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        parameter = 249,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 2,
                        parameter = 249,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("MELMETAL", {
        chip = melmetalChip.chip,
        pitch = 0,
        length = 168,
    })

    mod.content.palettes:register("KEP_MELMETAL", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MELMETAL", "A myth from over\n3,000 years ago\ndepicted it as a\ngiant with the\nability to create\niron from nothing")

    mod.content.pokemon:register("MELMETAL", {
        id = "MELMETAL",
        name = "MELMETAL",
        dex = 251,

        types = {
            "STEEL",
        },

        baseStats = {
            hp = 135,
            attack = 143,
            defense = 143,
            speed = 34,
            special = 65,
        },

        catchRate = 3,
        baseExp = 243,
        growthRate = "SLOW",

        level1Moves = {
            "THUNDERSHOCK",
            "HARDEN",
            "TAIL_WHIP",
            "HEADBUTT",
        },

        learnset = {
            { level = 9, move = "TAIL_WHIP" },
            { level = 18, move = "HEADBUTT" },
            { level = 27, move = "THUNDER_WAVE" },
            { level = 36, move = "THUNDERPUNCH" },
            { level = 45, move = "ACID_ARMOR" },
            { level = 54, move = "MAGNET_BOMB" },
            { level = 63, move = "MEGA_PUNCH" },
            { level = 72, move = "IRON_HEAD" },
            { level = 81, move = "SUBMISSION" },
            { level = 90, move = "HYPER_BEAM" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "ICE_BEAM",
            "HYPER_BEAM",
            "SUBMISSION",
            "RAGE",
            "SOLARBEAM",
            "THUNDERBOLT",
            "THUNDER",
            "EARTHQUAKE",
            "FISSURE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "REST",
            "THUNDER_WAVE",
            "ROCK_SLIDE",
            "SUBSTITUTE",
        },

        icon = "BALL",
        palette = "KEP_MELMETAL",
        cry = "MELMETAL",

        spriteFront = mod.assets:path("assets/pokemon/generated/melmetal/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/melmetal/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "HEX NUT",
            heightFt = 8,
            heightIn = 2,
            weight = 17640,
            text = "KEP_DEX_MELMETAL",
        },
    })
end
