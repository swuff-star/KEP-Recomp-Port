local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local charmeleonChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 1728,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 6,
                        frequency = 1732,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 6,
                        frequency = 1728,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 3,
                        frequency = 1600,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 3,
                        frequency = 1604,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1600,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1584,
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
                        frequency = 1569,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        frequency = 1571,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 6,
                        frequency = 1569,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 12,
                        fade = 3,
                        frequency = 1441,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 3,
                        frequency = 1443,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 2,
                        frequency = 1442,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1425,
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
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 6,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 4,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 4,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 3,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 124,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("CHARMELEON", {
        chip = charmeleonChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_CHARMELEON", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_CHARMELEON", "Its tail can lift\nup to 660 lbs. It\nflails it to knock\nfoes down, then\nrends them with\nits sharp claws")

    mod.content.pokemon:patch("CHARMELEON", {
        name = "CHARMELEON",
        dex = 5,

        types = {
            "FIRE",
        },

        baseStats = {
            hp = 58,
            attack = 64,
            defense = 58,
            speed = 80,
            special = 65,
        },

        catchRate = 45,
        baseExp = 142,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "SCRATCH",
            "GROWL",
            "EMBER",
        },

        learnset = {
            { level = 9, move = "EMBER" },
            { level = 15, move = "LEER" },
            { level = 21, move = "RAGE" },
            { level = 24, move = "HEADBUTT" },
            { level = 28, move = "FIRE_SPIN" },
            { level = 32, move = "TAKE_DOWN" },
            { level = 37, move = "SEISMIC_TOSS" },
            { level = 41, move = "FLAMETHROWER" },
            { level = 45, move = "MEGA_PUNCH" },
            { level = 49, move = "SLASH" },
            { level = 53, move = "DOUBLE_EDGE" },
            { level = 57, move = "MEGA_KICK" },
            { level = 63, move = "FIRE_BLAST" },
        },

        evolutions = {
            { method = "LEVEL", level = 36, species = "CHARIZARD" },
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
        palette = "KEP_CHARMELEON",
        cry = "CHARMELEON",

        spriteFront = mod.assets:path("assets/pokemon/generated/charmeleon/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/charmeleon/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "FLAME",
            heightFt = 3,
            heightIn = 7,
            weight = 420,
            text = "KEP_DEX_CHARMELEON",
        },
    })
end
