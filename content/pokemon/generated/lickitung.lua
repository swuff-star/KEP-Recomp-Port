local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local lickitungChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 5,
                        frequency = 1536,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 13,
                        fade = 2,
                        frequency = 1592,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1584,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1576,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1568,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1552,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 10,
                        fade = 2,
                        frequency = 1560,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1552,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1568,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 13,
                        volume = 12,
                        fade = 3,
                        frequency = 1472,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 1,
                        frequency = 1529,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 10,
                        fade = 1,
                        frequency = 1521,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 10,
                        fade = 1,
                        frequency = 1513,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 1,
                        frequency = 1505,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 1,
                        frequency = 1497,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 8,
                        fade = 1,
                        frequency = 1489,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 1,
                        frequency = 1497,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1505,
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

    mod.content.cries:override("LICKITUNG", {
        chip = lickitungChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_LICKITUNG", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_LICKITUNG", "Has a lazy nature\nand a ravenous\nappetite, moving\nits long tongue\nlike a human arm\nfor grabbing food")

    mod.content.pokemon:patch("LICKITUNG", {
        name = "LICKITUNG",
        dex = 108,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 90,
            attack = 55,
            defense = 75,
            speed = 30,
            special = 60,
        },

        catchRate = 45,
        baseExp = 127,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "WRAP",
            "SUPERSONIC",
        },

        learnset = {
            { level = 7, move = "STOMP" },
            { level = 15, move = "DISABLE" },
            { level = 23, move = "DEFENSE_CURL" },
            { level = 31, move = "SLAM" },
            { level = 39, move = "SCREECH" },
        },

        evolutions = {
            { method = "LEVEL", level = 32, species = "LICKILICKY" },
        },

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
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
            "SURF",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_LICKITUNG",
        cry = "LICKITUNG",

        spriteFront = mod.assets:path("assets/pokemon/generated/lickitung/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/lickitung/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "LICKING",
            heightFt = 3,
            heightIn = 11,
            weight = 1440,
            text = "KEP_DEX_LICKITUNG",
        },
    })
end
