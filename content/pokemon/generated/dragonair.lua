local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local dragonairChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 2,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1728,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1712,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 5,
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1664,
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
                        frequency = 1985,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        frequency = 1984,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1665,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1650,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1633,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1602,
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
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 7,
                        parameter = 156,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 157,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("DRAGONAIR", {
        chip = dragonairChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_DRAGONAIR", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_DRAGONAIR", "A mystical POKéMON\nthat can summon\nrain and snow.\nThough it lacks\nwings, it can\nfly in the sky")

    mod.content.pokemon:patch("DRAGONAIR", {
        name = "DRAGONAIR",
        dex = 240,

        types = {
            "DRAGON",
        },

        baseStats = {
            hp = 61,
            attack = 84,
            defense = 65,
            speed = 70,
            special = 70,
        },

        catchRate = 27,
        baseExp = 144,
        growthRate = "SLOW",

        level1Moves = {
            "WRAP",
            "LEER",
            "THUNDER_WAVE",
            "TAKE_DOWN",
        },

        learnset = {
            { level = 10, move = "THUNDER_WAVE" },
            { level = 20, move = "AGILITY" },
            { level = 35, move = "SLAM" },
            { level = 45, move = "DRAGON_RAGE" },
            { level = 55, move = "HYPER_BEAM" },
            { level = 60, move = "THUNDER" },
        },

        evolutions = {
            { method = "LEVEL", level = 55, species = "DRAGONITE" },
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
        palette = "KEP_DRAGONAIR",
        cry = "DRAGONAIR",

        spriteFront = mod.assets:path("assets/pokemon/generated/dragonair/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/dragonair/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "DRAGON",
            heightFt = 13,
            heightIn = 1,
            weight = 360,
            text = "KEP_DEX_DRAGONAIR",
        },
    })
end
