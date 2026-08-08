local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local marowak_aChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 6,
                        frequency = 1460,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 4,
                        frequency = 1483,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1451,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 2,
                        frequency = 1419,
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
                        frequency = 1362,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 11,
                        fade = 4,
                        frequency = 1386,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 2,
                        frequency = 1353,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1322,
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
                        parameter = 155,
                    } },
                    { noiseNote = {
                        len = 12,
                        volume = 13,
                        fade = 7,
                        parameter = 171,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 155,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("MAROWAK_A", {
        chip = marowak_aChip.chip,
        pitch = 0,
        length = 96,
    })

    mod.content.palettes:register("KEP_MAROWAK_A", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MAROWAK_A", "While dancing in\nmourning of its\nkin, the spirit\nof its mother\ninhabits its\ncherished bone")

    mod.content.pokemon:register("MAROWAK_A", {
        id = "MAROWAK_A",
        name = "MAROWAK",
        dex = 160,

        types = {
            "FIRE",
            "GHOST",
        },

        baseStats = {
            hp = 60,
            attack = 80,
            defense = 110,
            speed = 45,
            special = 50,
        },

        catchRate = 75,
        baseExp = 124,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "BONE_CLUB",
            "GROWL",
            "FIRE_SPIN",
            "FOCUS_ENERGY",
        },

        learnset = {
            { level = 18, move = "FIRE_SPIN" },
            { level = 25, move = "LEER" },
            { level = 33, move = "EMBER" },
            { level = 41, move = "THRASH" },
            { level = 48, move = "BONEMERANG" },
            { level = 55, move = "FLAMETHROWER" },
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
        palette = "KEP_MAROWAK_A",
        cry = "MAROWAK_A",

        spriteFront = mod.assets:path("assets/pokemon/generated/marowak_a/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/marowak_a/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "BONEKEEPER",
            heightFt = 3,
            heightIn = 3,
            weight = 750,
            text = "KEP_DEX_MAROWAK_A",
        },
    })
end
