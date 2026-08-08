local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local toedscruelChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 3, 0, 3 } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 1,
                        frequency = 1322,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 1,
                        frequency = 1290,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 1,
                        frequency = 1258,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1578,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1562,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1546,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1322,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1322,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 2,
                        frequency = 1322,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 3, 0, 2 } },
                    { squareNote = {
                        len = 10,
                        volume = 14,
                        fade = 1,
                        frequency = 1530,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 14,
                        fade = 2,
                        frequency = 1242,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 1,
                        frequency = 1530,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 1,
                        frequency = 1274,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        frequency = 1242,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        frequency = 1242,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 14,
                        fade = 2,
                        frequency = 1242,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 8,
                        fade = -2,
                        parameter = 55,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 38,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 9,
                        fade = -2,
                        parameter = 55,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 39,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 37,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 39,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 57,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 11,
                        fade = 2,
                        parameter = 73,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 11,
                        fade = 2,
                        parameter = 73,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("TOEDSCRUEL", {
        chip = toedscruelChip.chip,
        pitch = 0,
        length = 224,
    })

    mod.content.palettes:register("KEP_TOEDSCRUEL", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_TOEDSCRUEL", "Found in colonies\nin dark forests,\ncoiling its many\ntentacles around\nprey and draining\nits nutrients")

    mod.content.pokemon:register("TOEDSCRUEL", {
        id = "TOEDSCRUEL",
        name = "TOEDSCRUEL",
        dex = 135,

        types = {
            "GROUND",
            "GRASS",
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
            "ABSORB",
            "SUPERSONIC",
            "WRAP",
        },

        learnset = {
            { level = 7, move = "SUPERSONIC" },
            { level = 13, move = "WRAP" },
            { level = 18, move = "POISONPOWDER" },
            { level = 22, move = "STUN_SPORE" },
            { level = 27, move = "CONSTRICT" },
            { level = 35, move = "SOLARBEAM" },
            { level = 43, move = "SCREECH" },
            { level = 50, move = "SPORE" },
        },

        evolutions = {},

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
        },

        icon = "GRASS",
        palette = "KEP_TOEDSCRUEL",
        cry = "TOEDSCRUEL",

        spriteFront = mod.assets:path("assets/pokemon/generated/toedscruel/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/toedscruel/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "WOODEAR",
            heightFt = 6,
            heightIn = 3,
            weight = 1280,
            text = "KEP_DEX_TOEDSCRUEL",
        },
    })
end
