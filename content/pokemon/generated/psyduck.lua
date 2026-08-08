local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local psyduckChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 2, 3 } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 3,
                        frequency = 1412,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 14,
                        fade = 2,
                        frequency = 1380,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 13,
                        fade = 1,
                        frequency = 1346,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1188,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1218,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 3,
                        frequency = 1348,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        frequency = 1284,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1314,
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
                        volume = 13,
                        fade = 3,
                        frequency = 1408,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1376,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 12,
                        fade = 1,
                        frequency = 1344,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 1184,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1216,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 3,
                        frequency = 1344,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 4,
                        frequency = 1280,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1312,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("PSYDUCK", {
        chip = psyduckChip.chip,
        pitch = 0,
        length = 96,
    })

    mod.content.palettes:register("KEP_PSYDUCK", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PSYDUCK", "Always suffering\nfrom a constant\nheadache. If its\nheadache worsens,\nit unleashes its\npsychokinesis")

    mod.content.pokemon:patch("PSYDUCK", {
        name = "PSYDUCK",
        dex = 96,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 50,
            attack = 52,
            defense = 48,
            speed = 55,
            special = 50,
        },

        catchRate = 190,
        baseExp = 80,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "WATER_GUN",
        },

        learnset = {
            { level = 12, move = "TAIL_WHIP" },
            { level = 15, move = "AMNESIA" },
            { level = 18, move = "DISABLE" },
            { level = 26, move = "CONFUSION" },
            { level = 32, move = "FURY_SWIPES" },
            { level = 39, move = "HYDRO_PUMP" },
        },

        evolutions = {
            { method = "LEVEL", level = 22, species = "WEIRDUCK" },
        },

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
            "PAY_DAY",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_PSYDUCK",
        cry = "PSYDUCK",

        spriteFront = mod.assets:path("assets/pokemon/generated/psyduck/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/psyduck/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "DUCK",
            heightFt = 2,
            heightIn = 7,
            weight = 430,
            text = "KEP_DEX_PSYDUCK",
        },
    })
end
