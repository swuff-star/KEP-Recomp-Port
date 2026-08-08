local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local wugtrioChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 1,
                        frequency = 1828,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 14,
                        fade = 1,
                        frequency = 1956,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1892,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 14,
                        fade = 1,
                        frequency = 1892,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 1,
                        frequency = 1956,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1828,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 1,
                        frequency = 1829,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1958,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 12,
                        fade = 1,
                        frequency = 1894,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 1,
                        frequency = 1893,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 1893,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 0,
                        fade = 0,
                        frequency = 36,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 0,
                        fade = 0,
                        frequency = 36,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 1,
                        frequency = 1829,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 14,
                        fade = 1,
                        frequency = 1958,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1893,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 14,
                        fade = 1,
                        frequency = 1893,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 1,
                        frequency = 1958,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 1,
                        frequency = 1829,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1829,
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
                        parameter = 36,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 0,
                        fade = 0,
                        parameter = 36,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        parameter = 112,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        parameter = 80,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        parameter = 96,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        parameter = 96,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 1,
                        parameter = 80,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 112,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("WUGTRIO", {
        chip = wugtrioChip.chip,
        pitch = 0,
        length = 112,
    })

    mod.content.palettes:register("KEP_WUGTRIO", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_WUGTRIO", "A trio of vicious\nfish POKéMON. It\nuses its long,\nslender bodies to\ntrap its prey and\ncarry it off")

    mod.content.pokemon:register("WUGTRIO", {
        id = "WUGTRIO",
        name = "WUGTRIO",
        dex = 126,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 35,
            attack = 80,
            defense = 50,
            speed = 120,
            special = 70,
        },

        catchRate = 50,
        baseExp = 153,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "WATER_GUN",
            "SAND_ATTACK",
            "WRAP",
        },

        learnset = {
            { level = 15, move = "SAND_ATTACK" },
            { level = 19, move = "WRAP" },
            { level = 24, move = "HEADBUTT" },
            { level = 35, move = "DIG" },
            { level = 47, move = "HYDRO_PUMP" },
        },

        evolutions = {},

        tmhm = {
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
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "REST",
            "SUBSTITUTE",
            "CUT",
            "SURF",
        },

        icon = "WATER",
        palette = "KEP_WUGTRIO",
        cry = "WUGTRIO",

        spriteFront = mod.assets:path("assets/pokemon/generated/wugtrio/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/wugtrio/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "GARDEN EEL",
            heightFt = 3,
            heightIn = 11,
            weight = 120,
            text = "KEP_DEX_WUGTRIO",
        },
    })
end
