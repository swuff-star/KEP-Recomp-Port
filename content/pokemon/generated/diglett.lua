local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local diglettChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1962,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 42,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 2026,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 2026,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 42,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1962,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1963,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 44,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 1,
                        frequency = 2028,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 2027,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 13,
                        volume = 0,
                        fade = 0,
                        frequency = 170,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1963,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 44,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 2027,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 2027,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 44,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1963,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 16,
                        volume = 0,
                        fade = 0,
                        parameter = 170,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 0,
                        fade = 0,
                        parameter = 170,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        parameter = 246,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        parameter = 214,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        parameter = 230,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        parameter = 230,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 1,
                        parameter = 214,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 246,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("DIGLETT", {
        chip = diglettChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_DIGLETT", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_DIGLETT", "It burrows through\nthe earth, seeking\nONIX's leftovers.\nThe trails of soil\nit leaves behind\nreveal its path")

    mod.content.pokemon:patch("DIGLETT", {
        name = "DIGLETT",
        dex = 122,

        types = {
            "GROUND",
        },

        baseStats = {
            hp = 10,
            attack = 55,
            defense = 25,
            speed = 95,
            special = 45,
        },

        catchRate = 255,
        baseExp = 81,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
        },

        learnset = {
            { level = 15, move = "GROWL" },
            { level = 19, move = "DIG" },
            { level = 24, move = "SAND_ATTACK" },
            { level = 31, move = "SLASH" },
            { level = 40, move = "EARTHQUAKE" },
        },

        evolutions = {
            { method = "LEVEL", level = 26, species = "DUGTRIO" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "CUT",
        },

        icon = "MON",
        palette = "KEP_DIGLETT",
        cry = "DIGLETT",

        spriteFront = mod.assets:path("assets/pokemon/generated/diglett/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/diglett/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "MOLE",
            heightFt = 0,
            heightIn = 8,
            weight = 20,
            text = "KEP_DEX_DIGLETT",
        },
    })
end
