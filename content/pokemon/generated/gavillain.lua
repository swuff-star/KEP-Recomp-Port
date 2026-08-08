local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local gavillainChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 0,
                        frequency = 118,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 122,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 3,
                        frequency = 1750,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 4,
                        frequency = 1782,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 6,
                        fade = -4,
                        frequency = 118,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 122,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 0,
                        frequency = 55,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 0,
                        frequency = 57,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 9,
                        fade = 3,
                        frequency = 1703,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 9,
                        fade = 4,
                        frequency = 1719,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 4,
                        fade = -4,
                        frequency = 55,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 3,
                        fade = 1,
                        frequency = 60,
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
                        parameter = 66,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 0,
                        parameter = 48,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 0,
                        parameter = 48,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 0,
                        parameter = 34,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        parameter = 66,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 7,
                        fade = -5,
                        parameter = 66,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 3,
                        parameter = 66,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("GAVILLAIN", {
        chip = gavillainChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_GAVILLAIN", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GAVILLAIN", "Its huge eyes can\nglow to brighten\nits surroundings.\nThose who gaze at\nthem for too long\nbecome immobile")

    mod.content.pokemon:register("GAVILLAIN", {
        id = "GAVILLAIN",
        name = "GAVILLAIN",
        dex = 150,

        types = {
            "DRAGON",
            "ELECTRIC",
        },

        baseStats = {
            hp = 80,
            attack = 80,
            defense = 75,
            speed = 95,
            special = 90,
        },

        catchRate = 45,
        baseExp = 167,
        growthRate = "FAST",

        level1Moves = {
            "SCRATCH",
            "LEER",
        },

        learnset = {
            { level = 7, move = "SUPERSONIC" },
            { level = 12, move = "BITE" },
            { level = 20, move = "THUNDERSHOCK" },
            { level = 24, move = "DRAGON_RAGE" },
            { level = 30, move = "SLASH" },
            { level = 35, move = "SCREECH" },
            { level = 41, move = "GLARE" },
            { level = 46, move = "CONFUSE_RAY" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
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
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "CUT",
            "FLASH",
        },

        icon = "MON",
        palette = "KEP_GAVILLAIN",
        cry = "GAVILLAIN",

        spriteFront = mod.assets:path("assets/pokemon/generated/gavillain/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/gavillain/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "GLARING",
            heightFt = 2,
            heightIn = 11,
            weight = 520,
            text = "KEP_DEX_GAVILLAIN",
        },
    })
end
