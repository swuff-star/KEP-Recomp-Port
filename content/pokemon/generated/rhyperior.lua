local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local rhyperiorChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 0, 2 } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1441,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1441,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1441,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 705,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 705,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 705,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 705,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 705,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 1,
                        frequency = 705,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 673,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 609,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 673,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 609,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 673,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 609,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 673,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 609,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 673,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 609,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 673,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 609,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 641,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 593,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 641,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 593,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 641,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 593,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 641,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 593,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 641,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 593,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 3,
                        frequency = 641,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 8,
                        fade = 1,
                        frequency = 593,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 1,
                        frequency = 561,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 2,
                        fade = 1,
                        frequency = 529,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 1,
                        frequency = 561,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 2,
                        fade = 1,
                        frequency = 529,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 1,
                        frequency = 561,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 2,
                        fade = 1,
                        frequency = 529,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 1,
                        frequency = 561,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 2,
                        fade = 1,
                        frequency = 529,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 3, 2, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = -1,
                        frequency = 1360,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = -1,
                        frequency = 1366,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 6,
                        frequency = 1437,
                    } },
                    { squareNote = {
                        len = 1,
                        volume = 15,
                        fade = 6,
                        frequency = 1437,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 0,
                        frequency = 1441,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 0,
                        frequency = 1437,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 0,
                        frequency = 1431,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        frequency = 1427,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 2,
                        frequency = 1427,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 16,
                        volume = 10,
                        fade = 6,
                        parameter = 38,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 10,
                        fade = 6,
                        parameter = 38,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 9,
                        fade = 0,
                        parameter = 77,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 0,
                        parameter = 77,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 9,
                        fade = 0,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 9,
                        fade = 0,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 9,
                        fade = 0,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 7,
                        fade = 5,
                        parameter = 111,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 7,
                        fade = 5,
                        parameter = 111,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 7,
                        fade = 5,
                        parameter = 111,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("RHYPERIOR", {
        chip = rhyperiorChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_RHYPERIOR", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_RHYPERIOR", "Stores rocks in\nthe holes in its\npalms, using its\nmuscles to shoot\nthem. GEODUDE are\nshot occasionally")

    mod.content.pokemon:register("RHYPERIOR", {
        id = "RHYPERIOR",
        name = "RHYPERIOR",
        dex = 195,

        types = {
            "GROUND",
            "ROCK",
        },

        baseStats = {
            hp = 115,
            attack = 140,
            defense = 130,
            speed = 40,
            special = 55,
        },

        catchRate = 30,
        baseExp = 217,
        growthRate = "SLOW",

        level1Moves = {
            "HORN_ATTACK",
            "STOMP",
            "TAIL_WHIP",
            "FURY_ATTACK",
        },

        learnset = {
            { level = 20, move = "STOMP" },
            { level = 25, move = "TAIL_WHIP" },
            { level = 30, move = "FURY_ATTACK" },
            { level = 35, move = "ROCK_SLIDE" },
            { level = 40, move = "HORN_DRILL" },
            { level = 48, move = "LEER" },
            { level = 55, move = "EARTHQUAKE" },
            { level = 64, move = "TAKE_DOWN" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
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
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
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
        palette = "KEP_RHYPERIOR",
        cry = "RHYPERIOR",

        spriteFront = mod.assets:path("assets/pokemon/generated/rhyperior/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/rhyperior/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "DRILL",
            heightFt = 7,
            heightIn = 10,
            weight = 6240,
            text = "KEP_DEX_RHYPERIOR",
        },
    })
end
