local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local mr_mimeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 14,
                        volume = 15,
                        fade = 1,
                        frequency = 1305,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 1,
                        frequency = 1309,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 1,
                        frequency = 1305,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1305,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 1, 1, 1 } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 1,
                        frequency = 1300,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 1,
                        frequency = 1304,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 1,
                        frequency = 1300,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1298,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 15,
                        volume = 15,
                        fade = 2,
                        parameter = 109,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 14,
                        fade = 2,
                        parameter = 93,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 13,
                        fade = 2,
                        parameter = 94,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 110,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("MR_MIME", {
        chip = mr_mimeChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_MR_MIME", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MR_MIME", "It is said to\ncreate invisible\nwalls by miming.\nIts fingertips\nhave suction pads\nto climb them")

    mod.content.pokemon:patch("MR_MIME", {
        name = "MR.MIME",
        dex = 211,

        types = {
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 40,
            attack = 45,
            defense = 65,
            speed = 90,
            special = 100,
        },

        catchRate = 45,
        baseExp = 136,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "CONFUSION",
            "BARRIER",
        },

        learnset = {
            { level = 15, move = "CONFUSION" },
            { level = 23, move = "LIGHT_SCREEN" },
            { level = 31, move = "DOUBLESLAP" },
            { level = 39, move = "MEDITATE" },
            { level = 47, move = "SUBSTITUTE" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "SOLARBEAM",
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "METRONOME",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "SUBSTITUTE",
            "FLASH",
        },

        icon = "MON",
        palette = "KEP_MR_MIME",
        cry = "MR_MIME",

        spriteFront = mod.assets:path("assets/pokemon/generated/mr_mime/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/mr_mime/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "BARRIER",
            heightFt = 4,
            heightIn = 3,
            weight = 1200,
            text = "KEP_DEX_MR_MIME",
        },
    })
end
