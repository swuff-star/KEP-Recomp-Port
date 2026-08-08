local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local lickilickyChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 5,
                        frequency = 1705,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 5,
                        frequency = 1705,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 2,
                        frequency = 1761,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 2,
                        frequency = 1753,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 2,
                        frequency = 1745,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 2,
                        frequency = 1737,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 2,
                        frequency = 1721,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 2,
                        frequency = 1729,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 2,
                        frequency = 1721,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 1,
                        frequency = 1737,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 12,
                        fade = 1,
                        frequency = 1737,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 3,
                        frequency = 1641,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 3,
                        frequency = 1641,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 1641,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 11,
                        fade = 1,
                        frequency = 1698,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1690,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1682,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1674,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1666,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        frequency = 1658,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1666,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 9,
                        fade = 1,
                        frequency = 1674,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 9,
                        fade = 1,
                        frequency = 1674,
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

    mod.content.cries:register("LICKILICKY", {
        chip = lickilickyChip.chip,
        pitch = 0,
        length = 85,
    })

    mod.content.palettes:register("KEP_LICKILICKY", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_LICKILICKY", "It wraps its long\ntongue around its\nprey, leaving it\ncovered with a\nsaliva that can\ncause numbness")

    mod.content.pokemon:register("LICKILICKY", {
        id = "LICKILICKY",
        name = "LICKILICKY",
        dex = 109,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 110,
            attack = 85,
            defense = 95,
            speed = 50,
            special = 80,
        },

        catchRate = 30,
        baseExp = 193,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "WRAP",
            "SUPERSONIC",
            "STOMP",
        },

        learnset = {
            { level = 7, move = "STOMP" },
            { level = 15, move = "DISABLE" },
            { level = 23, move = "DEFENSE_CURL" },
            { level = 31, move = "SLAM" },
            { level = 39, move = "SCREECH" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "SWORDS_DANCE",
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
            "THUNDERBOLT",
            "THUNDER",
            "EARTHQUAKE",
            "FISSURE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SELFDESTRUCT",
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "EXPLOSION",
            "SUBSTITUTE",
            "CUT",
            "SURF",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_LICKILICKY",
        cry = "LICKILICKY",

        spriteFront = mod.assets:path("assets/pokemon/generated/lickilicky/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/lickilicky/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "LICKING",
            heightFt = 5,
            heightIn = 7,
            weight = 3090,
            text = "KEP_DEX_LICKILICKY",
        },
    })
end
