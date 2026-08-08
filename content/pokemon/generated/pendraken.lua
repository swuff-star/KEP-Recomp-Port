local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local pendrakenChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 3, 0, 3 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 6,
                        frequency = 1532,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 3,
                        frequency = 1528,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1548,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1564,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1580,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1596,
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
                        frequency = 1261,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 3,
                        frequency = 1257,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 2,
                        frequency = 1277,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 2,
                        frequency = 1293,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1309,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1325,
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
                        parameter = 152,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 13,
                        fade = 6,
                        parameter = 168,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        parameter = 136,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 3,
                        parameter = 152,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 3,
                        parameter = 136,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 152,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("PENDRAKEN", {
        chip = pendrakenChip.chip,
        pitch = 0,
        length = 0,
    })

    mod.content.palettes:register("KEP_PENDRAKEN", {
        { 255, 255, 255 },
        { 247, 140, 90 },
        { 90, 41, 115 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PENDRAKEN", "It often clashes\nwith TENTACRUEL.\nIt sprays ink in\nits foe's face,\ndisorienting it\nbefore attacking")

    mod.content.pokemon:register("PENDRAKEN", {
        id = "PENDRAKEN",
        name = "PENDRAKEN",
        dex = 137,

        types = {
            "WATER",
            "FAIRY",
        },

        baseStats = {
            hp = 80,
            attack = 60,
            defense = 85,
            speed = 90,
            special = 95,
        },

        catchRate = 45,
        baseExp = 180,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "CONSTRICT",
            "SMOKESCREEN",
            "BUBBLE",
            "WRAP",
        },

        learnset = {
            { level = 8, move = "BUBBLE" },
            { level = 13, move = "WRAP" },
            { level = 19, move = "FAIRY_WIND" },
            { level = 23, move = "HYPNOSIS" },
            { level = 27, move = "SUPERSONIC" },
            { level = 35, move = "DAZZLE_GLEAM" },
            { level = 42, move = "HAZE" },
            { level = 47, move = "HYDRO_PUMP" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "RAGE",
            "DRAGON_RAGE",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "REST",
            "PSYWAVE",
            "SUBSTITUTE",
            "SURF",
            "FLASH",
        },

        icon = "WATER",
        palette = "KEP_PENDRAKEN",
        cry = "PENDRAKEN",

        spriteFront = mod.assets:path("assets/pokemon/generated/pendraken/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/pendraken/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "INK",
            heightFt = 7,
            heightIn = 10,
            weight = 2580,
            text = "KEP_DEX_PENDRAKEN",
        },
    })
end
