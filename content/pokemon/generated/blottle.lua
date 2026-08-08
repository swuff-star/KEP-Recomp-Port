local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local blottleChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 3, 0, 3 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 6,
                        frequency = 1619,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 3,
                        frequency = 1615,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1635,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1651,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1667,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1683,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 1, 2, 1 } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 6,
                        frequency = 1348,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 3,
                        frequency = 1344,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 2,
                        frequency = 1364,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 2,
                        frequency = 1380,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1396,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1412,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 11,
                        volume = 14,
                        fade = 6,
                        parameter = 239,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 13,
                        fade = 6,
                        parameter = 255,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        parameter = 223,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 3,
                        parameter = 239,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 3,
                        parameter = 223,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 239,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("BLOTTLE", {
        chip = blottleChip.chip,
        pitch = 0,
        length = 0,
    })

    mod.content.palettes:register("KEP_BLOTTLE", {
        { 255, 255, 255 },
        { 247, 140, 90 },
        { 90, 41, 115 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_BLOTTLE", "A descendant of\nthe ancient\nOMANYTE. BLOTTLE\nshells are often\ncollected and sold\nas souvenirs")

    mod.content.pokemon:register("BLOTTLE", {
        id = "BLOTTLE",
        name = "BLOTTLE",
        dex = 136,

        types = {
            "WATER",
            "FAIRY",
        },

        baseStats = {
            hp = 60,
            attack = 35,
            defense = 60,
            speed = 50,
            special = 65,
        },

        catchRate = 190,
        baseExp = 97,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "CONSTRICT",
            "SMOKESCREEN",
        },

        learnset = {
            { level = 8, move = "BUBBLE" },
            { level = 13, move = "WRAP" },
            { level = 19, move = "FAIRY_WIND" },
            { level = 23, move = "HYPNOSIS" },
            { level = 27, move = "SUPERSONIC" },
            { level = 32, move = "DAZZLE_GLEAM" },
            { level = 38, move = "HAZE" },
            { level = 43, move = "HYDRO_PUMP" },
        },

        evolutions = {
            { method = "LEVEL", level = 30, species = "PENDRAKEN" },
        },

        tmhm = {
            "TOXIC",
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
            "FLASH",
        },

        icon = "WATER",
        palette = "KEP_BLOTTLE",
        cry = "BLOTTLE",

        spriteFront = mod.assets:path("assets/pokemon/generated/blottle/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/blottle/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "INK",
            heightFt = 2,
            heightIn = 11,
            weight = 400,
            text = "KEP_DEX_BLOTTLE",
        },
    })
end
