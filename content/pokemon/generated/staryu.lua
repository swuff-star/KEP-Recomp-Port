local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local staryuChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 2,
                        frequency = 1538,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1602,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1666,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 2,
                        frequency = 1730,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1794,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1858,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1922,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1986,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 1, 0, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 0,
                        fade = 0,
                        frequency = 3,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1475,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1540,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1603,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1668,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1732,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 9,
                        fade = 2,
                        frequency = 1795,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1860,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        frequency = 1923,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 0,
                        fade = 0,
                        parameter = 3,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        parameter = 94,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        parameter = 78,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 2,
                        parameter = 62,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 11,
                        fade = 2,
                        parameter = 46,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 2,
                        parameter = 30,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 10,
                        fade = 2,
                        parameter = 29,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 9,
                        fade = 2,
                        parameter = 28,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        parameter = 26,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("STARYU", {
        chip = staryuChip.chip,
        pitch = 0,
        length = 32,
    })

    mod.content.palettes:register("KEP_STARYU", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_STARYU", "It possesses both\nmale and female\nreproductive\norgans. At night,\nits central core\nflashes brightly")

    mod.content.pokemon:patch("STARYU", {
        name = "STARYU",
        dex = 185,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 30,
            attack = 45,
            defense = 55,
            speed = 85,
            special = 70,
        },

        catchRate = 225,
        baseExp = 106,
        growthRate = "SLOW",

        level1Moves = {
            "TACKLE",
        },

        learnset = {
            { level = 17, move = "WATER_GUN" },
            { level = 22, move = "HARDEN" },
            { level = 27, move = "RECOVER" },
            { level = 32, move = "SWIFT" },
            { level = 37, move = "MINIMIZE" },
            { level = 42, move = "LIGHT_SCREEN" },
            { level = 47, move = "HYDRO_PUMP" },
        },

        evolutions = {
            { method = "ITEM", item = "WATER_STONE", species = "STARMIE" },
        },

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "SURF",
            "FLASH",
        },

        icon = "HELIX",
        palette = "KEP_STARYU",
        cry = "STARYU",

        spriteFront = mod.assets:path("assets/pokemon/generated/staryu/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/staryu/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "STARSHAPE",
            heightFt = 2,
            heightIn = 7,
            weight = 760,
            text = "KEP_DEX_STARYU",
        },
    })
end
