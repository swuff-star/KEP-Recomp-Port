local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local dewgongChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 5,
                        frequency = 1571,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 13,
                        fade = 2,
                        frequency = 1627,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1619,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1611,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1603,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1587,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 10,
                        fade = 2,
                        frequency = 1595,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1587,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1603,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 13,
                        volume = 12,
                        fade = 3,
                        frequency = 1507,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 1,
                        frequency = 1564,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 10,
                        fade = 1,
                        frequency = 1556,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 10,
                        fade = 1,
                        frequency = 1548,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 1,
                        frequency = 1540,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 1,
                        frequency = 1532,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 8,
                        fade = 1,
                        frequency = 1524,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 1,
                        frequency = 1532,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1540,
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

    mod.content.cries:override("DEWGONG", {
        chip = dewgongChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_DEWGONG", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_DEWGONG", "Its blubber can\nbe up to 12 inches\nthick. Unusually,\nthey are more\nactive at lower\ntemperatures")

    mod.content.pokemon:patch("DEWGONG", {
        name = "DEWGONG",
        dex = 181,

        types = {
            "WATER",
            "ICE",
        },

        baseStats = {
            hp = 90,
            attack = 70,
            defense = 80,
            speed = 70,
            special = 95,
        },

        catchRate = 75,
        baseExp = 176,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "HEADBUTT",
            "GROWL",
            "AURORA_BEAM",
        },

        learnset = {
            { level = 10, move = "WATER_GUN" },
            { level = 15, move = "POWDER_SNOW" },
            { level = 20, move = "GROWL" },
            { level = 25, move = "AURORA_BEAM" },
            { level = 30, move = "REST" },
            { level = 39, move = "TAKE_DOWN" },
            { level = 45, move = "ICE_BEAM" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "PAY_DAY",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "WATER",
        palette = "KEP_DEWGONG",
        cry = "DEWGONG",

        spriteFront = mod.assets:path("assets/pokemon/generated/dewgong/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/dewgong/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "SEA LION",
            heightFt = 5,
            heightIn = 7,
            weight = 2650,
            text = "KEP_DEX_DEWGONG",
        },
    })
end
