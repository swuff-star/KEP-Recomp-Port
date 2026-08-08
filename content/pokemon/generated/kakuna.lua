local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local kakunaChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 3, 0, 3 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 6,
                        frequency = 1727,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 3,
                        frequency = 1723,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1743,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1759,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1775,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1791,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 1, 2, 1 } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 6,
                        frequency = 1456,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 3,
                        frequency = 1452,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 2,
                        frequency = 1472,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 2,
                        frequency = 1488,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1504,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1520,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 11,
                        volume = 14,
                        fade = 6,
                        parameter = 91,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 13,
                        fade = 6,
                        parameter = 107,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 3,
                        parameter = 91,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 3,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 91,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("KAKUNA", {
        chip = kakunaChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_KAKUNA", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_KAKUNA", "Almost incapable\nof moving. In an\nattempt to protect\nitself, it may\nextend its hidden\npoisonous barb")

    mod.content.pokemon:patch("KAKUNA", {
        name = "KAKUNA",
        dex = 38,

        types = {
            "BUG",
            "POISON",
        },

        baseStats = {
            hp = 45,
            attack = 25,
            defense = 50,
            speed = 35,
            special = 25,
        },

        catchRate = 120,
        baseExp = 71,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "HARDEN",
        },

        learnset = {
            { level = 7, move = "HARDEN" },
            { level = 8, move = "HARDEN" },
            { level = 9, move = "HARDEN" },
        },

        evolutions = {
            { method = "LEVEL", level = 10, species = "BEEDRILL" },
        },

        tmhm = {},

        icon = "BUG",
        palette = "KEP_KAKUNA",
        cry = "KAKUNA",

        spriteFront = mod.assets:path("assets/pokemon/generated/kakuna/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/kakuna/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "COCOON",
            heightFt = 2,
            heightIn = 0,
            weight = 220,
            text = "KEP_DEX_KAKUNA",
        },
    })
end
