local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local gawarhedChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 1984,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 1986,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1664,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1648,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 5,
                        frequency = 1632,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1600,
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
                        frequency = 1921,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1601,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1586,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1569,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1538,
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
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 7,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 93,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("GAWARHED", {
        chip = gawarhedChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_GAWARHED", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GAWARHED", "Very dangerous\nand frequently\nrampaged wildly.\nIts jaws could\neven demolish\nhuge boulders")

    mod.content.pokemon:register("GAWARHED", {
        id = "GAWARHED",
        name = "GAWARHED",
        dex = 231,

        types = {
            "ROCK",
        },

        baseStats = {
            hp = 101,
            attack = 124,
            defense = 100,
            speed = 30,
            special = 95,
        },

        catchRate = 45,
        baseExp = 204,
        growthRate = "SLOW",

        level1Moves = {
            "SUBSTITUTE",
            "GROWL",
            "TACKLE",
        },

        learnset = {
            { level = 35, move = "SCREECH" },
            { level = 38, move = "ROCK_THROW" },
            { level = 40, move = "ROAR" },
            { level = 47, move = "ROCK_SLIDE" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "DRAGON_RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_GAWARHED",
        cry = "GAWARHED",

        spriteFront = mod.assets:path("assets/pokemon/generated/gawarhed/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/gawarhed/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "CALAMITY",
            heightFt = 8,
            heightIn = 2,
            weight = 6900,
            text = "KEP_DEX_GAWARHED",
        },
    })
end
