local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local dratiniChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 32,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 34,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1744,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 5,
                        frequency = 1728,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1696,
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
                        frequency = 2017,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1697,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1682,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1665,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1634,
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
                        parameter = 156,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 140,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        parameter = 156,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 7,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 189,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("DRATINI", {
        chip = dratiniChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_DRATINI", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_DRATINI", "Long considered a\nmythical POKéMON\nuntil recently,\nwhen a fisherman\nhooked one inside\nthe SAFARI ZONE")

    mod.content.pokemon:patch("DRATINI", {
        name = "DRATINI",
        dex = 239,

        types = {
            "DRAGON",
        },

        baseStats = {
            hp = 41,
            attack = 64,
            defense = 45,
            speed = 50,
            special = 50,
        },

        catchRate = 45,
        baseExp = 67,
        growthRate = "SLOW",

        level1Moves = {
            "WRAP",
            "LEER",
            "TAKE_DOWN",
        },

        learnset = {
            { level = 10, move = "THUNDER_WAVE" },
            { level = 20, move = "AGILITY" },
            { level = 30, move = "SLAM" },
            { level = 40, move = "DRAGON_RAGE" },
            { level = 50, move = "HYPER_BEAM" },
            { level = 55, move = "THUNDER" },
        },

        evolutions = {
            { method = "LEVEL", level = 30, species = "DRAGONAIR" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
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
        },

        icon = "SNAKE",
        palette = "KEP_DRATINI",
        cry = "DRATINI",

        spriteFront = mod.assets:path("assets/pokemon/generated/dratini/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/dratini/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "DRAGON",
            heightFt = 5,
            heightIn = 11,
            weight = 70,
            text = "KEP_DEX_DRATINI",
        },
    })
end
