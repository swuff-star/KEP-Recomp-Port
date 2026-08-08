local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local hitmonleeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 13,
                        volume = 15,
                        fade = 2,
                        frequency = 1216,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 3,
                        frequency = 1312,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 2,
                        frequency = 1296,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1280,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 2, 3, 2 } },
                    { squareNote = {
                        len = 12,
                        volume = 13,
                        fade = 2,
                        frequency = 1208,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 6,
                        frequency = 1304,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1288,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1272,
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
                        parameter = 236,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        parameter = 220,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        parameter = 236,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 220,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("HITMONLEE", {
        chip = hitmonleeChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_HITMONLEE", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_HITMONLEE", "Sometimes called\nThe Demon of\nKickboxing.\nDespite this, it\nis very docile\nwhen not fighting")

    mod.content.pokemon:patch("HITMONLEE", {
        name = "HITMONLEE",
        dex = 174,

        types = {
            "FIGHTING",
        },

        baseStats = {
            hp = 50,
            attack = 120,
            defense = 53,
            speed = 87,
            special = 35,
        },

        catchRate = 45,
        baseExp = 139,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "DOUBLE_KICK",
            "MEDITATE",
        },

        learnset = {
            { level = 33, move = "ROLLING_KICK" },
            { level = 38, move = "JUMP_KICK" },
            { level = 43, move = "FOCUS_ENERGY" },
            { level = 48, move = "HI_JUMP_KICK" },
            { level = 53, move = "MEGA_KICK" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "METRONOME",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_HITMONLEE",
        cry = "HITMONLEE",

        spriteFront = mod.assets:path("assets/pokemon/generated/hitmonlee/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/hitmonlee/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "KICKING",
            heightFt = 4,
            heightIn = 11,
            weight = 1100,
            text = "KEP_DEX_HITMONLEE",
        },
    })
end
