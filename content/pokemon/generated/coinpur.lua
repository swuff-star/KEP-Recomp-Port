local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local coinpurChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 2, 3 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 2,
                        frequency = 1,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 5,
                        frequency = 33,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 1,
                        frequency = 2033,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 2033,
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
                        frequency = 1986,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1993,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 2,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1986,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 2,
                        frequency = 1986,
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

    mod.content.cries:register("COINPUR", {
        chip = coinpurChip.chip,
        pitch = 0,
        length = 28,
    })

    mod.content.palettes:register("KEP_COINPUR", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_COINPUR", "Its eyesight is\nstill developing,\nso it cannot see\nvery well. Likes\nto collect and\nhoard small coins")

    mod.content.pokemon:register("COINPUR", {
        id = "COINPUR",
        name = "COINPUR",
        dex = 29,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 35,
            attack = 40,
            defense = 30,
            speed = 85,
            special = 35,
        },

        catchRate = 255,
        baseExp = 53,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "GROWL",
        },

        learnset = {
            { level = 5, move = "PAY_DAY" },
            { level = 8, move = "TAIL_WHIP" },
            { level = 12, move = "SAND_ATTACK" },
            { level = 19, move = "BITE" },
            { level = 24, move = "FURY_SWIPES" },
            { level = 30, move = "SCREECH" },
            { level = 35, move = "SLASH" },
        },

        evolutions = {
            { method = "LEVEL", level = 14, species = "MEOWTH" },
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
        palette = "KEP_COINPUR",
        cry = "COINPUR",

        spriteFront = mod.assets:path("assets/pokemon/generated/coinpur/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/coinpur/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "KITTEN",
            heightFt = 1,
            heightIn = 0,
            weight = 60,
            text = "KEP_DEX_COINPUR",
        },
    })
end
