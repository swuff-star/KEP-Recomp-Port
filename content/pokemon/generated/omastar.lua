local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local omastarChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 4,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 13,
                        fade = 6,
                        frequency = 32,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 4,
                        frequency = 24,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 25,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 4,
                        frequency = 1663,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 14,
                        fade = 6,
                        frequency = 2015,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 5,
                        frequency = 2007,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 2011,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 4,
                        parameter = 69,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 10,
                        fade = 5,
                        parameter = 67,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 68,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        parameter = 67,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("OMASTAR", {
        chip = omastarChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_OMASTAR", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_OMASTAR", "This prehistoric\nPOKéMON hunted by\nensnaring prey\nwith its dexterous\ntentacles, then\nbiting them")

    mod.content.pokemon:patch("OMASTAR", {
        name = "OMASTAR",
        dex = 226,

        types = {
            "ROCK",
            "WATER",
        },

        baseStats = {
            hp = 70,
            attack = 60,
            defense = 125,
            speed = 55,
            special = 115,
        },

        catchRate = 45,
        baseExp = 199,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "WATER_GUN",
            "WITHDRAW",
            "ROCK_THROW",
            "HORN_ATTACK",
        },

        learnset = {
            { level = 21, move = "ROCK_THROW" },
            { level = 34, move = "HORN_ATTACK" },
            { level = 39, move = "LEER" },
            { level = 46, move = "SPIKE_CANNON" },
            { level = 53, move = "HYDRO_PUMP" },
        },

        evolutions = {},

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
            "HYPER_BEAM",
            "SUBMISSION",
            "SEISMIC_TOSS",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "SURF",
        },

        icon = "HELIX",
        palette = "KEP_OMASTAR",
        cry = "OMASTAR",

        spriteFront = mod.assets:path("assets/pokemon/generated/omastar/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/omastar/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "SPIRAL",
            heightFt = 3,
            heightIn = 3,
            weight = 770,
            text = "KEP_DEX_OMASTAR",
        },
    })
end
