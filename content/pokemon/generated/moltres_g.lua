local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local moltres_gChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 152,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        frequency = 155,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 4,
                        frequency = 152,
                    } },
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 6,
                        frequency = 208,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 3,
                        frequency = 207,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 208,
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
                        frequency = 248,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 7,
                        frequency = 1945,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 6,
                        frequency = 1946,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 7,
                        fade = 4,
                        frequency = 1945,
                    } },
                    { dutyPattern = { 1, 1, 3, 3 } },
                    { squareNote = {
                        len = 11,
                        volume = 7,
                        fade = 6,
                        frequency = 1998,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 8,
                        fade = 3,
                        frequency = 2001,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1999,
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
                        parameter = 52,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 54,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        parameter = 52,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 12,
                        fade = 5,
                        parameter = 51,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 4,
                        parameter = 53,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 6,
                        parameter = 52,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 4,
                        parameter = 53,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        parameter = 51,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("MOLTRES_G", {
        chip = moltres_gChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_MOLTRES_G", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MOLTRES_G", "The sinister aura\nthat surrounds it\nis said to burn\nthe spirit of any\ncreature that\nwanders too close")

    mod.content.pokemon:register("MOLTRES_G", {
        id = "MOLTRES_G",
        name = "MOLTRES",
        dex = 247,

        types = {
            "DARK",
            "FLYING",
        },

        baseStats = {
            hp = 90,
            attack = 85,
            defense = 90,
            speed = 90,
            special = 125,
        },

        catchRate = 3,
        baseExp = 217,
        growthRate = "SLOW",

        level1Moves = {
            "GUST",
            "LEER",
        },

        learnset = {
            { level = 45, move = "FAKE_TEARS" },
            { level = 50, move = "WING_ATTACK" },
            { level = 55, move = "BRUTAL_SWING" },
            { level = 60, move = "AGILITY" },
            { level = 65, move = "FEINT_ATTACK" },
            { level = 70, move = "NASTY_PLOT" },
            { level = 75, move = "FALSE_SURRENDER" },
            { level = 80, move = "SKY_ATTACK" },
        },

        evolutions = {},

        tmhm = {
            "WHIRLWIND",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKY_ATTACK",
            "REST",
            "SUBSTITUTE",
            "FLY",
        },

        icon = "BIRD",
        palette = "KEP_MOLTRES_G",
        cry = "MOLTRES_G",

        spriteFront = mod.assets:path("assets/pokemon/generated/moltres_g/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/moltres_g/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "MALEVOLENT",
            heightFt = 6,
            heightIn = 7,
            weight = 1460,
            text = "KEP_DEX_MOLTRES_G",
        },
    })
end
