local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local blisseyChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 3, 0, 3 } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 1,
                        frequency = 2019,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 1,
                        frequency = 1987,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 1,
                        frequency = 1955,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        frequency = 227,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        frequency = 211,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        frequency = 195,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 2019,
                    } },
                    { squareNote = {
                        len = 1,
                        volume = 15,
                        fade = 2,
                        frequency = 2019,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 3, 0, 2 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 179,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1939,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 1,
                        frequency = 179,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 14,
                        fade = 1,
                        frequency = 1971,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        frequency = 1939,
                    } },
                    { squareNote = {
                        len = 1,
                        volume = 14,
                        fade = 2,
                        frequency = 1939,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 8,
                        fade = -2,
                        parameter = 240,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 223,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 9,
                        fade = -2,
                        parameter = 240,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 224,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 222,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 224,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 242,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 11,
                        fade = 2,
                        parameter = 2,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 11,
                        fade = 2,
                        parameter = 2,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("BLISSEY", {
        chip = blisseyChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_BLISSEY", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_BLISSEY", "The eggs that it\nregularly lays are\nso delicious that\neating one is said\nto bring happiness\nand good fortune")

    mod.content.pokemon:register("BLISSEY", {
        id = "BLISSEY",
        name = "BLISSEY",
        dex = 208,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 255,
            attack = 10,
            defense = 10,
            speed = 55,
            special = 135,
        },

        catchRate = 30,
        baseExp = 255,
        growthRate = "FAST",

        level1Moves = {
            "POUND",
            "TAIL_WHIP",
        },

        learnset = {
            { level = 12, move = "DOUBLESLAP" },
            { level = 24, move = "SING" },
            { level = 30, move = "GROWL" },
            { level = 38, move = "MINIMIZE" },
            { level = 44, move = "DEFENSE_CURL" },
            { level = 48, move = "LIGHT_SCREEN" },
            { level = 54, move = "DOUBLE_EDGE" },
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
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "SOLARBEAM",
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "METRONOME",
            "EGG_BOMB",
            "FIRE_BLAST",
            "SKULL_BASH",
            "SOFTBOILED",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "STRENGTH",
            "FLASH",
        },

        icon = "FAIRY",
        palette = "KEP_BLISSEY",
        cry = "BLISSEY",

        spriteFront = mod.assets:path("assets/pokemon/generated/blissey/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/blissey/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "HAPPINESS",
            heightFt = 4,
            heightIn = 11,
            weight = 1030,
            text = "KEP_DEX_BLISSEY",
        },
    })
end
