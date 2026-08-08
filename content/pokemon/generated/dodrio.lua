local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local dodrioChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1945,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 25,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 2009,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 2009,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 25,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1945,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1946,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 27,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 1,
                        frequency = 2011,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 2010,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 13,
                        volume = 0,
                        fade = 0,
                        frequency = 153,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1946,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 27,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 2010,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 2010,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 27,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1946,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 16,
                        volume = 0,
                        fade = 0,
                        parameter = 153,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 0,
                        fade = 0,
                        parameter = 153,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        parameter = 229,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        parameter = 197,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        parameter = 213,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        parameter = 213,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 1,
                        parameter = 197,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 229,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("DODRIO", {
        chip = dodrioChip.chip,
        pitch = 0,
        length = 32,
    })

    mod.content.palettes:register("KEP_DODRIO", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_DODRIO", "Historians claim\nthat an ancient\nreligion in\nCentral America\nrevered DODRIO as\ntheir symbol")

    mod.content.pokemon:patch("DODRIO", {
        name = "DODRIO",
        dex = 164,

        types = {
            "NORMAL",
            "FLYING",
        },

        baseStats = {
            hp = 60,
            attack = 110,
            defense = 70,
            speed = 100,
            special = 60,
        },

        catchRate = 45,
        baseExp = 158,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "PECK",
            "GROWL",
            "FURY_ATTACK",
        },

        learnset = {
            { level = 11, move = "FURY_ATTACK" },
            { level = 20, move = "QUICK_ATTACK" },
            { level = 24, move = "RAGE" },
            { level = 28, move = "DRILL_PECK" },
            { level = 36, move = "TRI_ATTACK" },
            { level = 42, move = "AGILITY" },
        },

        evolutions = {},

        tmhm = {
            "WHIRLWIND",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "SKY_ATTACK",
            "REST",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "FLY",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/smallbird.png"),
            frames = 2,
        },
        palette = "KEP_DODRIO",
        cry = "DODRIO",

        spriteFront = mod.assets:path("assets/pokemon/generated/dodrio/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/dodrio/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "TRIPLEBIRD",
            heightFt = 5,
            heightIn = 11,
            weight = 1880,
            text = "KEP_DEX_DODRIO",
        },
    })
end
