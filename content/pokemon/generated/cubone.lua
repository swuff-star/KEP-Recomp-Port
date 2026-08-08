local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local cuboneChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 2, 3 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 2,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 5,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 1,
                        frequency = 1840,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1840,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 0, 0, 1 } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1793,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1800,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 1857,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1793,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 2,
                        frequency = 1793,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("CUBONE", {
        chip = cuboneChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_CUBONE", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_CUBONE", "It dons the skull\nof its deceased\nmother. When it\ncries, the skull\nrattles, making a\nclattering sound")

    mod.content.pokemon:patch("CUBONE", {
        name = "CUBONE",
        dex = 158,

        types = {
            "GROUND",
        },

        baseStats = {
            hp = 50,
            attack = 50,
            defense = 95,
            speed = 35,
            special = 40,
        },

        catchRate = 190,
        baseExp = 87,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "BONE_CLUB",
            "GROWL",
        },

        learnset = {
            { level = 10, move = "BONE_CLUB" },
            { level = 13, move = "TAIL_WHIP" },
            { level = 18, move = "HEADBUTT" },
            { level = 25, move = "LEER" },
            { level = 31, move = "FOCUS_ENERGY" },
            { level = 38, move = "THRASH" },
            { level = 43, move = "BONEMERANG" },
            { level = 46, move = "RAGE" },
        },

        evolutions = {
            { method = "LEVEL", level = 28, species = "MAROWAK" },
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
        palette = "KEP_CUBONE",
        cry = "CUBONE",

        spriteFront = mod.assets:path("assets/pokemon/generated/cubone/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/cubone/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "LONELY",
            heightFt = 1,
            heightIn = 4,
            weight = 140,
            text = "KEP_DEX_CUBONE",
        },
    })
end
