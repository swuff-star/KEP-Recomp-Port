local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local venomothChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 7,
                        frequency = 1897,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 1901,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 5,
                        frequency = 1913,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 1929,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 1961,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1993,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 7,
                        frequency = 1834,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 11,
                        fade = 6,
                        frequency = 1835,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1850,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1866,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 3,
                        frequency = 1898,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1931,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        parameter = 101,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        parameter = 117,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 101,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 7,
                        parameter = 117,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 14,
                        fade = 2,
                        parameter = 101,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 85,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("VENOMOTH", {
        chip = venomothChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_VENOMOTH", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_VENOMOTH", "It scatters highly\ntoxic dust around\nas it flies, due\nto the powdery\nscales that cover\nits wings")

    mod.content.pokemon:patch("VENOMOTH", {
        name = "VENOMOTH",
        dex = 95,

        types = {
            "BUG",
            "POISON",
        },

        baseStats = {
            hp = 70,
            attack = 65,
            defense = 60,
            speed = 90,
            special = 90,
        },

        catchRate = 75,
        baseExp = 138,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "DISABLE",
            "POISONPOWDER",
            "LEECH_LIFE",
        },

        learnset = {
            { level = 22, move = "POISONPOWDER" },
            { level = 27, move = "LEECH_LIFE" },
            { level = 30, move = "STUN_SPORE" },
            { level = 38, move = "PSYBEAM" },
            { level = 43, move = "SLEEP_POWDER" },
            { level = 50, move = "PSYCHIC_M" },
        },

        evolutions = {},

        tmhm = {
            "RAZOR_WIND",
            "WHIRLWIND",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "REST",
            "PSYWAVE",
            "SUBSTITUTE",
            "FLASH",
        },

        icon = "BUG",
        palette = "KEP_VENOMOTH",
        cry = "VENOMOTH",

        spriteFront = mod.assets:path("assets/pokemon/generated/venomoth/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/venomoth/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "POISONMOTH",
            heightFt = 4,
            heightIn = 11,
            weight = 280,
            text = "KEP_DEX_VENOMOTH",
        },
    })
end
