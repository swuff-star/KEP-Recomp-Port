local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local cheepChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 0, 1 } },
                    { squareNote = {
                        len = 3,
                        volume = 3,
                        fade = -5,
                        frequency = 1152,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 5,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 2,
                        frequency = 1408,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1152,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 2, 3, 2 } },
                    { squareNote = {
                        len = 3,
                        volume = 3,
                        fade = -6,
                        frequency = 1711,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 5,
                        frequency = 92,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 2,
                        frequency = 1967,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        frequency = 1711,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        parameter = 72,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 11,
                        fade = 5,
                        parameter = 40,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 10,
                        fade = 2,
                        parameter = 56,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 72,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("CHEEP", {
        chip = cheepChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_CHEEP", {
        { 255, 255, 255 },
        { 247, 140, 90 },
        { 90, 41, 115 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_CHEEP", "It can be seen\nleaping out of\nthe water and\nquickly flapping\nits fins in an\nattempt to fly")

    mod.content.pokemon:register("CHEEP", {
        id = "CHEEP",
        name = "CHEEP",
        dex = 106,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 45,
            attack = 65,
            defense = 40,
            speed = 60,
            special = 40,
        },

        catchRate = 190,
        baseExp = 84,
        growthRate = "SLOW",

        level1Moves = {
            "BUBBLE",
            "PECK",
        },

        learnset = {
            { level = 17, move = "COUNTER" },
            { level = 21, move = "BUBBLEBEAM" },
            { level = 25, move = "LOW_KICK" },
            { level = 30, move = "JUMP_KICK" },
            { level = 34, move = "SEISMIC_TOSS" },
            { level = 36, move = "WATERFALL" },
            { level = 40, move = "HI_JUMP_KICK" },
            { level = 44, move = "HYDRO_PUMP" },
            { level = 48, move = "DRILL_PECK" },
        },

        evolutions = {
            { method = "LEVEL", level = 30, species = "JABETTA" },
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
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SKY_ATTACK",
            "REST",
            "SUBSTITUTE",
            "SURF",
        },

        icon = "WATER",
        palette = "KEP_CHEEP",
        cry = "CHEEP",

        spriteFront = mod.assets:path("assets/pokemon/generated/cheep/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/cheep/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "FLYINGFISH",
            heightFt = 1,
            heightIn = 0,
            weight = 120,
            text = "KEP_DEX_CHEEP",
        },
    })
end
