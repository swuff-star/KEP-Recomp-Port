local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local venusaurChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 1984,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 1986,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1664,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1648,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 5,
                        frequency = 1632,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1600,
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
                        frequency = 1921,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1601,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1586,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1569,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1538,
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
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 7,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 93,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("VENUSAUR", {
        chip = venusaurChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_VENUSAUR", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_VENUSAUR", "Its flower wafts\na pacifying aroma.\nBecause it rests\nin sunlit places,\nsome think that it\nphotosynthesizes")

    mod.content.pokemon:patch("VENUSAUR", {
        name = "VENUSAUR",
        dex = 3,

        types = {
            "GRASS",
            "POISON",
        },

        baseStats = {
            hp = 80,
            attack = 82,
            defense = 83,
            speed = 80,
            special = 100,
        },

        catchRate = 45,
        baseExp = 208,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "GROWL",
            "VINE_WHIP",
            "LEECH_SEED",
        },

        learnset = {
            { level = 8, move = "VINE_WHIP" },
            { level = 14, move = "LEECH_SEED" },
            { level = 21, move = "POISONPOWDER" },
            { level = 24, move = "GROWTH" },
            { level = 28, move = "RAZOR_LEAF" },
            { level = 31, move = "TAKE_DOWN" },
            { level = 36, move = "BODY_SLAM" },
            { level = 41, move = "SLEEP_POWDER" },
            { level = 45, move = "MEGA_DRAIN" },
            { level = 53, move = "PETAL_DANCE" },
            { level = 56, move = "DOUBLE_EDGE" },
            { level = 62, move = "TOXIC" },
            { level = 66, move = "SOLARBEAM" },
        },

        evolutions = {},

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
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
        palette = "KEP_VENUSAUR",
        cry = "VENUSAUR",

        spriteFront = mod.assets:path("assets/pokemon/generated/venusaur/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/venusaur/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "SEED",
            heightFt = 6,
            heightIn = 7,
            weight = 2210,
            text = "KEP_DEX_VENUSAUR",
        },
    })
end
