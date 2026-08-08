local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local politoedChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 3, 2, 1 } },
                    { pitchSweep = {
                        pace = 7,
                        subtract = true,
                        shift = 7,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 0,
                        frequency = 1149,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 0,
                        frequency = 1156,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 0,
                        frequency = 1245,
                    } },
                    { pitchSweep = {
                        pace = 0,
                        subtract = false,
                        shift = 0,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 0,
                        frequency = 1238,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 0,
                        frequency = 1181,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 0,
                        frequency = 1177,
                    } },
                    { pitchSweep = {
                        pace = 7,
                        subtract = true,
                        shift = 7,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 1,
                        frequency = 1172,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 1172,
                    } },
                    { pitchSweep = {
                        pace = 0,
                        subtract = false,
                        shift = 0,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 2, 0, 2 } },
                    { squareNote = {
                        len = 14,
                        volume = 11,
                        fade = 2,
                        frequency = 1147,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 9,
                        fade = 2,
                        frequency = 1238,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 8,
                        fade = 2,
                        frequency = 1179,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 1,
                        frequency = 1170,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 1,
                        frequency = 1170,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 4,
                        parameter = 220,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 8,
                        fade = 4,
                        parameter = 218,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 10,
                        fade = 4,
                        parameter = 204,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 4,
                        parameter = 201,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = 4,
                        parameter = 204,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 200,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("POLITOED", {
        chip = politoedChip.chip,
        pitch = 0,
        length = 100,
    })

    mod.content.palettes:register("KEP_POLITOED", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_POLITOED", "It's respected and\ntreated like a\nleader by POLIWAG\nand POLIWHIRL, who\ngather around upon\nhearing its cry")

    mod.content.pokemon:register("POLITOED", {
        id = "POLITOED",
        name = "POLITOED",
        dex = 102,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 90,
            attack = 75,
            defense = 75,
            speed = 70,
            special = 90,
        },

        catchRate = 45,
        baseExp = 185,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "HYPNOSIS",
            "WATER_GUN",
            "DOUBLESLAP",
            "BODY_SLAM",
        },

        learnset = {},

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
            "EARTHQUAKE",
            "FISSURE",
            "PSYCHIC_M",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "METRONOME",
            "SKULL_BASH",
            "REST",
            "PSYWAVE",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_POLITOED",
        cry = "POLITOED",

        spriteFront = mod.assets:path("assets/pokemon/generated/politoed/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/politoed/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "FROG",
            heightFt = 3,
            heightIn = 7,
            weight = 750,
            text = "KEP_DEX_POLITOED",
        },
    })
end
