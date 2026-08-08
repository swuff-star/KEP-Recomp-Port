local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local weepinbellChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 4,
                        frequency = 1924,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 3,
                        frequency = 1908,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 4,
                        frequency = 1924,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 3,
                        frequency = 1932,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1940,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 3, 1, 3 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 1878,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        frequency = 1864,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 1878,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 1893,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1910,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        parameter = 112,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 6,
                        parameter = 128,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 11,
                        fade = 6,
                        parameter = 112,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 96,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("WEEPINBELL", {
        chip = weepinbellChip.chip,
        pitch = 0,
        length = 32,
    })

    mod.content.palettes:register("KEP_WEEPINBELL", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_WEEPINBELL", "It shreds foes,\nusing its leaves\nlike cutters.\nWatching one feed\nis a very bizarre\nspectacle")

    mod.content.pokemon:patch("WEEPINBELL", {
        name = "WEEPINBELL",
        dex = 86,

        types = {
            "GRASS",
            "POISON",
        },

        baseStats = {
            hp = 65,
            attack = 90,
            defense = 50,
            speed = 55,
            special = 85,
        },

        catchRate = 120,
        baseExp = 151,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "VINE_WHIP",
            "GROWTH",
            "WRAP",
        },

        learnset = {
            { level = 13, move = "WRAP" },
            { level = 15, move = "POISONPOWDER" },
            { level = 18, move = "SLEEP_POWDER" },
            { level = 23, move = "STUN_SPORE" },
            { level = 29, move = "ACID" },
            { level = 38, move = "RAZOR_LEAF" },
            { level = 49, move = "SLAM" },
        },

        evolutions = {
            { method = "ITEM", item = "LEAF_STONE", species = "VICTREEBEL" },
            { method = "ITEM", item = "POISON_STONE", species = "BELLIGNAN" },
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
        palette = "KEP_WEEPINBELL",
        cry = "WEEPINBELL",

        spriteFront = mod.assets:path("assets/pokemon/generated/weepinbell/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/weepinbell/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "FLYCATCHER",
            heightFt = 3,
            heightIn = 3,
            weight = 140,
            text = "KEP_DEX_WEEPINBELL",
        },
    })
end
