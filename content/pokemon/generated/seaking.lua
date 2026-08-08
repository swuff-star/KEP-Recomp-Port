local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local seakingChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 1936,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 6,
                        frequency = 1968,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        frequency = 1872,
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
                        frequency = 1891,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 1922,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1825,
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
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        parameter = 92,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("SEAKING", {
        chip = seakingChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_SEAKING", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SEAKING", "Using its drill-\nlike horn, it can\nhollow out river\nboulders, making\nnests to prepare\nto spawn ORFRY")

    mod.content.pokemon:patch("SEAKING", {
        name = "SEAKING",
        dex = 93,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 80,
            attack = 92,
            defense = 65,
            speed = 68,
            special = 80,
        },

        catchRate = 60,
        baseExp = 170,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "PECK",
            "TAIL_WHIP",
            "WATER_GUN",
            "SUPERSONIC",
        },

        learnset = {
            { level = 7, move = "SUPERSONIC" },
            { level = 12, move = "HORN_ATTACK" },
            { level = 20, move = "FURY_ATTACK" },
            { level = 29, move = "WATERFALL" },
            { level = 37, move = "HORN_DRILL" },
            { level = 41, move = "AGILITY" },
            { level = 46, move = "DOUBLE_EDGE" },
            { level = 52, move = "SWORDS_DANCE" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "HORN_DRILL",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
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
        palette = "KEP_SEAKING",
        cry = "SEAKING",

        spriteFront = mod.assets:path("assets/pokemon/generated/seaking/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/seaking/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "GOLDFISH",
            heightFt = 4,
            heightIn = 3,
            weight = 860,
            text = "KEP_DEX_SEAKING",
        },
    })
end
