local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local chanseyChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        frequency = 1946,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 5,
                        frequency = 1994,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 2018,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 11,
                        volume = 12,
                        fade = 4,
                        frequency = 1915,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 6,
                        frequency = 1964,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1985,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 86,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 12,
                        fade = 4,
                        parameter = 70,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 54,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("CHANSEY", {
        chip = chanseyChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_CHANSEY", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_CHANSEY", "It lays several\ndelicious eggs\na day. A nursing\nPOKéMON, it's very\npeaceful and does\nnot like fights")

    mod.content.pokemon:patch("CHANSEY", {
        name = "CHANSEY",
        dex = 207,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 250,
            attack = 5,
            defense = 5,
            speed = 50,
            special = 105,
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

        evolutions = {
            { method = "LEVEL", level = 45, species = "BLISSEY" },
        },

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
        palette = "KEP_CHANSEY",
        cry = "CHANSEY",

        spriteFront = mod.assets:path("assets/pokemon/generated/chansey/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/chansey/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "EGG",
            heightFt = 3,
            heightIn = 7,
            weight = 760,
            text = "KEP_DEX_CHANSEY",
        },
    })
end
