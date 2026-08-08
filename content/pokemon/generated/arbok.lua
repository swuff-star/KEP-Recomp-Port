local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local arbokChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 0, 3, 3 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 1504,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 7,
                        frequency = 1512,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 1376,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1344,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 15,
                        volume = 13,
                        fade = 7,
                        frequency = 1377,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 7,
                        frequency = 1385,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 11,
                        fade = 4,
                        frequency = 1249,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1217,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 15,
                        volume = 15,
                        fade = 7,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 15,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 14,
                        fade = 4,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        parameter = 76,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("ARBOK", {
        chip = arbokChip.chip,
        pitch = 0,
        length = 16,
    })

    mod.content.palettes:register("KEP_ARBOK", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ARBOK", "Weak foes flee at\nthe sight of its\nbelly pattern. It\nfights viciously\nwith its mortal\nenemy, RATICATE")

    mod.content.pokemon:patch("ARBOK", {
        name = "ARBOK",
        dex = 73,

        types = {
            "POISON",
        },

        baseStats = {
            hp = 60,
            attack = 85,
            defense = 69,
            speed = 80,
            special = 65,
        },

        catchRate = 90,
        baseExp = 147,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "WRAP",
            "LEER",
            "POISON_STING",
        },

        learnset = {
            { level = 10, move = "POISON_STING" },
            { level = 17, move = "BITE" },
            { level = 27, move = "GLARE" },
            { level = 36, move = "SCREECH" },
            { level = 47, move = "ACID" },
            { level = 54, move = "TOXIC" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MEGA_DRAIN",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "SNAKE",
        palette = "KEP_ARBOK",
        cry = "ARBOK",

        spriteFront = mod.assets:path("assets/pokemon/generated/arbok/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/arbok/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "COBRA",
            heightFt = 11,
            heightIn = 6,
            weight = 1430,
            text = "KEP_DEX_ARBOK",
        },
    })
end
