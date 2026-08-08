local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local glaceonChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 1, 3, 2 } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1375,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        frequency = 1119,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1375,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        frequency = 1119,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1375,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        frequency = 1119,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1375,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        frequency = 1119,
                    } },
                    { duty = 0 },
                    { squareNote = {
                        len = 10,
                        volume = 7,
                        fade = 0,
                        frequency = 1951,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 7,
                        fade = 0,
                        frequency = 1903,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1119,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1119,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1119,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 2,
                        frequency = 1119,
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
                        frequency = 1855,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1855,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 1887,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 0,
                        frequency = 1999,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 0,
                        frequency = 1951,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1903,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1903,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1903,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 2,
                        frequency = 1903,
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
                        parameter = 172,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 0,
                        parameter = 167,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 0,
                        parameter = 168,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 9,
                        fade = 0,
                        parameter = 121,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 9,
                        fade = 0,
                        parameter = 123,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        parameter = 154,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 2,
                        parameter = 154,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("GLACEON", {
        chip = glaceonChip.chip,
        pitch = 0,
        length = 168,
    })

    mod.content.palettes:register("KEP_GLACEON", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GLACEON", "It can freeze the\nmoisture in the\nair around it,\nleaving a trail\nof powdery snow\nas it walks")

    mod.content.pokemon:register("GLACEON", {
        id = "GLACEON",
        name = "GLACEON",
        dex = 21,

        types = {
            "ICE",
        },

        baseStats = {
            hp = 65,
            attack = 60,
            defense = 110,
            speed = 65,
            special = 130,
        },

        catchRate = 45,
        baseExp = 196,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "SAND_ATTACK",
            "QUICK_ATTACK",
            "POWDER_SNOW",
        },

        learnset = {
            { level = 8, move = "SAND_ATTACK" },
            { level = 16, move = "POWDER_SNOW" },
            { level = 23, move = "QUICK_ATTACK" },
            { level = 30, move = "MIST" },
            { level = 32, move = "HAZE" },
            { level = 42, move = "TAKE_DOWN" },
            { level = 47, move = "BLIZZARD" },
            { level = 52, move = "BARRIER" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
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
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/cat.png"),
            frames = 2,
        },
        palette = "KEP_GLACEON",
        cry = "GLACEON",

        spriteFront = mod.assets:path("assets/pokemon/generated/glaceon/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/glaceon/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "FRESH SNOW",
            heightFt = 2,
            heightIn = 7,
            weight = 570,
            text = "KEP_DEX_GLACEON",
        },
    })
end
