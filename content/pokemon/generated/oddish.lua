local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local oddishChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 6,
                        frequency = 1602,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 4,
                        frequency = 1625,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1593,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 2,
                        frequency = 1561,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 15,
                        volume = 13,
                        fade = 6,
                        frequency = 1504,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 11,
                        fade = 4,
                        frequency = 1528,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 2,
                        frequency = 1495,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1464,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        parameter = 41,
                    } },
                    { noiseNote = {
                        len = 12,
                        volume = 13,
                        fade = 7,
                        parameter = 57,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 41,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("ODDISH", {
        chip = oddishChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_ODDISH", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ODDISH", "It is also known\nas Walkimendes.\nSaid to walk up\nto 1,000 feet on\nits two roots\nat night")

    mod.content.pokemon:patch("ODDISH", {
        name = "ODDISH",
        dex = 81,

        types = {
            "GRASS",
            "POISON",
        },

        baseStats = {
            hp = 45,
            attack = 50,
            defense = 55,
            speed = 30,
            special = 75,
        },

        catchRate = 255,
        baseExp = 78,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "ABSORB",
        },

        learnset = {
            { level = 15, move = "POISONPOWDER" },
            { level = 17, move = "STUN_SPORE" },
            { level = 19, move = "SLEEP_POWDER" },
            { level = 24, move = "ACID" },
            { level = 33, move = "PETAL_DANCE" },
            { level = 46, move = "SOLARBEAM" },
        },

        evolutions = {
            { method = "LEVEL", level = 21, species = "GLOOM" },
        },

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "REST",
            "SUBSTITUTE",
            "CUT",
        },

        icon = "GRASS",
        palette = "KEP_ODDISH",
        cry = "ODDISH",

        spriteFront = mod.assets:path("assets/pokemon/generated/oddish/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/oddish/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "WEED",
            heightFt = 1,
            heightIn = 8,
            weight = 120,
            text = "KEP_DEX_ODDISH",
        },
    })
end
