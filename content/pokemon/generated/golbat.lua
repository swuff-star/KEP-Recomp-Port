local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local golbatChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 2047,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 0,
                        frequency = 2042,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        frequency = 10,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 2042,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1818,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1822,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 2, 0, 2 } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 0,
                        frequency = 1981,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 10,
                        fade = 0,
                        frequency = 1979,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 4,
                        frequency = 1996,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1979,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 2,
                        frequency = 1755,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        frequency = 1762,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        parameter = 70,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 6,
                        parameter = 54,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 5,
                        parameter = 68,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 11,
                        fade = 2,
                        parameter = 85,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 70,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("GOLBAT", {
        chip = golbatChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_GOLBAT", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GOLBAT", "Using its sharp\nfangs, it latches\nonto its prey,\nthen drains over\n10 ounces of blood\nin one bite")

    mod.content.pokemon:patch("GOLBAT", {
        name = "GOLBAT",
        dex = 57,

        types = {
            "POISON",
            "FLYING",
        },

        baseStats = {
            hp = 75,
            attack = 80,
            defense = 70,
            speed = 90,
            special = 75,
        },

        catchRate = 90,
        baseExp = 171,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "LEECH_LIFE",
            "TACKLE",
            "BITE",
            "SCREECH",
        },

        learnset = {
            { level = 7, move = "WING_ATTACK" },
            { level = 12, move = "GUST" },
            { level = 14, move = "SUPERSONIC" },
            { level = 20, move = "BITE" },
            { level = 26, move = "CONFUSE_RAY" },
            { level = 32, move = "DISABLE" },
            { level = 38, move = "SCREECH" },
            { level = 42, move = "HAZE" },
        },

        evolutions = {
            { method = "LEVEL", level = 40, species = "CROBAT" },
        },

        tmhm = {
            "RAZOR_WIND",
            "WHIRLWIND",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MEGA_DRAIN",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "REST",
            "SUBSTITUTE",
        },

        icon = "MON",
        palette = "KEP_GOLBAT",
        cry = "GOLBAT",

        spriteFront = mod.assets:path("assets/pokemon/generated/golbat/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/golbat/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "BAT",
            heightFt = 5,
            heightIn = 3,
            weight = 1210,
            text = "KEP_DEX_GOLBAT",
        },
    })
end
