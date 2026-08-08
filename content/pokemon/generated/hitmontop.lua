local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local hitmontopChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 1, 0, 1 } },
                    { squareNote = {
                        len = 13,
                        volume = 15,
                        fade = 2,
                        frequency = 1958,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 0,
                        frequency = 1968,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 0,
                        frequency = 944,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 0,
                        frequency = 928,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 656,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 13,
                        volume = 11,
                        fade = 2,
                        parameter = 80,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 0,
                        parameter = 96,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 10,
                        fade = 0,
                        parameter = 91,
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

    mod.content.cries:register("HITMONTOP", {
        chip = hitmontopChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_HITMONTOP", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_HITMONTOP", "While balancing\non its head, it\nspins around at\nhigh speed, all\nwhile launching\npowerful kicks")

    mod.content.pokemon:register("HITMONTOP", {
        id = "HITMONTOP",
        name = "HITMONTOP",
        dex = 176,

        types = {
            "FIGHTING",
        },

        baseStats = {
            hp = 50,
            attack = 95,
            defense = 95,
            speed = 70,
            special = 35,
        },

        catchRate = 45,
        baseExp = 138,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "ROLLING_KICK",
            "FOCUS_ENERGY",
        },

        learnset = {
            { level = 33, move = "QUICK_ATTACK" },
            { level = 38, move = "COUNTER" },
            { level = 43, move = "AGILITY" },
            { level = 48, move = "JUMP_KICK" },
            { level = 53, move = "DOUBLE_KICK" },
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
            "DIG",
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
        palette = "KEP_HITMONTOP",
        cry = "HITMONTOP",

        spriteFront = mod.assets:path("assets/pokemon/generated/hitmontop/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/hitmontop/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "HANDSTAND",
            heightFt = 4,
            heightIn = 7,
            weight = 1060,
            text = "KEP_DEX_HITMONTOP",
        },
    })
end
