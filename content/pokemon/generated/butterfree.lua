local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local butterfreeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 2039,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 6,
                        frequency = 23,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        frequency = 1975,
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
                        frequency = 1994,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 2025,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1928,
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
                        parameter = 195,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 6,
                        parameter = 179,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        parameter = 195,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("BUTTERFREE", {
        chip = butterfreeChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_BUTTERFREE", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_BUTTERFREE", "Its wings are\ncovered in water-\nrepellent scales\nthat allow it to\nfly, even on\nrainy days")

    mod.content.pokemon:patch("BUTTERFREE", {
        name = "BUTTERFREE",
        dex = 36,

        types = {
            "BUG",
            "FLYING",
        },

        baseStats = {
            hp = 60,
            attack = 45,
            defense = 50,
            speed = 70,
            special = 80,
        },

        catchRate = 45,
        baseExp = 160,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "CONFUSION",
            "TACKLE",
            "STRING_SHOT",
            "HARDEN",
        },

        learnset = {
            { level = 10, move = "CONFUSION" },
            { level = 13, move = "POISONPOWDER" },
            { level = 14, move = "STUN_SPORE" },
            { level = 15, move = "SLEEP_POWDER" },
            { level = 18, move = "SUPERSONIC" },
            { level = 23, move = "WHIRLWIND" },
            { level = 28, move = "GUST" },
            { level = 34, move = "PSYBEAM" },
            { level = 40, move = "MEGA_DRAIN" },
            { level = 45, move = "TAKE_DOWN" },
            { level = 50, move = "HYPER_BEAM" },
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
        palette = "KEP_BUTTERFREE",
        cry = "BUTTERFREE",

        spriteFront = mod.assets:path("assets/pokemon/generated/butterfree/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/butterfree/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "BUTTERFLY",
            heightFt = 3,
            heightIn = 7,
            weight = 710,
            text = "KEP_DEX_BUTTERFREE",
        },
    })
end
