local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local caterpieChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 6,
                        frequency = 32,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        frequency = 1984,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 7,
                        frequency = 2003,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 2034,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1937,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 14,
                        volume = 15,
                        fade = 6,
                        parameter = 204,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 6,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        parameter = 204,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("CATERPIE", {
        chip = caterpieChip.chip,
        pitch = 0,
        length = 32,
    })

    mod.content.palettes:register("KEP_CATERPIE", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_CATERPIE", "PIDGEY is its\narchenemy. If it\nsenses that it's\naround, it will\nquickly burrow\nunderground")

    mod.content.pokemon:patch("CATERPIE", {
        name = "CATERPIE",
        dex = 34,

        types = {
            "BUG",
        },

        baseStats = {
            hp = 45,
            attack = 30,
            defense = 35,
            speed = 45,
            special = 20,
        },

        catchRate = 255,
        baseExp = 53,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "STRING_SHOT",
        },

        learnset = {},

        evolutions = {
            { method = "LEVEL", level = 7, species = "METAPOD" },
        },

        tmhm = {},

        icon = "BUG",
        palette = "KEP_CATERPIE",
        cry = "CATERPIE",

        spriteFront = mod.assets:path("assets/pokemon/generated/caterpie/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/caterpie/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "WORM",
            heightFt = 1,
            heightIn = 0,
            weight = 60,
            text = "KEP_DEX_CATERPIE",
        },
    })
end
