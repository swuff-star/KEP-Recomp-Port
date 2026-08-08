local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local raticateChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 0, 1 } },
                    { squareNote = {
                        len = 3,
                        volume = 3,
                        fade = -5,
                        frequency = 929,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 5,
                        frequency = 1569,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 2,
                        frequency = 1185,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 929,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 2, 3, 2 } },
                    { squareNote = {
                        len = 3,
                        volume = 3,
                        fade = -6,
                        frequency = 1488,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 5,
                        frequency = 1917,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 2,
                        frequency = 1744,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        frequency = 1488,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        parameter = 105,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 11,
                        fade = 5,
                        parameter = 73,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 10,
                        fade = 2,
                        parameter = 89,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 105,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("RATICATE", {
        chip = raticateChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_RATICATE", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_RATICATE", "Its hind feet are\nwebbed, allowing\nit to swim across\nrivers in order\nto hunt for and\neat fish")

    mod.content.pokemon:patch("RATICATE", {
        name = "RATICATE",
        dex = 24,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 55,
            attack = 81,
            defense = 60,
            speed = 97,
            special = 50,
        },

        catchRate = 90,
        baseExp = 116,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "TAIL_WHIP",
            "QUICK_ATTACK",
        },

        learnset = {
            { level = 7, move = "QUICK_ATTACK" },
            { level = 14, move = "HYPER_FANG" },
            { level = 27, move = "FOCUS_ENERGY" },
            { level = 41, move = "SUPER_FANG" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
        },

        icon = "QUADRUPED",
        palette = "KEP_RATICATE",
        cry = "RATICATE",

        spriteFront = mod.assets:path("assets/pokemon/generated/raticate/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/raticate/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "RAT",
            heightFt = 2,
            heightIn = 4,
            weight = 410,
            text = "KEP_DEX_RATICATE",
        },
    })
end
