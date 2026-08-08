local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local nidoqueenChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 7,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        frequency = 1765,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 4,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 6,
                        frequency = 1744,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 3,
                        frequency = 1728,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 1712,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1736,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 0,
                        fade = 0,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 7,
                        frequency = 1697,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 6,
                        frequency = 1699,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 7,
                        fade = 4,
                        frequency = 1697,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 7,
                        fade = 6,
                        frequency = 1681,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 8,
                        fade = 3,
                        frequency = 1666,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 10,
                        fade = 2,
                        frequency = 1649,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 7,
                        fade = 2,
                        frequency = 1673,
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
                        len = 9,
                        volume = 13,
                        fade = 7,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 5,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 13,
                        fade = 4,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 11,
                        fade = 6,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 10,
                        fade = 4,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 60,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("NIDOQUEEN", {
        chip = nidoqueenChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_NIDOQUEEN", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_NIDOQUEEN", "Covered in needle-\nlike scales that\nstand up when it\nbecomes agitated,\nwhich it uses to\nprotect its young")

    mod.content.pokemon:patch("NIDOQUEEN", {
        name = "NIDOQUEEN",
        dex = 50,

        types = {
            "POISON",
            "GROUND",
        },

        baseStats = {
            hp = 90,
            attack = 82,
            defense = 87,
            speed = 76,
            special = 75,
        },

        catchRate = 45,
        baseExp = 194,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "SCRATCH",
            "TAIL_WHIP",
            "BODY_SLAM",
        },

        learnset = {
            { level = 8, move = "SCRATCH" },
            { level = 14, move = "POISON_STING" },
            { level = 23, move = "BODY_SLAM" },
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
        palette = "KEP_NIDOQUEEN",
        cry = "NIDOQUEEN",

        spriteFront = mod.assets:path("assets/pokemon/generated/nidoqueen/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/nidoqueen/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "DRILL",
            heightFt = 4,
            heightIn = 3,
            weight = 1320,
            text = "KEP_DEX_NIDOQUEEN",
        },
    })
end
