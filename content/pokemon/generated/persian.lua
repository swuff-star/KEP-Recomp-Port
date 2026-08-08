local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local persianChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 2, 3 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 2,
                        frequency = 2009,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 5,
                        frequency = 2041,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 1,
                        frequency = 1993,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1993,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 0, 0, 1 } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1946,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1953,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 2010,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1946,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 2,
                        frequency = 1946,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("PERSIAN", {
        chip = persianChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_PERSIAN", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PERSIAN", "Has a ferocious\ntemperament, but\nit's loved for its\ngorgeous coat.\nIt's often kept\nas a trophy pet")

    mod.content.pokemon:patch("PERSIAN", {
        name = "PERSIAN",
        dex = 31,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 65,
            attack = 70,
            defense = 60,
            speed = 115,
            special = 65,
        },

        catchRate = 90,
        baseExp = 148,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "GROWL",
            "BITE",
            "SCREECH",
        },

        learnset = {
            { level = 5, move = "PAY_DAY" },
            { level = 8, move = "TAIL_WHIP" },
            { level = 12, move = "SAND_ATTACK" },
            { level = 21, move = "BITE" },
            { level = 26, move = "FURY_SWIPES" },
            { level = 35, move = "SCREECH" },
            { level = 40, move = "SLASH" },
            { level = 45, move = "DOUBLE_TEAM" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "HYPER_BEAM",
            "PAY_DAY",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "MIMIC",
            "DOUBLE_TEAM",
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
        palette = "KEP_PERSIAN",
        cry = "PERSIAN",

        spriteFront = mod.assets:path("assets/pokemon/generated/persian/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/persian/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "CLASSY CAT",
            heightFt = 3,
            heightIn = 3,
            weight = 710,
            text = "KEP_DEX_PERSIAN",
        },
    })
end
