local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local starmieChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 2,
                        frequency = 1536,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1600,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1664,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1728,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1984,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 1, 0, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 0,
                        fade = 0,
                        frequency = 1,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1473,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1538,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1601,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1666,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1730,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 9,
                        fade = 2,
                        frequency = 1793,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1858,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        frequency = 1921,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 0,
                        fade = 0,
                        parameter = 1,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 2,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 11,
                        fade = 2,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        parameter = 28,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 10,
                        fade = 2,
                        parameter = 27,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 9,
                        fade = 2,
                        parameter = 26,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        parameter = 24,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("STARMIE", {
        chip = starmieChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_STARMIE", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_STARMIE", "Little is known\nabout STARMIE.\nLocally, due to\nits body shape,\nit is believed\nto be an alien")

    mod.content.pokemon:patch("STARMIE", {
        name = "STARMIE",
        dex = 186,

        types = {
            "WATER",
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 60,
            attack = 75,
            defense = 85,
            speed = 115,
            special = 100,
        },

        catchRate = 60,
        baseExp = 207,
        growthRate = "SLOW",

        level1Moves = {
            "TACKLE",
            "WATER_GUN",
            "HARDEN",
        },

        learnset = {},

        evolutions = {},

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "SURF",
            "FLASH",
        },

        icon = "HELIX",
        palette = "KEP_STARMIE",
        cry = "STARMIE",

        spriteFront = mod.assets:path("assets/pokemon/generated/starmie/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/starmie/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "MYSTERIOUS",
            heightFt = 3,
            heightIn = 7,
            weight = 1760,
            text = "KEP_DEX_STARMIE",
        },
    })
end
