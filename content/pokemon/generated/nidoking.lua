local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local nidokingChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 1952,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        frequency = 1955,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 4,
                        frequency = 1952,
                    } },
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 6,
                        frequency = 2008,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 3,
                        frequency = 2007,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 2008,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 3,
                        volume = 0,
                        fade = 0,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 7,
                        frequency = 1697,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 6,
                        frequency = 1698,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 7,
                        fade = 4,
                        frequency = 1697,
                    } },
                    { dutyPattern = { 1, 1, 3, 3 } },
                    { squareNote = {
                        len = 11,
                        volume = 7,
                        fade = 6,
                        frequency = 1750,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 8,
                        fade = 3,
                        frequency = 1753,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1751,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 62,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 12,
                        fade = 5,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 4,
                        parameter = 61,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 6,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 4,
                        parameter = 61,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        parameter = 59,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("NIDOKING", {
        chip = nidokingChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_NIDOKING", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_NIDOKING", "Recognised by its\nrock-hard hide and\nvenomous horn.\nIt will shy away\nfrom fighting\nNIDOQUEEN")

    mod.content.pokemon:patch("NIDOKING", {
        name = "NIDOKING",
        dex = 53,

        types = {
            "POISON",
            "GROUND",
        },

        baseStats = {
            hp = 81,
            attack = 92,
            defense = 77,
            speed = 85,
            special = 75,
        },

        catchRate = 45,
        baseExp = 195,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "HORN_ATTACK",
            "FOCUS_ENERGY",
            "THRASH",
        },

        learnset = {
            { level = 8, move = "HORN_ATTACK" },
            { level = 14, move = "POISON_STING" },
            { level = 23, move = "THRASH" },
            { level = 28, move = "MEGA_PUNCH" },
            { level = 36, move = "EARTHQUAKE" },
            { level = 49, move = "DOUBLE_EDGE" },
            { level = 57, move = "MEGA_KICK" },
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
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
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
        palette = "KEP_NIDOKING",
        cry = "NIDOKING",

        spriteFront = mod.assets:path("assets/pokemon/generated/nidoking/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/nidoking/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "DRILL",
            heightFt = 4,
            heightIn = 7,
            weight = 1370,
            text = "KEP_DEX_NIDOKING",
        },
    })
end
