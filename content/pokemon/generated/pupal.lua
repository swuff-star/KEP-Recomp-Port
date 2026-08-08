local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local pupalChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 14,
                        volume = 15,
                        fade = 1,
                        frequency = 1441,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 1,
                        frequency = 1445,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 1,
                        frequency = 1441,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1441,
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
                        frequency = 1436,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 1,
                        frequency = 1440,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 1,
                        frequency = 1436,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1434,
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
                        parameter = 245,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 14,
                        fade = 2,
                        parameter = 229,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 13,
                        fade = 2,
                        parameter = 230,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 246,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("PUPAL", {
        chip = pupalChip.chip,
        pitch = 0,
        length = 23,
    })

    mod.content.palettes:register("KEP_PUPAL", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PUPAL", "While it awaits\nevolution, it\nbarely moves. If\nthreatened, it\nshudders while\nthrowing punches")

    mod.content.pokemon:register("PUPAL", {
        id = "PUPAL",
        name = "PUPAL",
        dex = 41,

        types = {
            "BUG",
        },

        baseStats = {
            hp = 45,
            attack = 20,
            defense = 50,
            speed = 40,
            special = 30,
        },

        catchRate = 120,
        baseExp = 73,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "HARDEN",
        },

        learnset = {
            { level = 7, move = "HARDEN" },
            { level = 8, move = "HARDEN" },
            { level = 9, move = "HARDEN" },
        },

        evolutions = {
            { method = "LEVEL", level = 10, species = "CARAPTHOR" },
        },

        tmhm = {},

        icon = "BUG",
        palette = "KEP_PUPAL",
        cry = "PUPAL",

        spriteFront = mod.assets:path("assets/pokemon/generated/pupal/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/pupal/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "PUPA",
            heightFt = 2,
            heightIn = 7,
            weight = 220,
            text = "KEP_DEX_PUPAL",
        },
    })
end
