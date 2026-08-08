local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local goldeenChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 6,
                        frequency = 32,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        frequency = 1984,
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
                        frequency = 2003,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 2034,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1937,
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
                        parameter = 204,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 6,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        parameter = 204,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("GOLDEEN", {
        chip = goldeenChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_GOLDEEN", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GOLDEEN", "It can swim at\nspeeds of up to\n5 knots. Known to\ninadvertently\nswim into the\nmouth of GYARADOS")

    mod.content.pokemon:patch("GOLDEEN", {
        name = "GOLDEEN",
        dex = 92,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 45,
            attack = 67,
            defense = 60,
            speed = 63,
            special = 50,
        },

        catchRate = 225,
        baseExp = 111,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "PECK",
            "TAIL_WHIP",
            "WATER_GUN",
        },

        learnset = {
            { level = 7, move = "SUPERSONIC" },
            { level = 12, move = "HORN_ATTACK" },
            { level = 20, move = "FURY_ATTACK" },
            { level = 29, move = "WATERFALL" },
            { level = 34, move = "HORN_DRILL" },
            { level = 39, move = "AGILITY" },
            { level = 44, move = "DOUBLE_EDGE" },
            { level = 50, move = "SWORDS_DANCE" },
        },

        evolutions = {
            { method = "LEVEL", level = 33, species = "SEAKING" },
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
        palette = "KEP_GOLDEEN",
        cry = "GOLDEEN",

        spriteFront = mod.assets:path("assets/pokemon/generated/goldeen/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/goldeen/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "GOLDFISH",
            heightFt = 2,
            heightIn = 0,
            weight = 330,
            text = "KEP_DEX_GOLDEEN",
        },
    })
end
