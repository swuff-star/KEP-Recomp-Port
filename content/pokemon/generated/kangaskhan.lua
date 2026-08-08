local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local kangaskhanChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 1544,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        frequency = 1536,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 7,
                        frequency = 1520,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 4,
                        frequency = 1504,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 13,
                        fade = 3,
                        frequency = 1472,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1440,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1408,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 7,
                        frequency = 1284,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 6,
                        frequency = 1282,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 9,
                        fade = 7,
                        frequency = 1265,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 4,
                        frequency = 1249,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 10,
                        fade = 3,
                        frequency = 1218,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 3,
                        frequency = 1187,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1154,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 13,
                        volume = 14,
                        fade = 4,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 7,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        parameter = 92,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("KANGASKHAN", {
        chip = kangaskhanChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_KANGASKHAN", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_KANGASKHAN", "The female raises\nits offspring in\nits belly pouch.\nIt is adept at\nattacking using\nCOMET PUNCH")

    mod.content.pokemon:patch("KANGASKHAN", {
        name = "KANGASKHAN",
        dex = 201,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 105,
            attack = 95,
            defense = 80,
            speed = 90,
            special = 40,
        },

        catchRate = 45,
        baseExp = 175,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "COMET_PUNCH",
            "RAGE",
        },

        learnset = {
            { level = 26, move = "BITE" },
            { level = 31, move = "TAIL_WHIP" },
            { level = 36, move = "MEGA_PUNCH" },
            { level = 41, move = "LEER" },
            { level = 46, move = "DIZZY_PUNCH" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
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
        palette = "KEP_KANGASKHAN",
        cry = "KANGASKHAN",

        spriteFront = mod.assets:path("assets/pokemon/generated/kangaskhan/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/kangaskhan/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "PARENT",
            heightFt = 7,
            heightIn = 3,
            weight = 1760,
            text = "KEP_DEX_KANGASKHAN",
        },
    })
end
