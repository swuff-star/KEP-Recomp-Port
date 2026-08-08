local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local meowthChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 2, 3 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 2,
                        frequency = 1975,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 5,
                        frequency = 2007,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 1,
                        frequency = 1959,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1959,
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
                        frequency = 1912,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1919,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 1976,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1912,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 2,
                        frequency = 1912,
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

    mod.content.cries:override("MEOWTH", {
        chip = meowthChip.chip,
        pitch = 0,
        length = 16,
    })

    mod.content.palettes:register("KEP_MEOWTH", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MEOWTH", "Sleeps through the\nday before waking\nat night. With\neyes aglow, it\nsearches around\nfor loose change")

    mod.content.pokemon:patch("MEOWTH", {
        name = "MEOWTH",
        dex = 30,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 40,
            attack = 45,
            defense = 35,
            speed = 90,
            special = 40,
        },

        catchRate = 255,
        baseExp = 69,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "GROWL",
        },

        learnset = {
            { level = 5, move = "PAY_DAY" },
            { level = 8, move = "TAIL_WHIP" },
            { level = 12, move = "SAND_ATTACK" },
            { level = 21, move = "BITE" },
            { level = 26, move = "FURY_SWIPES" },
            { level = 33, move = "SCREECH" },
            { level = 38, move = "SLASH" },
            { level = 43, move = "DOUBLE_TEAM" },
        },

        evolutions = {
            { method = "LEVEL", level = 28, species = "PERSIAN" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
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
        palette = "KEP_MEOWTH",
        cry = "MEOWTH",

        spriteFront = mod.assets:path("assets/pokemon/generated/meowth/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/meowth/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "SCRATCHCAT",
            heightFt = 1,
            heightIn = 4,
            weight = 90,
            text = "KEP_DEX_MEOWTH",
        },
    })
end
