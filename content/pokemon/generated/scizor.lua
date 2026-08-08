local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local scizorChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 1, 3, 2 } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 1312,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 1,
                        frequency = 1056,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 1312,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 1,
                        frequency = 1056,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 1312,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 1,
                        frequency = 1056,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 1312,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 1,
                        frequency = 1056,
                    } },
                    { duty = 0 },
                    { squareNote = {
                        len = 5,
                        volume = 7,
                        fade = 0,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 7,
                        fade = 0,
                        frequency = 1840,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1056,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 2,
                        frequency = 1056,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 3, 0, 2 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 0,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 0,
                        frequency = 1824,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 0,
                        frequency = 1936,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 0,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1840,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 2,
                        frequency = 1840,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 5,
                        volume = 8,
                        fade = 0,
                        parameter = 109,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 0,
                        parameter = 104,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 0,
                        parameter = 105,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 9,
                        fade = 0,
                        parameter = 58,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 9,
                        fade = 0,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        parameter = 91,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 2,
                        parameter = 91,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("SCIZOR", {
        chip = scizorChip.chip,
        pitch = 0,
        length = 224,
    })

    mod.content.palettes:register("KEP_SCIZOR", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SCIZOR", "Its metal pincers\ncan crush heavy\nobjects with ease.\nBattles between it\nand TRICULES are\na sight to behold")

    mod.content.pokemon:register("SCIZOR", {
        id = "SCIZOR",
        name = "SCIZOR",
        dex = 197,

        types = {
            "BUG",
            "STEEL",
        },

        baseStats = {
            hp = 70,
            attack = 130,
            defense = 100,
            speed = 65,
            special = 55,
        },

        catchRate = 45,
        baseExp = 204,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "QUICK_ATTACK",
            "BULLET_PUNCH",
        },

        learnset = {
            { level = 17, move = "LEER" },
            { level = 20, move = "FOCUS_ENERGY" },
            { level = 24, move = "DOUBLE_TEAM" },
            { level = 29, move = "SLASH" },
            { level = 35, move = "SWORDS_DANCE" },
            { level = 42, move = "AGILITY" },
            { level = 50, move = "IRON_HEAD" },
        },

        evolutions = {},

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
        },

        icon = "BUG",
        palette = "KEP_SCIZOR",
        cry = "SCIZOR",

        spriteFront = mod.assets:path("assets/pokemon/generated/scizor/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/scizor/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "SCISSORS",
            heightFt = 5,
            heightIn = 11,
            weight = 2600,
            text = "KEP_DEX_SCIZOR",
        },
    })
end
