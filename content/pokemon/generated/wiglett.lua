local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local wiglettChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 2, 3 } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 3,
                        frequency = 2020,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1988,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 13,
                        fade = 1,
                        frequency = 1954,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 2,
                        frequency = 1796,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 1,
                        frequency = 1826,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1826,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 3,
                        frequency = 1956,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 14,
                        fade = 4,
                        frequency = 1892,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 1,
                        frequency = 1922,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1922,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 3,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        frequency = 1984,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 12,
                        fade = 1,
                        frequency = 1952,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 9,
                        fade = 2,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 1,
                        frequency = 1824,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 1824,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 3,
                        frequency = 1952,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 4,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 1,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 1920,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("WIGLETT", {
        chip = wiglettChip.chip,
        pitch = 0,
        length = 112,
    })

    mod.content.palettes:register("KEP_WIGLETT", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_WIGLETT", "Appears to be a\nform of DIGLETT,\nbut the two are\nunrelated. It has\nan extraordinary\nsense of smell")

    mod.content.pokemon:register("WIGLETT", {
        id = "WIGLETT",
        name = "WIGLETT",
        dex = 125,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 10,
            attack = 55,
            defense = 25,
            speed = 95,
            special = 35,
        },

        catchRate = 255,
        baseExp = 81,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "WATER_GUN",
        },

        learnset = {
            { level = 15, move = "SAND_ATTACK" },
            { level = 19, move = "WRAP" },
            { level = 24, move = "HEADBUTT" },
            { level = 31, move = "DIG" },
            { level = 40, move = "HYDRO_PUMP" },
        },

        evolutions = {
            { method = "LEVEL", level = 26, species = "WUGTRIO" },
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
        palette = "KEP_WIGLETT",
        cry = "WIGLETT",

        spriteFront = mod.assets:path("assets/pokemon/generated/wiglett/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/wiglett/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "GARDEN EEL",
            heightFt = 3,
            heightIn = 11,
            weight = 40,
            text = "KEP_DEX_WIGLETT",
        },
    })
end
