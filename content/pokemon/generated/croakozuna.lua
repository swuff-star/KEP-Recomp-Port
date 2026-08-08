local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local croakozunaChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 13,
                        volume = 15,
                        fade = 2,
                        frequency = 1125,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 3,
                        frequency = 1221,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 2,
                        frequency = 1205,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1189,
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
                        frequency = 1117,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 6,
                        frequency = 1213,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1197,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1181,
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
                        parameter = 145,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        parameter = 129,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        parameter = 145,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 129,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("CROAKOZUNA", {
        chip = croakozunaChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_CROAKOZUNA", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_CROAKOZUNA", "It intimidates\nfoes by puffing\nup and stomping.\nThen, it strikes\nwith a flurry\nof strong slaps")

    mod.content.pokemon:register("CROAKOZUNA", {
        id = "CROAKOZUNA",
        name = "CROAKOZUNA",
        dex = 139,

        types = {
            "WATER",
            "DARK",
        },

        baseStats = {
            hp = 134,
            attack = 75,
            defense = 70,
            speed = 60,
            special = 75,
        },

        catchRate = 75,
        baseExp = 174,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "DOUBLE_TEAM",
            "DOUBLESLAP",
            "BUBBLE",
            "MEDITATE",
        },

        learnset = {
            { level = 7, move = "BUBBLE" },
            { level = 13, move = "MEDITATE" },
            { level = 19, move = "WATER_GUN" },
            { level = 24, move = "FEINT_ATTACK" },
            { level = 35, move = "SUBSTITUTE" },
            { level = 41, move = "KOWTOW_CLEAVE" },
            { level = 49, move = "HYDRO_PUMP" },
            { level = 53, move = "NIGHT_SLASH" },
        },

        evolutions = {},

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
            "HYPER_BEAM",
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
        palette = "KEP_CROAKOZUNA",
        cry = "CROAKOZUNA",

        spriteFront = mod.assets:path("assets/pokemon/generated/croakozuna/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/croakozuna/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "SUMO",
            heightFt = 4,
            heightIn = 11,
            weight = 4150,
            text = "KEP_DEX_CROAKOZUNA",
        },
    })
end
