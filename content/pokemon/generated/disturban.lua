local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local disturbanChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 3, 0, 2 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 0,
                        frequency = 1328,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 0,
                        frequency = 1344,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 0,
                        frequency = 434,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 0,
                        frequency = 435,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 2,
                        frequency = 436,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 2,
                        frequency = 436,
                    } },
                    { squareNote = {
                        len = 1,
                        volume = 11,
                        fade = 2,
                        frequency = 436,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 1, 0, 2 } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 0,
                        frequency = 1312,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 0,
                        frequency = 1320,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 0,
                        frequency = 384,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 8,
                        fade = 0,
                        frequency = 386,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 7,
                        fade = 2,
                        frequency = 388,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 7,
                        fade = 2,
                        frequency = 388,
                    } },
                    { squareNote = {
                        len = 1,
                        volume = 7,
                        fade = 2,
                        frequency = 388,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 11,
                        fade = -6,
                        parameter = 73,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 11,
                        fade = -6,
                        parameter = 58,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 11,
                        fade = -6,
                        parameter = 41,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 3,
                        parameter = 110,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 3,
                        parameter = 110,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 3,
                        parameter = 110,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("DISTURBAN", {
        chip = disturbanChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_DISTURBAN", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_DISTURBAN", "It evolved after\nbiting a SLOWPOKE.\nWhile draining its\nhost's nutrients,\nDISTURBAN injects\nit with venom")

    mod.content.pokemon:register("DISTURBAN", {
        id = "DISTURBAN",
        name = "DISTURBAN",
        dex = 184,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 70,
            attack = 125,
            defense = 145,
            speed = 50,
            special = 70,
        },

        catchRate = 60,
        baseExp = 203,
        growthRate = "SLOW",

        level1Moves = {
            "WITHDRAW",
            "SUPERSONIC",
            "CLAMP",
            "BITE",
        },

        learnset = {
            { level = 50, move = "POISON_GAS" },
        },

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
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SELFDESTRUCT",
            "SWIFT",
            "REST",
            "EXPLOSION",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "HELIX",
        palette = "KEP_DISTURBAN",
        cry = "DISTURBAN",

        spriteFront = mod.assets:path("assets/pokemon/generated/disturban/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/disturban/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "SPIRAL",
            heightFt = 4,
            heightIn = 3,
            weight = 1530,
            text = "KEP_DEX_DISTURBAN",
        },
    })
end
