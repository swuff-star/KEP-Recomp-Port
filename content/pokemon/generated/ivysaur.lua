local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local ivysaurChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 2018,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1680,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 5,
                        frequency = 1664,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1632,
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
                        frequency = 1953,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        frequency = 1952,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1633,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1618,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1601,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1570,
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
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 7,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 125,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("IVYSAUR", {
        chip = ivysaurChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_IVYSAUR", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_IVYSAUR", "Can often be seen\nsunbathing. After\nabsorbing enough\nnutrients and sun-\nlight, its bud\nwill blossom")

    mod.content.pokemon:patch("IVYSAUR", {
        name = "IVYSAUR",
        dex = 2,

        types = {
            "GRASS",
            "POISON",
        },

        baseStats = {
            hp = 60,
            attack = 62,
            defense = 63,
            speed = 60,
            special = 80,
        },

        catchRate = 45,
        baseExp = 141,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "GROWL",
            "VINE_WHIP",
        },

        learnset = {
            { level = 8, move = "VINE_WHIP" },
            { level = 14, move = "LEECH_SEED" },
            { level = 21, move = "POISONPOWDER" },
            { level = 24, move = "GROWTH" },
            { level = 28, move = "RAZOR_LEAF" },
            { level = 31, move = "TAKE_DOWN" },
            { level = 34, move = "BODY_SLAM" },
            { level = 39, move = "SLEEP_POWDER" },
            { level = 43, move = "MEGA_DRAIN" },
            { level = 48, move = "PETAL_DANCE" },
            { level = 52, move = "DOUBLE_EDGE" },
            { level = 57, move = "TOXIC" },
            { level = 62, move = "SOLARBEAM" },
        },

        evolutions = {
            { method = "LEVEL", level = 32, species = "VENUSAUR" },
        },

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
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
        palette = "KEP_IVYSAUR",
        cry = "IVYSAUR",

        spriteFront = mod.assets:path("assets/pokemon/generated/ivysaur/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/ivysaur/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "SEED",
            heightFt = 3,
            heightIn = 3,
            weight = 290,
            text = "KEP_DEX_IVYSAUR",
        },
    })
end
