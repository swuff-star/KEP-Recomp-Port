local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local vileplumeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 2018,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 4,
                        frequency = 2019,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 6,
                        frequency = 2018,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 2020,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 2018,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 3, 3 } },
                    { squareNote = {
                        len = 16,
                        volume = 9,
                        fade = 7,
                        frequency = 1955,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 4,
                        frequency = 1954,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 9,
                        fade = 6,
                        frequency = 1955,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 8,
                        fade = 3,
                        frequency = 1955,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 15,
                        fade = 2,
                        parameter = 94,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 14,
                        fade = 6,
                        parameter = 78,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        parameter = 94,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        parameter = 78,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("VILEPLUME", {
        chip = vileplumeChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_VILEPLUME", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_VILEPLUME", "VILEPLUME's petals\nare the largest in\nthe world. Its\npollen can cause\nsevere allergic\nreactions")

    mod.content.pokemon:patch("VILEPLUME", {
        name = "VILEPLUME",
        dex = 83,

        types = {
            "GRASS",
            "POISON",
        },

        baseStats = {
            hp = 75,
            attack = 80,
            defense = 85,
            speed = 50,
            special = 100,
        },

        catchRate = 45,
        baseExp = 184,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "STUN_SPORE",
            "SLEEP_POWDER",
            "ACID",
            "PETAL_DANCE",
        },

        learnset = {
            { level = 15, move = "POISONPOWDER" },
            { level = 17, move = "STUN_SPORE" },
            { level = 19, move = "SLEEP_POWDER" },
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
        palette = "KEP_VILEPLUME",
        cry = "VILEPLUME",

        spriteFront = mod.assets:path("assets/pokemon/generated/vileplume/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/vileplume/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "FLOWER",
            heightFt = 3,
            heightIn = 11,
            weight = 410,
            text = "KEP_DEX_VILEPLUME",
        },
    })
end
