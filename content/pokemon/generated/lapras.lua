local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local laprasChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 7,
                        frequency = 1728,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 7,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 4,
                        frequency = 1776,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1744,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 8,
                        volume = 14,
                        fade = 6,
                        frequency = 1665,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 13,
                        fade = 5,
                        frequency = 1729,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1713,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 4,
                        frequency = 1697,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1681,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 11,
                        volume = 10,
                        fade = 6,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 9,
                        fade = 4,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 10,
                        fade = 3,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 44,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("LAPRAS", {
        chip = laprasChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_LAPRAS", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_LAPRAS", "Placid in nature,\nlittle progress\nhas been made in\nstudying it due\nto overhunting\nby poachers")

    mod.content.pokemon:patch("LAPRAS", {
        name = "LAPRAS",
        dex = 219,

        types = {
            "WATER",
            "ICE",
        },

        baseStats = {
            hp = 130,
            attack = 85,
            defense = 80,
            speed = 60,
            special = 95,
        },

        catchRate = 45,
        baseExp = 219,
        growthRate = "SLOW",

        level1Moves = {
            "WATER_GUN",
            "GROWL",
        },

        learnset = {
            { level = 16, move = "SING" },
            { level = 20, move = "MIST" },
            { level = 25, move = "BODY_SLAM" },
            { level = 31, move = "CONFUSE_RAY" },
            { level = 38, move = "ICE_BEAM" },
            { level = 46, move = "HYDRO_PUMP" },
        },

        evolutions = {},

        tmhm = {
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
            "RAGE",
            "SOLARBEAM",
            "DRAGON_RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "PSYWAVE",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "WATER",
        palette = "KEP_LAPRAS",
        cry = "LAPRAS",

        spriteFront = mod.assets:path("assets/pokemon/generated/lapras/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/lapras/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "TRANSPORT",
            heightFt = 8,
            heightIn = 2,
            weight = 4850,
            text = "KEP_DEX_LAPRAS",
        },
    })
end
