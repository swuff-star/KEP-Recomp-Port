local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local weedleChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 3,
                        frequency = 110,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 7,
                        frequency = 2030,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 3,
                        frequency = 2046,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 2030,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 2,
                        frequency = 2014,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1998,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 2031,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 11,
                        fade = 7,
                        frequency = 1903,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 11,
                        fade = 3,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 2,
                        frequency = 1903,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 2,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1871,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 3,
                        parameter = 74,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 13,
                        fade = 6,
                        parameter = 58,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 12,
                        fade = 6,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 11,
                        fade = 3,
                        parameter = 58,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 10,
                        fade = 2,
                        parameter = 74,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        parameter = 90,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("WEEDLE", {
        chip = weedleChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_WEEDLE", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_WEEDLE", "It's often found\nin forests eating\ngingko leaves.\nIt wiggles its\nsharp stinger to\nintimidate foes")

    mod.content.pokemon:patch("WEEDLE", {
        name = "WEEDLE",
        dex = 37,

        types = {
            "BUG",
            "POISON",
        },

        baseStats = {
            hp = 40,
            attack = 35,
            defense = 30,
            speed = 50,
            special = 20,
        },

        catchRate = 255,
        baseExp = 52,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "POISON_STING",
            "STRING_SHOT",
        },

        learnset = {},

        evolutions = {
            { method = "LEVEL", level = 7, species = "KAKUNA" },
        },

        tmhm = {},

        icon = "BUG",
        palette = "KEP_WEEDLE",
        cry = "WEEDLE",

        spriteFront = mod.assets:path("assets/pokemon/generated/weedle/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/weedle/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "HAIRY BUG",
            heightFt = 1,
            heightIn = 0,
            weight = 70,
            text = "KEP_DEX_WEEDLE",
        },
    })
end
