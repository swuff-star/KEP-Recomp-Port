local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local charmanderChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 6,
                        frequency = 1796,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 6,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 3,
                        frequency = 1664,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 3,
                        frequency = 1668,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1664,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1648,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 7,
                        frequency = 1633,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        frequency = 1635,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 6,
                        frequency = 1633,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 12,
                        fade = 3,
                        frequency = 1505,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 3,
                        frequency = 1507,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 2,
                        frequency = 1506,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1489,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 8,
                        volume = 13,
                        fade = 6,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 6,
                        parameter = 172,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 4,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 4,
                        parameter = 172,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 3,
                        parameter = 172,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 188,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("CHARMANDER", {
        chip = charmanderChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_CHARMANDER", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_CHARMANDER", "It is born with a\nflame on its tail,\nwhich it needs to\nsurvive. Sometimes\nkept by smokers to\nuse as a lighter")

    mod.content.pokemon:patch("CHARMANDER", {
        name = "CHARMANDER",
        dex = 4,

        types = {
            "FIRE",
        },

        baseStats = {
            hp = 39,
            attack = 52,
            defense = 43,
            speed = 65,
            special = 50,
        },

        catchRate = 45,
        baseExp = 65,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "SCRATCH",
            "GROWL",
        },

        learnset = {
            { level = 9, move = "EMBER" },
            { level = 15, move = "LEER" },
            { level = 19, move = "RAGE" },
            { level = 22, move = "HEADBUTT" },
            { level = 25, move = "FIRE_SPIN" },
            { level = 29, move = "TAKE_DOWN" },
            { level = 33, move = "SEISMIC_TOSS" },
            { level = 37, move = "FLAMETHROWER" },
            { level = 41, move = "MEGA_PUNCH" },
            { level = 44, move = "SLASH" },
            { level = 48, move = "DOUBLE_EDGE" },
            { level = 51, move = "MEGA_KICK" },
            { level = 57, move = "FIRE_BLAST" },
        },

        evolutions = {
            { method = "LEVEL", level = 16, species = "CHARMELEON" },
        },

        tmhm = {
            "MEGA_PUNCH",
            "SWORDS_DANCE",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "DRAGON_RAGE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "FIRE_BLAST",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_CHARMANDER",
        cry = "CHARMANDER",

        spriteFront = mod.assets:path("assets/pokemon/generated/charmander/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/charmander/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "LIZARD",
            heightFt = 2,
            heightIn = 0,
            weight = 190,
            text = "KEP_DEX_CHARMANDER",
        },
    })
end
