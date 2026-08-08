local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local charizardChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 6,
                        frequency = 1700,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 6,
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 3,
                        frequency = 1568,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 3,
                        frequency = 1572,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1568,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1552,
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
                        frequency = 1537,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        frequency = 1539,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 6,
                        frequency = 1537,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 12,
                        fade = 3,
                        frequency = 1409,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 3,
                        frequency = 1411,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 2,
                        frequency = 1410,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1393,
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
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 4,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 4,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 3,
                        parameter = 76,
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

    mod.content.cries:override("CHARIZARD", {
        chip = charizardChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_CHARIZARD", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_CHARIZARD", "Thought to be\ncapable of flying\nup to 4,500 feet\nin altitude after\nits droppings were\nfound on Mt. Fuji")

    mod.content.pokemon:patch("CHARIZARD", {
        name = "CHARIZARD",
        dex = 6,

        types = {
            "FIRE",
            "FLYING",
        },

        baseStats = {
            hp = 78,
            attack = 84,
            defense = 78,
            speed = 100,
            special = 85,
        },

        catchRate = 45,
        baseExp = 209,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "SCRATCH",
            "GROWL",
            "EMBER",
            "LEER",
        },

        learnset = {
            { level = 9, move = "EMBER" },
            { level = 15, move = "LEER" },
            { level = 21, move = "RAGE" },
            { level = 24, move = "HEADBUTT" },
            { level = 28, move = "FIRE_SPIN" },
            { level = 32, move = "TAKE_DOWN" },
            { level = 36, move = "WING_ATTACK" },
            { level = 41, move = "SEISMIC_TOSS" },
            { level = 45, move = "FLAMETHROWER" },
            { level = 49, move = "MEGA_PUNCH" },
            { level = 53, move = "SLASH" },
            { level = 57, move = "DOUBLE_EDGE" },
            { level = 62, move = "MEGA_KICK" },
            { level = 66, move = "FIRE_BLAST" },
            { level = 70, move = "DRAGON_RAGE" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "SWORDS_DANCE",
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
            "DRAGON_RAGE",
            "EARTHQUAKE",
            "FISSURE",
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
            "FLY",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_CHARIZARD",
        cry = "CHARIZARD",

        spriteFront = mod.assets:path("assets/pokemon/generated/charizard/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/charizard/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "FLAME",
            heightFt = 5,
            heightIn = 7,
            weight = 2000,
            text = "KEP_DEX_CHARIZARD",
        },
    })
end
