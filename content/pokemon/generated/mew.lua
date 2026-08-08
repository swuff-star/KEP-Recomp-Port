local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local mewChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 2,
                        frequency = 1774,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1838,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1902,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1966,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 2030,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 46,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 110,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 174,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 1, 0, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 0,
                        fade = 0,
                        frequency = 239,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1711,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1776,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1839,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1904,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1968,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 9,
                        fade = 2,
                        frequency = 2031,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 48,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        frequency = 111,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 0,
                        fade = 0,
                        parameter = 239,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        parameter = 74,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        parameter = 58,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 2,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 11,
                        fade = 2,
                        parameter = 26,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        parameter = 10,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 10,
                        fade = 2,
                        parameter = 9,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 9,
                        fade = 2,
                        parameter = 8,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        parameter = 6,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("MEW", {
        chip = mewChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_MEW", {
        { 255, 255, 255 },
        { 247, 140, 90 },
        { 90, 41, 115 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MEW", "A rare POKéMON of\nSouth America that\nwas presumed to be\nextinct. It can\nlearn almost any\ntechnique")

    mod.content.pokemon:patch("MEW", {
        name = "MEW",
        dex = 249,

        types = {
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 100,
            attack = 100,
            defense = 100,
            speed = 100,
            special = 100,
        },

        catchRate = 45,
        baseExp = 64,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "POUND",
        },

        learnset = {
            { level = 10, move = "TRANSFORM" },
            { level = 20, move = "MEGA_PUNCH" },
            { level = 30, move = "METRONOME" },
            { level = 40, move = "PSYCHIC_M" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "RAZOR_WIND",
            "SWORDS_DANCE",
            "WHIRLWIND",
            "MEGA_KICK",
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "PAY_DAY",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "DRAGON_RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "METRONOME",
            "SELFDESTRUCT",
            "EGG_BOMB",
            "FIRE_BLAST",
            "SWIFT",
            "SKULL_BASH",
            "SOFTBOILED",
            "DREAM_EATER",
            "SKY_ATTACK",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "EXPLOSION",
            "ROCK_SLIDE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "CUT",
            "FLY",
            "SURF",
            "STRENGTH",
            "FLASH",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/cat.png"),
            frames = 2,
        },
        palette = "KEP_MEW",
        cry = "MEW",

        spriteFront = mod.assets:path("assets/pokemon/generated/mew/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/mew/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "NEW SPECIE",
            heightFt = 1,
            heightIn = 4,
            weight = 90,
            text = "KEP_DEX_MEW",
        },
    })
end
