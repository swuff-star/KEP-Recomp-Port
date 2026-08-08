local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local bellsproutChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 2, 3 } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 3,
                        frequency = 1465,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 14,
                        fade = 2,
                        frequency = 1433,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 13,
                        fade = 1,
                        frequency = 1399,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 11,
                        fade = 2,
                        frequency = 1241,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1271,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 3,
                        frequency = 1401,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        frequency = 1337,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1367,
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
                        volume = 13,
                        fade = 3,
                        frequency = 1461,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1429,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 12,
                        fade = 1,
                        frequency = 1397,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 1237,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1269,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 3,
                        frequency = 1397,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 4,
                        frequency = 1333,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1365,
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

    mod.content.cries:override("BELLSPROUT", {
        chip = bellsproutChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_BELLSPROUT", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_BELLSPROUT", "Because its bud\nslightly resembles\na human face, it\nis said to be a\ntype of legendary\nmandrake root")

    mod.content.pokemon:patch("BELLSPROUT", {
        name = "BELLSPROUT",
        dex = 85,

        types = {
            "GRASS",
            "POISON",
        },

        baseStats = {
            hp = 50,
            attack = 75,
            defense = 35,
            speed = 40,
            special = 70,
        },

        catchRate = 255,
        baseExp = 84,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "VINE_WHIP",
            "GROWTH",
        },

        learnset = {
            { level = 13, move = "WRAP" },
            { level = 15, move = "POISONPOWDER" },
            { level = 18, move = "SLEEP_POWDER" },
            { level = 21, move = "STUN_SPORE" },
            { level = 26, move = "ACID" },
            { level = 33, move = "RAZOR_LEAF" },
            { level = 42, move = "SLAM" },
        },

        evolutions = {
            { method = "LEVEL", level = 21, species = "WEEPINBELL" },
        },

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
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
        palette = "KEP_BELLSPROUT",
        cry = "BELLSPROUT",

        spriteFront = mod.assets:path("assets/pokemon/generated/bellsprout/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/bellsprout/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "FLOWER",
            heightFt = 2,
            heightIn = 4,
            weight = 90,
            text = "KEP_DEX_BELLSPROUT",
        },
    })
end
