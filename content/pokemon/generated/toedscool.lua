local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local toedscoolChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1770,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1898,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1834,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1834,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1898,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1770,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1771,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1900,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 1,
                        frequency = 1836,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1835,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 13,
                        volume = 0,
                        fade = 0,
                        frequency = 2026,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1771,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1900,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1835,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1835,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1900,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1771,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 16,
                        volume = 0,
                        fade = 0,
                        parameter = 234,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 0,
                        fade = 0,
                        parameter = 234,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        parameter = 54,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        parameter = 22,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        parameter = 38,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        parameter = 38,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 1,
                        parameter = 22,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 54,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("TOEDSCOOL", {
        chip = toedscoolChip.chip,
        pitch = 0,
        length = 225,
    })

    mod.content.palettes:register("KEP_TOEDSCOOL", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_TOEDSCOOL", "It scatters spores\nas it runs around.\nThe flaps that can\nfall from its body\nare chewy, and are\nused in recipes")

    mod.content.pokemon:register("TOEDSCOOL", {
        id = "TOEDSCOOL",
        name = "TOEDSCOOL",
        dex = 134,

        types = {
            "GROUND",
            "GRASS",
        },

        baseStats = {
            hp = 40,
            attack = 40,
            defense = 35,
            speed = 70,
            special = 100,
        },

        catchRate = 190,
        baseExp = 105,
        growthRate = "SLOW",

        level1Moves = {
            "ABSORB",
        },

        learnset = {
            { level = 7, move = "SUPERSONIC" },
            { level = 13, move = "WRAP" },
            { level = 18, move = "POISONPOWDER" },
            { level = 22, move = "STUN_SPORE" },
            { level = 27, move = "CONSTRICT" },
            { level = 33, move = "SOLARBEAM" },
            { level = 40, move = "SCREECH" },
            { level = 48, move = "SPORE" },
        },

        evolutions = {
            { method = "LEVEL", level = 30, species = "TOEDSCRUEL" },
        },

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
        },

        icon = "GRASS",
        palette = "KEP_TOEDSCOOL",
        cry = "TOEDSCOOL",

        spriteFront = mod.assets:path("assets/pokemon/generated/toedscool/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/toedscool/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "WOODEAR",
            heightFt = 2,
            heightIn = 11,
            weight = 730,
            text = "KEP_DEX_TOEDSCOOL",
        },
    })
end
