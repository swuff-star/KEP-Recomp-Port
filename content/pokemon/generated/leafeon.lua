local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local leafeonChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 2, 0, 1 } },
                    { squareNote = {
                        len = 6,
                        volume = 12,
                        fade = 0,
                        frequency = 1633,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 4,
                        fade = 0,
                        frequency = 1633,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 15,
                        fade = 0,
                        frequency = 1968,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 0,
                        frequency = 1966,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 1,
                        frequency = 1963,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 2, 0, 1 } },
                    { squareNote = {
                        len = 6,
                        volume = 12,
                        fade = 0,
                        frequency = 1600,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 4,
                        fade = 0,
                        frequency = 1600,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 15,
                        fade = 0,
                        frequency = 1935,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 0,
                        frequency = 1933,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 1,
                        frequency = 1930,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 5,
                        volume = 9,
                        fade = 1,
                        parameter = 15,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 4,
                        parameter = 2,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("LEAFEON", {
        chip = leafeonChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_LEAFEON", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_LEAFEON", "It has a distinct\naroma that changes\nwith age. While\nit's young, it\ntypically smells\nlike fresh grass")

    mod.content.pokemon:register("LEAFEON", {
        id = "LEAFEON",
        name = "LEAFEON",
        dex = 20,

        types = {
            "GRASS",
        },

        baseStats = {
            hp = 65,
            attack = 110,
            defense = 130,
            speed = 95,
            special = 65,
        },

        catchRate = 45,
        baseExp = 196,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "SAND_ATTACK",
            "QUICK_ATTACK",
            "ABSORB",
        },

        learnset = {
            { level = 8, move = "SAND_ATTACK" },
            { level = 16, move = "ABSORB" },
            { level = 23, move = "QUICK_ATTACK" },
            { level = 30, move = "GROWTH" },
            { level = 36, move = "RAZOR_LEAF" },
            { level = 42, move = "TAKE_DOWN" },
            { level = 52, move = "SOLARBEAM" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "SWORDS_DANCE",
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
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/cat.png"),
            frames = 2,
        },
        palette = "KEP_LEAFEON",
        cry = "LEAFEON",

        spriteFront = mod.assets:path("assets/pokemon/generated/leafeon/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/leafeon/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "VERDANT",
            heightFt = 3,
            heightIn = 3,
            weight = 560,
            text = "KEP_DEX_LEAFEON",
        },
    })
end
