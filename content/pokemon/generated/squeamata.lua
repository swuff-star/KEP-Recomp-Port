local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local squeamataChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 36,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 38,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1764,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1748,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 5,
                        frequency = 1732,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1700,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 7,
                        frequency = 2021,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        frequency = 2020,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1701,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1686,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1669,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1638,
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
                        fade = 4,
                        parameter = 160,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 144,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        parameter = 160,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 7,
                        parameter = 192,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 193,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("SQUEAMATA", {
        chip = squeamataChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_SQUEAMATA", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SQUEAMATA", "Incredibly timid,\nit flees at the\nsmallest sign of\ndanger. Gaining\nits trust is a\ndifficult task")

    mod.content.pokemon:register("SQUEAMATA", {
        id = "SQUEAMATA",
        name = "SQUEAMATA",
        dex = 236,

        types = {
            "DRAGON",
        },

        baseStats = {
            hp = 62,
            attack = 43,
            defense = 36,
            speed = 88,
            special = 71,
        },

        catchRate = 60,
        baseExp = 67,
        growthRate = "SLOW",

        level1Moves = {
            "SCRATCH",
            "TAIL_WHIP",
        },

        learnset = {
            { level = 10, move = "LEER" },
            { level = 20, move = "BITE" },
            { level = 30, move = "GLARE" },
            { level = 40, move = "DRAGON_RAGE" },
            { level = 50, move = "SLASH" },
        },

        evolutions = {
            { method = "LEVEL", level = 30, species = "MINISTARE" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "RAGE",
            "DRAGON_RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "CUT",
            "SURF",
        },

        icon = "MON",
        palette = "KEP_SQUEAMATA",
        cry = "SQUEAMATA",

        spriteFront = mod.assets:path("assets/pokemon/generated/squeamata/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/squeamata/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "IGUANA",
            heightFt = 2,
            heightIn = 0,
            weight = 120,
            text = "KEP_DEX_SQUEAMATA",
        },
    })
end
