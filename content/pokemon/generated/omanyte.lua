local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local omanyteChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 4,
                        frequency = 1841,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 13,
                        fade = 6,
                        frequency = 17,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 4,
                        frequency = 9,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 10,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 4,
                        frequency = 1648,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 14,
                        fade = 6,
                        frequency = 2000,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 5,
                        frequency = 1992,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1996,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 4,
                        parameter = 54,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 10,
                        fade = 5,
                        parameter = 52,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 53,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        parameter = 52,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("OMANYTE", {
        chip = omanyteChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_OMANYTE", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_OMANYTE", "It swam by waving\nits ten tentacles\nabout. It fed on\nsmall fish and\nplankton, and was\nrelated to squids")

    mod.content.pokemon:patch("OMANYTE", {
        name = "OMANYTE",
        dex = 225,

        types = {
            "ROCK",
            "WATER",
        },

        baseStats = {
            hp = 35,
            attack = 40,
            defense = 100,
            speed = 35,
            special = 90,
        },

        catchRate = 45,
        baseExp = 120,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "WATER_GUN",
            "WITHDRAW",
        },

        learnset = {
            { level = 21, move = "ROCK_THROW" },
            { level = 34, move = "HORN_ATTACK" },
            { level = 39, move = "LEER" },
            { level = 44, move = "SPIKE_CANNON" },
            { level = 49, move = "HYDRO_PUMP" },
        },

        evolutions = {
            { method = "LEVEL", level = 40, species = "OMASTAR" },
        },

        tmhm = {
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
            "REFLECT",
            "BIDE",
            "REST",
            "SUBSTITUTE",
            "SURF",
        },

        icon = "HELIX",
        palette = "KEP_OMANYTE",
        cry = "OMANYTE",

        spriteFront = mod.assets:path("assets/pokemon/generated/omanyte/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/omanyte/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "SPIRAL",
            heightFt = 1,
            heightIn = 4,
            weight = 170,
            text = "KEP_DEX_OMANYTE",
        },
    })
end
