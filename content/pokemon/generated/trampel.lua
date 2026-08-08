local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local trampelChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 1688,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        frequency = 1680,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 7,
                        frequency = 1664,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 4,
                        frequency = 1648,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 13,
                        fade = 3,
                        frequency = 1616,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1584,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1552,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 7,
                        frequency = 1428,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 6,
                        frequency = 1426,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 9,
                        fade = 7,
                        frequency = 1409,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 4,
                        frequency = 1393,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 10,
                        fade = 3,
                        frequency = 1362,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 3,
                        frequency = 1331,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1298,
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
                        fade = 4,
                        parameter = 220,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 7,
                        parameter = 236,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        parameter = 220,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        parameter = 236,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("TRAMPEL", {
        chip = trampelChip.chip,
        pitch = 0,
        length = 176,
    })

    mod.content.palettes:register("KEP_TRAMPEL", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_TRAMPEL", "This rare species\nis very well-known\nin India. It has\na bulky physique,\nbut it's adept at\nusing its trunk")

    mod.content.pokemon:register("TRAMPEL", {
        id = "TRAMPEL",
        name = "TRAMPEL",
        dex = 202,

        types = {
            "NORMAL",
            "GROUND",
        },

        baseStats = {
            hp = 110,
            attack = 100,
            defense = 90,
            speed = 56,
            special = 64,
        },

        catchRate = 45,
        baseExp = 204,
        growthRate = "SLOW",

        level1Moves = {
            "TACKLE",
            "GROWL",
            "HORN_ATTACK",
        },

        learnset = {
            { level = 16, move = "STOMP" },
            { level = 23, move = "RAGE" },
            { level = 30, move = "FURY_ATTACK" },
            { level = 38, move = "BODY_SLAM" },
            { level = 44, move = "LEER" },
            { level = 50, move = "ROAR" },
            { level = 56, move = "EARTHQUAKE" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
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
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "EARTHQUAKE",
            "FISSURE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "FIRE_BLAST",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_TRAMPEL",
        cry = "TRAMPEL",

        spriteFront = mod.assets:path("assets/pokemon/generated/trampel/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/trampel/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "TUSK",
            heightFt = 7,
            heightIn = 7,
            weight = 4170,
            text = "KEP_DEX_TRAMPEL",
        },
    })
end
