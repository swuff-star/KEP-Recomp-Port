local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local scream_tailChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 2042,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 122,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 58,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1786,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        frequency = 2011,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 2011,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 6,
                        fade = 2,
                        frequency = 1915,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1755,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 27,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        parameter = 11,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("SCREAM_TAIL", {
        chip = scream_tailChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_SCREAM_TAIL", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SCREAM_TAIL", "It resembles a\ncreature depicted\nin a strange book,\nbelieved to be a\nJIGGLYPUFF from\nancient times")

    mod.content.pokemon:register("SCREAM_TAIL", {
        id = "SCREAM_TAIL",
        name = "SCREAMTAIL",
        dex = 234,

        types = {
            "FAIRY",
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 115,
            attack = 65,
            defense = 99,
            speed = 111,
            special = 115,
        },

        catchRate = 50,
        baseExp = 210,
        growthRate = "SLIGHTLY_FAST",

        level1Moves = {
            "SING",
            "DISARMING_VOICE",
            "DISABLE",
            "BITE",
        },

        learnset = {
            { level = 56, move = "SCREECH" },
            { level = 63, move = "DAZZLE_GLEAM" },
            { level = 70, move = "DRAININGKISS" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
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
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "STRENGTH",
            "FLASH",
        },

        icon = "FAIRY",
        palette = "KEP_SCREAM_TAIL",
        cry = "SCREAM_TAIL",

        spriteFront = mod.assets:path("assets/pokemon/generated/scream_tail/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/scream_tail/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "PARADOX",
            heightFt = 3,
            heightIn = 11,
            weight = 180,
            text = "KEP_DEX_SCREAM_TAIL",
        },
    })
end
