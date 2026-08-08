local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local guardiaChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 6,
                        frequency = 1381,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 4,
                        frequency = 1404,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1372,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 2,
                        frequency = 1340,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 15,
                        volume = 13,
                        fade = 6,
                        frequency = 1283,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 11,
                        fade = 4,
                        frequency = 1307,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 2,
                        frequency = 1274,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1243,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 12,
                        volume = 13,
                        fade = 7,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 76,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("GUARDIA", {
        chip = guardiaChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_GUARDIA", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GUARDIA", "A caring POKéMON\nthat adopts\norphaned CUBONE\nand raises them\nuntil they're\nready to evolve")

    mod.content.pokemon:register("GUARDIA", {
        id = "GUARDIA",
        name = "GUARDIA",
        dex = 161,

        types = {
            "GROUND",
        },

        baseStats = {
            hp = 70,
            attack = 90,
            defense = 120,
            speed = 65,
            special = 100,
        },

        catchRate = 45,
        baseExp = 194,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "BONE_CLUB",
            "GROWL",
            "LEER",
            "TAIL_WHIP",
        },

        learnset = {
            { level = 10, move = "BONE_CLUB" },
            { level = 13, move = "TAIL_WHIP" },
            { level = 18, move = "HEADBUTT" },
            { level = 25, move = "LEER" },
            { level = 33, move = "FOCUS_ENERGY" },
            { level = 41, move = "THRASH" },
            { level = 48, move = "BONEMERANG" },
            { level = 55, move = "RAGE" },
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
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_GUARDIA",
        cry = "GUARDIA",

        spriteFront = mod.assets:path("assets/pokemon/generated/guardia/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/guardia/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "PROTECTIVE",
            heightFt = 6,
            heightIn = 11,
            weight = 3260,
            text = "KEP_DEX_GUARDIA",
        },
    })
end
