local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local raticate_aChip = ChipAsm.sfx({
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

    mod.content.cries:register("RATICATE_A", {
        chip = raticate_aChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_RATICATE_A", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_RATICATE_A", "Commands nests of\nRATTATA. It will\ngreedily order\nits subjects to\ngather incredible\namounts of food")

    mod.content.pokemon:register("RATICATE_A", {
        id = "RATICATE_A",
        name = "RATICATE",
        dex = 25,

        types = {
            "DARK",
            "NORMAL",
        },

        baseStats = {
            hp = 75,
            attack = 71,
            defense = 70,
            speed = 77,
            special = 40,
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
            { level = 4, move = "QUICK_ATTACK" },
            { level = 7, move = "FOCUS_ENERGY" },
            { level = 10, move = "BITE" },
            { level = 16, move = "HYPER_FANG" },
            { level = 20, move = "BRUTAL_SWING" },
            { level = 28, move = "SUPER_FANG" },
            { level = 31, move = "DOUBLE_EDGE" },
            { level = 40, move = "NIGHT_SLASH" },
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
        palette = "KEP_RATICATE_A",
        cry = "RATICATE_A",

        spriteFront = mod.assets:path("assets/pokemon/generated/raticate_a/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/raticate_a/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "RAT",
            heightFt = 2,
            heightIn = 4,
            weight = 560,
            text = "KEP_DEX_RATICATE_A",
        },
    })
end
