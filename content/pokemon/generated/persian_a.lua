local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local persian_aChip = ChipAsm.sfx({
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

    mod.content.cries:register("PERSIAN_A", {
        chip = persian_aChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_PERSIAN_A", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PERSIAN_A", "Its round face is\nseen as a symbol\nof prosperity.\nDespite this, it\nprefers to fight\nunderhandedly")

    mod.content.pokemon:register("PERSIAN_A", {
        id = "PERSIAN_A",
        name = "PERSIAN",
        dex = 32,

        types = {
            "DARK",
        },

        baseStats = {
            hp = 65,
            attack = 60,
            defense = 60,
            speed = 115,
            special = 75,
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
            { level = 8, move = "BITE" },
            { level = 12, move = "FURY_SWIPES" },
            { level = 21, move = "FEINT_ATTACK" },
            { level = 26, move = "SCREECH" },
            { level = 35, move = "NASTY_PLOT" },
            { level = 40, move = "SLASH" },
            { level = 46, move = "NIGHT_SLASH" },
            { level = 50, move = "DOUBLE_TEAM" },
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
        palette = "KEP_PERSIAN_A",
        cry = "PERSIAN_A",

        spriteFront = mod.assets:path("assets/pokemon/generated/persian_a/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/persian_a/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "CLASSY CAT",
            heightFt = 3,
            heightIn = 7,
            weight = 730,
            text = "KEP_DEX_PERSIAN_A",
        },
    })
end
