local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local dugtrio_aChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1834,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1962,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1898,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1898,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1962,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1834,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1835,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1964,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 1,
                        frequency = 1900,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1899,
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
                        frequency = 42,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1835,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1964,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1899,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1899,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1964,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1835,
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
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 0,
                        fade = 0,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        parameter = 118,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        parameter = 86,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        parameter = 102,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        parameter = 102,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 1,
                        parameter = 86,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 118,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("DUGTRIO_A", {
        chip = dugtrio_aChip.chip,
        pitch = 0,
        length = 16,
    })

    mod.content.palettes:register("KEP_DUGTRIO_A", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_DUGTRIO_A", "The metal whiskers\non its heads help\nprotect it from\nattacks, and can\nsense sounds from\nmany miles away")

    mod.content.pokemon:register("DUGTRIO_A", {
        id = "DUGTRIO_A",
        name = "DUGTRIO",
        dex = 124,

        types = {
            "GROUND",
            "STEEL",
        },

        baseStats = {
            hp = 35,
            attack = 80,
            defense = 60,
            speed = 110,
            special = 70,
        },

        catchRate = 50,
        baseExp = 153,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "GROWL",
            "DIG",
        },

        learnset = {
            { level = 15, move = "GROWL" },
            { level = 19, move = "DIG" },
            { level = 24, move = "SAND_ATTACK" },
            { level = 30, move = "IRON_HEAD" },
            { level = 35, move = "SLASH" },
            { level = 43, move = "EARTHQUAKE" },
            { level = 47, move = "FISSURE" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "CUT",
        },

        icon = "MON",
        palette = "KEP_DUGTRIO_A",
        cry = "DUGTRIO_A",

        spriteFront = mod.assets:path("assets/pokemon/generated/dugtrio_a/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/dugtrio_a/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "MOLE",
            heightFt = 2,
            heightIn = 4,
            weight = 1470,
            text = "KEP_DEX_DUGTRIO_A",
        },
    })
end
