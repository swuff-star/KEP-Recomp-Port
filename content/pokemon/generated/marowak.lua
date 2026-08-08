local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local marowakChip = ChipAsm.sfx({
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

    mod.content.cries:override("MAROWAK", {
        chip = marowakChip.chip,
        pitch = 0,
        length = 96,
    })

    mod.content.palettes:register("KEP_MAROWAK", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MAROWAK", "Although it's\nweak when young,\nit develops a\nviolent nature\nwhen it learns\nto use BONEMERANG")

    mod.content.pokemon:patch("MAROWAK", {
        name = "MAROWAK",
        dex = 159,

        types = {
            "GROUND",
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

        evolutions = {
            { method = "ITEM", item = "HEART_STONE", species = "GUARDIA" },
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
        palette = "KEP_MAROWAK",
        cry = "MAROWAK",

        spriteFront = mod.assets:path("assets/pokemon/generated/marowak/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/marowak/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "BONEKEEPER",
            heightFt = 3,
            heightIn = 3,
            weight = 990,
            text = "KEP_DEX_MAROWAK",
        },
    })
end
