local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local poliwagChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 2047,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 127,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 63,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1791,
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
                        volume = 11,
                        fade = 1,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 6,
                        fade = 2,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1760,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 49,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 32,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        parameter = 16,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("POLIWAG", {
        chip = poliwagChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_POLIWAG", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_POLIWAG", "The thin, white\nskin reveals its\ninternal organs.\nSome believe it's\na mutation of\na common tadpole")

    mod.content.pokemon:patch("POLIWAG", {
        name = "POLIWAG",
        dex = 99,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 40,
            attack = 50,
            defense = 40,
            speed = 90,
            special = 40,
        },

        catchRate = 255,
        baseExp = 77,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "BUBBLE",
            "BIDE",
        },

        learnset = {
            { level = 16, move = "HYPNOSIS" },
            { level = 19, move = "WATER_GUN" },
            { level = 25, move = "DOUBLESLAP" },
            { level = 31, move = "BODY_SLAM" },
            { level = 38, move = "AMNESIA" },
            { level = 45, move = "HYDRO_PUMP" },
        },

        evolutions = {
            { method = "LEVEL", level = 25, species = "POLIWHIRL" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "RAGE",
            "PSYCHIC_M",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "PSYWAVE",
            "SUBSTITUTE",
            "SURF",
        },

        icon = "MON",
        palette = "KEP_POLIWAG",
        cry = "POLIWAG",

        spriteFront = mod.assets:path("assets/pokemon/generated/poliwag/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/poliwag/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "TADPOLE",
            heightFt = 2,
            heightIn = 0,
            weight = 270,
            text = "KEP_DEX_POLIWAG",
        },
    })
end
