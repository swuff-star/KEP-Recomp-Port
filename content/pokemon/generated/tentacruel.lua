local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local tentacruelChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 7,
                        frequency = 46,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 50,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 5,
                        frequency = 62,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 78,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 110,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 142,
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
                        frequency = 2031,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 11,
                        fade = 6,
                        frequency = 2032,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 2047,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 15,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 3,
                        frequency = 47,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 80,
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
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        parameter = 58,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 7,
                        parameter = 58,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 14,
                        fade = 2,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 26,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("TENTACRUEL", {
        chip = tentacruelChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_TENTACRUEL", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_TENTACRUEL", "Also known as the\nGangster of the\nSea, it uses its\n80 tentacles to\nensnare and\nfeast on prey")

    mod.content.pokemon:patch("TENTACRUEL", {
        name = "TENTACRUEL",
        dex = 133,

        types = {
            "WATER",
            "POISON",
        },

        baseStats = {
            hp = 80,
            attack = 70,
            defense = 65,
            speed = 100,
            special = 120,
        },

        catchRate = 60,
        baseExp = 205,
        growthRate = "SLOW",

        level1Moves = {
            "ACID",
            "SUPERSONIC",
            "WRAP",
        },

        learnset = {
            { level = 7, move = "SUPERSONIC" },
            { level = 13, move = "WRAP" },
            { level = 18, move = "POISON_STING" },
            { level = 22, move = "WATER_GUN" },
            { level = 27, move = "CONSTRICT" },
            { level = 35, move = "BARRIER" },
            { level = 43, move = "SCREECH" },
            { level = 50, move = "HYDRO_PUMP" },
        },

        evolutions = {},

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "RAGE",
            "MEGA_DRAIN",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
            "SURF",
        },

        icon = "WATER",
        palette = "KEP_TENTACRUEL",
        cry = "TENTACRUEL",

        spriteFront = mod.assets:path("assets/pokemon/generated/tentacruel/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/tentacruel/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "JELLYFISH",
            heightFt = 5,
            heightIn = 3,
            weight = 1210,
            text = "KEP_DEX_TENTACRUEL",
        },
    })
end
