local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local dragoniteChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 2044,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 2046,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1724,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1708,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 5,
                        frequency = 1692,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1660,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 7,
                        frequency = 1981,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        frequency = 1980,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1661,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1646,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1629,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1598,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 14,
                        fade = 4,
                        parameter = 120,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 104,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        parameter = 120,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 7,
                        parameter = 152,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 153,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("DRAGONITE", {
        chip = dragoniteChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_DRAGONITE", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_DRAGONITE", "Has the ability to\noutspeed a jet,\ndespite its bulk.\nFeared as a god\nof destruction due\nto its strength")

    mod.content.pokemon:patch("DRAGONITE", {
        name = "DRAGONITE",
        dex = 241,

        types = {
            "DRAGON",
            "FLYING",
        },

        baseStats = {
            hp = 91,
            attack = 134,
            defense = 95,
            speed = 80,
            special = 100,
        },

        catchRate = 9,
        baseExp = 218,
        growthRate = "SLOW",

        level1Moves = {
            "WRAP",
            "LEER",
            "THUNDER_WAVE",
            "AGILITY",
        },

        learnset = {
            { level = 10, move = "THUNDER_WAVE" },
            { level = 20, move = "AGILITY" },
            { level = 35, move = "SLAM" },
            { level = 45, move = "DRAGON_RAGE" },
            { level = 60, move = "HYPER_BEAM" },
            { level = 65, move = "THUNDER" },
        },

        evolutions = {},

        tmhm = {
            "RAZOR_WIND",
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
            "RAGE",
            "DRAGON_RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "FIRE_BLAST",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "SNAKE",
        palette = "KEP_DRAGONITE",
        cry = "DRAGONITE",

        spriteFront = mod.assets:path("assets/pokemon/generated/dragonite/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/dragonite/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "DRAGON",
            heightFt = 7,
            heightIn = 3,
            weight = 4630,
            text = "KEP_DEX_DRAGONITE",
        },
    })
end
