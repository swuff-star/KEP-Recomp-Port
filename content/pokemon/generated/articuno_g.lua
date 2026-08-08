local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local articuno_gChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 32,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        frequency = 35,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 4,
                        frequency = 32,
                    } },
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 6,
                        frequency = 88,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 3,
                        frequency = 87,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 88,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 3,
                        volume = 0,
                        fade = 0,
                        frequency = 128,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 7,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 6,
                        frequency = 1826,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 7,
                        fade = 4,
                        frequency = 1825,
                    } },
                    { dutyPattern = { 1, 1, 3, 3 } },
                    { squareNote = {
                        len = 11,
                        volume = 7,
                        fade = 6,
                        frequency = 1878,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 8,
                        fade = 3,
                        frequency = 1881,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1879,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 190,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 12,
                        fade = 5,
                        parameter = 187,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 4,
                        parameter = 189,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 6,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 4,
                        parameter = 189,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        parameter = 187,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("ARTICUNO_G", {
        chip = articuno_gChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_ARTICUNO_G", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ARTICUNO_G", "From its eyes, it\nfires PSI beams,\nwhich can stun and\nimmobilize foes as\nif they had been\nfrozen solid")

    mod.content.pokemon:register("ARTICUNO_G", {
        id = "ARTICUNO_G",
        name = "ARTICUNO",
        dex = 243,

        types = {
            "PSYCHIC_TYPE",
            "FLYING",
        },

        baseStats = {
            hp = 90,
            attack = 85,
            defense = 85,
            speed = 95,
            special = 125,
        },

        catchRate = 3,
        baseExp = 215,
        growthRate = "SLOW",

        level1Moves = {
            "GUST",
            "CONFUSION",
        },

        learnset = {
            { level = 45, move = "REFLECT" },
            { level = 50, move = "HYPNOSIS" },
            { level = 55, move = "PSYBEAM" },
            { level = 60, move = "AGILITY" },
            { level = 65, move = "LIGHT_SCREEN" },
            { level = 70, move = "PSYCHIC_M" },
            { level = 75, move = "RECOVER" },
            { level = 80, move = "DREAM_EATER" },
        },

        evolutions = {},

        tmhm = {
            "RAZOR_WIND",
            "WHIRLWIND",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKY_ATTACK",
            "REST",
            "PSYWAVE",
            "SUBSTITUTE",
            "FLY",
        },

        icon = "BIRD",
        palette = "KEP_ARTICUNO_G",
        cry = "ARTICUNO_G",

        spriteFront = mod.assets:path("assets/pokemon/generated/articuno_g/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/articuno_g/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "CRUEL",
            heightFt = 5,
            heightIn = 7,
            weight = 1120,
            text = "KEP_DEX_ARTICUNO_G",
        },
    })
end
