local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local haunterChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 6,
                        frequency = 17,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 6,
                        frequency = 18,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 6,
                        frequency = 17,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 16,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 18,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 17,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 6,
                        frequency = 16,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 15,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 2041,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 3,
                        frequency = 2039,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 12,
                        fade = 4,
                        frequency = 2035,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 2039,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 2041,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 2037,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 14,
                        volume = 1,
                        fade = -1,
                        parameter = 172,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 15,
                        fade = 7,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 172,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 156,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        parameter = 140,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("HAUNTER", {
        chip = haunterChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_HAUNTER", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_HAUNTER", "If you get the\nfeeling of being\nwatched in the\ndarkness while\nalone, HAUNTER\nmay be lurking")

    mod.content.pokemon:patch("HAUNTER", {
        name = "HAUNTER",
        dex = 156,

        types = {
            "GHOST",
            "POISON",
        },

        baseStats = {
            hp = 45,
            attack = 50,
            defense = 45,
            speed = 95,
            special = 115,
        },

        catchRate = 90,
        baseExp = 126,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "LICK",
            "CONFUSE_RAY",
            "NIGHT_SHADE",
        },

        learnset = {
            { level = 29, move = "HYPNOSIS" },
            { level = 38, move = "DREAM_EATER" },
        },

        evolutions = {
            { method = "TRADE", species = "GENGAR" },
        },

        tmhm = {
            "TOXIC",
            "RAGE",
            "MEGA_DRAIN",
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SELFDESTRUCT",
            "DREAM_EATER",
            "REST",
            "PSYWAVE",
            "EXPLOSION",
            "SUBSTITUTE",
        },

        icon = "MON",
        palette = "KEP_HAUNTER",
        cry = "HAUNTER",

        spriteFront = mod.assets:path("assets/pokemon/generated/haunter/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/haunter/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "GAS",
            heightFt = 5,
            heightIn = 3,
            weight = 2,
            text = "KEP_DEX_HAUNTER",
        },
    })
end
