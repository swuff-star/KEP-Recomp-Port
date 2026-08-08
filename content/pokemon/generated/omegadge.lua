local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local omegadgeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 3, 0, 3 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 6,
                        frequency = 1472,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 3,
                        frequency = 1468,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1488,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1504,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1520,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1536,
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
                        frequency = 1201,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 3,
                        frequency = 1197,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 2,
                        frequency = 1217,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 2,
                        frequency = 1233,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1249,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1265,
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
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 13,
                        fade = 6,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 3,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 3,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 92,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("OMEGADGE", {
        chip = omegadgeChip.chip,
        pitch = 0,
        length = 0,
    })

    mod.content.palettes:register("KEP_OMEGADGE", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_OMEGADGE", "Modeled after the\nextinct GAWARHED,\nthis recent SILPH\ninvention is said\nto pack truly\ndevastating power")

    mod.content.pokemon:register("OMEGADGE", {
        id = "OMEGADGE",
        name = "OMEGADGE",
        dex = 232,

        types = {
            "STEEL",
        },

        baseStats = {
            hp = 101,
            attack = 106,
            defense = 120,
            speed = 28,
            special = 95,
        },

        catchRate = 25,
        baseExp = 204,
        growthRate = "SLOW",

        level1Moves = {
            "SUPERSONIC",
            "METAL_SOUND",
            "TACKLE",
            "MAGNET_BOMB",
        },

        learnset = {
            { level = 48, move = "SLAM" },
            { level = 50, move = "IRON_HEAD" },
            { level = 55, move = "IRON_DEFENSE" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SELFDESTRUCT",
            "FIRE_BLAST",
            "SWIFT",
            "REST",
            "THUNDER_WAVE",
            "EXPLOSION",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "STRENGTH",
            "FLASH",
        },

        icon = "MON",
        palette = "KEP_OMEGADGE",
        cry = "OMEGADGE",

        spriteFront = mod.assets:path("assets/pokemon/generated/omegadge/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/omegadge/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "ARTIFICIAL",
            heightFt = 8,
            heightIn = 6,
            weight = 8260,
            text = "KEP_DEX_OMEGADGE",
        },
    })
end
