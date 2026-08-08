local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local jabettaChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 0, 1 } },
                    { squareNote = {
                        len = 3,
                        volume = 3,
                        fade = -5,
                        frequency = 947,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 5,
                        frequency = 1587,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 2,
                        frequency = 1203,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 947,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 2, 3, 2 } },
                    { squareNote = {
                        len = 3,
                        volume = 3,
                        fade = -6,
                        frequency = 1506,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 5,
                        frequency = 1935,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 2,
                        frequency = 1762,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        frequency = 1506,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        parameter = 123,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 11,
                        fade = 5,
                        parameter = 91,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 10,
                        fade = 2,
                        parameter = 107,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 123,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("JABETTA", {
        chip = jabettaChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_JABETTA", {
        { 255, 255, 255 },
        { 247, 140, 90 },
        { 90, 41, 115 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_JABETTA", "Ill-tempered and\nfeisty, it often\npicks fights with\nother JABETTA to\ncompete for food\nand territory")

    mod.content.pokemon:register("JABETTA", {
        id = "JABETTA",
        name = "JABETTA",
        dex = 107,

        types = {
            "WATER",
            "FIGHTING",
        },

        baseStats = {
            hp = 80,
            attack = 125,
            defense = 70,
            speed = 80,
            special = 80,
        },

        catchRate = 75,
        baseExp = 184,
        growthRate = "SLOW",

        level1Moves = {
            "BUBBLE",
            "PECK",
            "COUNTER",
        },

        learnset = {
            { level = 17, move = "COUNTER" },
            { level = 21, move = "BUBBLEBEAM" },
            { level = 25, move = "LOW_KICK" },
            { level = 30, move = "JUMP_KICK" },
            { level = 36, move = "SEISMIC_TOSS" },
            { level = 38, move = "WATERFALL" },
            { level = 46, move = "HI_JUMP_KICK" },
            { level = 50, move = "HYDRO_PUMP" },
            { level = 52, move = "DRILL_PECK" },
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
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SKY_ATTACK",
            "REST",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "WATER",
        palette = "KEP_JABETTA",
        cry = "JABETTA",

        spriteFront = mod.assets:path("assets/pokemon/generated/jabetta/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/jabetta/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "COMBATIVE",
            heightFt = 5,
            heightIn = 3,
            weight = 950,
            text = "KEP_DEX_JABETTA",
        },
    })
end
