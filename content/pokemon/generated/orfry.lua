local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local orfryChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 9,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 6,
                        frequency = 41,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        frequency = 1993,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 7,
                        frequency = 2012,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 2043,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1946,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 14,
                        volume = 15,
                        fade = 6,
                        parameter = 213,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 6,
                        parameter = 197,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        parameter = 213,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("ORFRY", {
        chip = orfryChip.chip,
        pitch = 0,
        length = 14,
    })

    mod.content.palettes:register("KEP_ORFRY", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ORFRY", "Its tiny fins make\nit an unskilled\nswimmer. It fends\noff bigger POKéMON\nby attacking\nwith its horn")

    mod.content.pokemon:register("ORFRY", {
        id = "ORFRY",
        name = "ORFRY",
        dex = 91,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 35,
            attack = 57,
            defense = 50,
            speed = 53,
            special = 40,
        },

        catchRate = 255,
        baseExp = 57,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "PECK",
            "TAIL_WHIP",
            "WATER_GUN",
        },

        learnset = {
            { level = 7, move = "SUPERSONIC" },
            { level = 12, move = "HORN_ATTACK" },
            { level = 18, move = "FURY_ATTACK" },
            { level = 26, move = "WATERFALL" },
            { level = 30, move = "HORN_DRILL" },
            { level = 34, move = "AGILITY" },
            { level = 40, move = "DOUBLE_EDGE" },
            { level = 44, move = "SWORDS_DANCE" },
        },

        evolutions = {
            { method = "LEVEL", level = 16, species = "GOLDEEN" },
        },

        tmhm = {
            "TOXIC",
            "HORN_DRILL",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "SURF",
        },

        icon = "WATER",
        palette = "KEP_ORFRY",
        cry = "ORFRY",

        spriteFront = mod.assets:path("assets/pokemon/generated/orfry/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/orfry/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "GOLDFISH",
            heightFt = 0,
            heightIn = 8,
            weight = 50,
            text = "KEP_DEX_ORFRY",
        },
    })
end
