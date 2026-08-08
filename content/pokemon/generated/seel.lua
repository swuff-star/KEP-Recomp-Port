local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local seelChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 5,
                        frequency = 1672,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 13,
                        fade = 2,
                        frequency = 1728,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1720,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1712,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1704,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1688,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 10,
                        fade = 2,
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1688,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1704,
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
                        frequency = 1608,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 1,
                        frequency = 1665,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 10,
                        fade = 1,
                        frequency = 1657,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 10,
                        fade = 1,
                        frequency = 1649,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 1,
                        frequency = 1641,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 1,
                        frequency = 1633,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 8,
                        fade = 1,
                        frequency = 1625,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 1,
                        frequency = 1633,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1641,
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

    mod.content.cries:override("SEEL", {
        chip = seelChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_SEEL", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SEEL", "Lives in cold sea\ncaves. Its thick\nhide allows it to\nstay active in\ntemperatures of\n-40 degrees F")

    mod.content.pokemon:patch("SEEL", {
        name = "SEEL",
        dex = 180,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 65,
            attack = 45,
            defense = 55,
            speed = 45,
            special = 70,
        },

        catchRate = 190,
        baseExp = 100,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "HEADBUTT",
        },

        learnset = {
            { level = 10, move = "WATER_GUN" },
            { level = 15, move = "POWDER_SNOW" },
            { level = 20, move = "GROWL" },
            { level = 25, move = "AURORA_BEAM" },
            { level = 30, move = "REST" },
            { level = 35, move = "TAKE_DOWN" },
            { level = 40, move = "ICE_BEAM" },
        },

        evolutions = {
            { method = "LEVEL", level = 34, species = "DEWGONG" },
        },

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
        palette = "KEP_SEEL",
        cry = "SEEL",

        spriteFront = mod.assets:path("assets/pokemon/generated/seel/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/seel/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "SEA LION",
            heightFt = 3,
            heightIn = 7,
            weight = 1980,
            text = "KEP_DEX_SEEL",
        },
    })
end
