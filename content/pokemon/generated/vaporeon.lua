local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local vaporeonChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 7,
                        frequency = 2026,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 2030,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 5,
                        frequency = 2042,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 10,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 42,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 74,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 7,
                        frequency = 1963,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 11,
                        fade = 6,
                        frequency = 1964,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1979,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1995,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 3,
                        frequency = 2027,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 12,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        parameter = 230,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        parameter = 246,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 230,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 7,
                        parameter = 246,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 14,
                        fade = 2,
                        parameter = 230,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 214,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("VAPOREON", {
        chip = vaporeonChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_VAPOREON", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_VAPOREON", "It has a cellular\nstructure similar\nto water, giving\nit the ability to\nmelt invisibly\nas it swims")

    mod.content.pokemon:patch("VAPOREON", {
        name = "VAPOREON",
        dex = 15,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 130,
            attack = 65,
            defense = 60,
            speed = 65,
            special = 110,
        },

        catchRate = 45,
        baseExp = 196,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "SAND_ATTACK",
            "QUICK_ATTACK",
            "WATER_GUN",
        },

        learnset = {
            { level = 8, move = "SAND_ATTACK" },
            { level = 16, move = "WATER_GUN" },
            { level = 23, move = "QUICK_ATTACK" },
            { level = 30, move = "BITE" },
            { level = 36, move = "AURORA_BEAM" },
            { level = 42, move = "HAZE" },
            { level = 44, move = "MIST" },
            { level = 47, move = "ACID_ARMOR" },
            { level = 52, move = "HYDRO_PUMP" },
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
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "SURF",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/cat.png"),
            frames = 2,
        },
        palette = "KEP_VAPOREON",
        cry = "VAPOREON",

        spriteFront = mod.assets:path("assets/pokemon/generated/vaporeon/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/vaporeon/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "BUBBLE JET",
            heightFt = 3,
            heightIn = 3,
            weight = 640,
            text = "KEP_DEX_VAPOREON",
        },
    })
end
