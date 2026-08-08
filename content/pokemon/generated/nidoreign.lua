local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local nidoreignChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 7,
                        frequency = 1804,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        frequency = 1809,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 4,
                        frequency = 1804,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 6,
                        frequency = 1788,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 3,
                        frequency = 1772,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 1756,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1780,
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
                        frequency = 44,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 7,
                        frequency = 1741,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 6,
                        frequency = 1743,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 7,
                        fade = 4,
                        frequency = 1741,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 7,
                        fade = 6,
                        frequency = 1725,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 8,
                        fade = 3,
                        frequency = 1710,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 10,
                        fade = 2,
                        frequency = 1693,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 7,
                        fade = 2,
                        frequency = 1717,
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
                        parameter = 104,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 106,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 7,
                        parameter = 104,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 5,
                        parameter = 103,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 13,
                        fade = 4,
                        parameter = 88,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 11,
                        fade = 6,
                        parameter = 104,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 10,
                        fade = 4,
                        parameter = 88,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 104,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("NIDOREIGN", {
        chip = nidoreignChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_NIDOREIGN", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_NIDOREIGN", "Said to have come\nfrom the moon. It\nhas toxic spines\nwhich can be used\nto make powerful\nMAX ELIXERs")

    mod.content.pokemon:register("NIDOREIGN", {
        id = "NIDOREIGN",
        name = "NIDOREIGN",
        dex = 54,

        types = {
            "POISON",
            "ROCK",
        },

        baseStats = {
            hp = 90,
            attack = 92,
            defense = 87,
            speed = 85,
            special = 75,
        },

        catchRate = 45,
        baseExp = 201,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "POISON_STING",
            "DOUBLE_KICK",
            "SPIKE_CANNON",
        },

        learnset = {
            { level = 23, move = "SPIKE_CANNON" },
            { level = 36, move = "ROCK_SLIDE" },
            { level = 43, move = "BODY_SLAM" },
            { level = 50, move = "THRASH" },
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
        palette = "KEP_NIDOREIGN",
        cry = "NIDOREIGN",

        spriteFront = mod.assets:path("assets/pokemon/generated/nidoreign/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/nidoreign/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "LUNAR",
            heightFt = 3,
            heightIn = 7,
            weight = 800,
            text = "KEP_DEX_NIDOREIGN",
        },
    })
end
