local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local bellossomChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 3, 2, 1 } },
                    { pitchSweep = {
                        pace = 7,
                        subtract = true,
                        shift = 7,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 0,
                        frequency = 1956,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 0,
                        frequency = 1963,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 0,
                        frequency = 4,
                    } },
                    { pitchSweep = {
                        pace = 0,
                        subtract = false,
                        shift = 0,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 0,
                        frequency = 2045,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 0,
                        frequency = 1988,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 0,
                        frequency = 1984,
                    } },
                    { pitchSweep = {
                        pace = 7,
                        subtract = true,
                        shift = 7,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 1,
                        frequency = 1979,
                    } },
                    { pitchSweep = {
                        pace = 0,
                        subtract = false,
                        shift = 0,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 2, 0, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1954,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 9,
                        fade = 2,
                        frequency = 2045,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 8,
                        fade = 2,
                        frequency = 1986,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1977,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 4,
                        parameter = 3,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 8,
                        fade = 4,
                        parameter = 1,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 10,
                        fade = 4,
                        parameter = 243,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 4,
                        parameter = 240,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = 4,
                        parameter = 243,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 239,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("BELLOSSOM", {
        chip = bellossomChip.chip,
        pitch = 0,
        length = 208,
    })

    mod.content.palettes:register("KEP_BELLOSSOM", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_BELLOSSOM", "The flowers that\nbloom on its head\nare said to be\nmore beautiful if\nit evolved from a\nmore smelly GLOOM")

    mod.content.pokemon:register("BELLOSSOM", {
        id = "BELLOSSOM",
        name = "BELLOSSOM",
        dex = 84,

        types = {
            "GRASS",
        },

        baseStats = {
            hp = 75,
            attack = 80,
            defense = 85,
            speed = 50,
            special = 100,
        },

        catchRate = 45,
        baseExp = 184,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "STUN_SPORE",
            "SLEEP_POWDER",
            "ABSORB",
            "PETAL_DANCE",
        },

        learnset = {
            { level = 15, move = "POISONPOWDER" },
            { level = 17, move = "STUN_SPORE" },
            { level = 19, move = "SLEEP_POWDER" },
        },

        evolutions = {},

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
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
        palette = "KEP_BELLOSSOM",
        cry = "BELLOSSOM",

        spriteFront = mod.assets:path("assets/pokemon/generated/bellossom/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/bellossom/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "FLOWER",
            heightFt = 1,
            heightIn = 4,
            weight = 130,
            text = "KEP_DEX_BELLOSSOM",
        },
    })
end
