local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local ribbitoChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 13,
                        volume = 15,
                        fade = 2,
                        frequency = 1235,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 3,
                        frequency = 1331,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 2,
                        frequency = 1315,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1299,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 2, 3, 2 } },
                    { squareNote = {
                        len = 12,
                        volume = 13,
                        fade = 2,
                        frequency = 1227,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 6,
                        frequency = 1323,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1307,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1291,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 11,
                        volume = 14,
                        fade = 6,
                        parameter = 255,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        parameter = 239,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        parameter = 255,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 239,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("RIBBITO", {
        chip = ribbitoChip.chip,
        pitch = 0,
        length = 96,
    })

    mod.content.palettes:register("KEP_RIBBITO", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_RIBBITO", "Despite its small\nsize, it likes\nto challenge\nothers. It puffs\nup its chest to\nappear larger")

    mod.content.pokemon:register("RIBBITO", {
        id = "RIBBITO",
        name = "RIBBITO",
        dex = 138,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 94,
            attack = 55,
            defense = 50,
            speed = 40,
            special = 55,
        },

        catchRate = 190,
        baseExp = 88,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "DOUBLE_TEAM",
            "DOUBLESLAP",
        },

        learnset = {
            { level = 7, move = "BUBBLE" },
            { level = 13, move = "MEDITATE" },
            { level = 19, move = "WATER_GUN" },
            { level = 24, move = "FEINT_ATTACK" },
            { level = 31, move = "SUBSTITUTE" },
            { level = 37, move = "KOWTOW_CLEAVE" },
            { level = 44, move = "HYDRO_PUMP" },
            { level = 50, move = "NIGHT_SLASH" },
        },

        evolutions = {
            { method = "LEVEL", level = 30, species = "CROAKOZUNA" },
        },

        tmhm = {
            "MEGA_PUNCH",
            "RAZOR_WIND",
            "SWORDS_DANCE",
            "WHIRLWIND",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "PAY_DAY",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "DIG",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "METRONOME",
            "SWIFT",
            "REST",
            "PSYWAVE",
            "SUBSTITUTE",
            "CUT",
            "SURF",
            "FLASH",
        },

        icon = "MON",
        palette = "KEP_RIBBITO",
        cry = "RIBBITO",

        spriteFront = mod.assets:path("assets/pokemon/generated/ribbito/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/ribbito/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "SUMO",
            heightFt = 2,
            heightIn = 3,
            weight = 1020,
            text = "KEP_DEX_RIBBITO",
        },
    })
end
