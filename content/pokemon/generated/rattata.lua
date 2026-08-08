local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local rattataChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 0, 1 } },
                    { squareNote = {
                        len = 3,
                        volume = 3,
                        fade = -5,
                        frequency = 897,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 5,
                        frequency = 1537,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 2,
                        frequency = 1153,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 897,
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
                        frequency = 1456,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 5,
                        frequency = 1885,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 2,
                        frequency = 1712,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        frequency = 1456,
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
                        parameter = 73,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 11,
                        fade = 5,
                        parameter = 41,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 10,
                        fade = 2,
                        parameter = 57,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 73,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("RATTATA", {
        chip = rattataChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_RATTATA", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_RATTATA", "It gnaws on hard\nmaterial to keep\nits fangs short.\nIt feasts on nuts\nand acorns, but\nalso likes cheese")

    mod.content.pokemon:patch("RATTATA", {
        name = "RATTATA",
        dex = 23,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 30,
            attack = 56,
            defense = 35,
            speed = 72,
            special = 25,
        },

        catchRate = 255,
        baseExp = 57,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "TAIL_WHIP",
        },

        learnset = {
            { level = 7, move = "QUICK_ATTACK" },
            { level = 14, move = "HYPER_FANG" },
            { level = 23, move = "FOCUS_ENERGY" },
            { level = 34, move = "SUPER_FANG" },
        },

        evolutions = {
            { method = "LEVEL", level = 20, species = "RATICATE" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "BLIZZARD",
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
        palette = "KEP_RATTATA",
        cry = "RATTATA",

        spriteFront = mod.assets:path("assets/pokemon/generated/rattata/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/rattata/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "RAT",
            heightFt = 1,
            heightIn = 0,
            weight = 80,
            text = "KEP_DEX_RATTATA",
        },
    })
end
