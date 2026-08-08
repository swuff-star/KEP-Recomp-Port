local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local bulbasaurChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 64,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 66,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1776,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 5,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1728,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 7,
                        frequency = 1,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1729,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1714,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1697,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1666,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 14,
                        fade = 4,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 172,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 7,
                        parameter = 220,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 221,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("BULBASAUR", {
        chip = bulbasaurChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_BULBASAUR", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_BULBASAUR", "Researchers have\nargued for 6 years\nabout whether\nBULBASAUR should\nbe classed as a\nplant or animal")

    mod.content.pokemon:patch("BULBASAUR", {
        name = "BULBASAUR",
        dex = 1,

        types = {
            "GRASS",
            "POISON",
        },

        baseStats = {
            hp = 45,
            attack = 49,
            defense = 49,
            speed = 45,
            special = 65,
        },

        catchRate = 45,
        baseExp = 64,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "GROWL",
        },

        learnset = {
            { level = 8, move = "VINE_WHIP" },
            { level = 14, move = "LEECH_SEED" },
            { level = 19, move = "POISONPOWDER" },
            { level = 22, move = "GROWTH" },
            { level = 25, move = "RAZOR_LEAF" },
            { level = 28, move = "TAKE_DOWN" },
            { level = 32, move = "BODY_SLAM" },
            { level = 37, move = "SLEEP_POWDER" },
            { level = 41, move = "MEGA_DRAIN" },
            { level = 44, move = "PETAL_DANCE" },
            { level = 48, move = "DOUBLE_EDGE" },
            { level = 52, move = "TOXIC" },
            { level = 58, move = "SOLARBEAM" },
        },

        evolutions = {
            { method = "LEVEL", level = 16, species = "IVYSAUR" },
        },

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "REST",
            "SUBSTITUTE",
            "CUT",
        },

        icon = "GRASS",
        palette = "KEP_BULBASAUR",
        cry = "BULBASAUR",

        spriteFront = mod.assets:path("assets/pokemon/generated/bulbasaur/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/bulbasaur/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "SEED",
            heightFt = 2,
            heightIn = 4,
            weight = 150,
            text = "KEP_DEX_BULBASAUR",
        },
    })
end
