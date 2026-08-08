local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local espeonChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 1, 0, 2 } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 0,
                        frequency = 1874,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1863,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1855,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 1,
                        frequency = 1836,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 0,
                        frequency = 2008,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 0,
                        frequency = 1986,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1968,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 1968,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 2, 1, 3 } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 86,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 86,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 86,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 86,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 86,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 86,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 86,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 1,
                        frequency = 86,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 50,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 50,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 1,
                        frequency = 50,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 47,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 11,
                        fade = 1,
                        frequency = 47,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 9,
                        fade = 2,
                        frequency = 55,
                    } },
                    { squareNote = {
                        len = 1,
                        volume = 9,
                        fade = 2,
                        frequency = 55,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 1,
                        volume = 15,
                        fade = 1,
                        parameter = 202,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 15,
                        fade = 1,
                        parameter = 202,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 15,
                        fade = 1,
                        parameter = 202,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 15,
                        fade = 1,
                        parameter = 202,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 9,
                        fade = 1,
                        parameter = 235,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 10,
                        fade = 0,
                        parameter = 236,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 14,
                        fade = 1,
                        parameter = 237,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 2,
                        parameter = 241,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        parameter = 240,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        parameter = 239,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 10,
                        fade = 3,
                        parameter = 238,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 10,
                        fade = 3,
                        parameter = 238,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("ESPEON", {
        chip = espeonChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_ESPEON", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ESPEON", "Its sensitive fur\nallows it to sense\nair currents. The\nred orb on its\nforehead glows if\nit uses PSI")

    mod.content.pokemon:register("ESPEON", {
        id = "ESPEON",
        name = "ESPEON",
        dex = 18,

        types = {
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 65,
            attack = 65,
            defense = 60,
            speed = 110,
            special = 130,
        },

        catchRate = 45,
        baseExp = 196,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "SAND_ATTACK",
            "QUICK_ATTACK",
            "CONFUSION",
        },

        learnset = {
            { level = 8, move = "SAND_ATTACK" },
            { level = 16, move = "CONFUSION" },
            { level = 23, move = "QUICK_ATTACK" },
            { level = 30, move = "BITE" },
            { level = 36, move = "PSYBEAM" },
            { level = 37, move = "TAIL_WHIP" },
            { level = 42, move = "TAKE_DOWN" },
            { level = 52, move = "PSYCHIC_M" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "DREAM_EATER",
            "REST",
            "PSYWAVE",
            "SUBSTITUTE",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/cat.png"),
            frames = 2,
        },
        palette = "KEP_ESPEON",
        cry = "ESPEON",

        spriteFront = mod.assets:path("assets/pokemon/generated/espeon/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/espeon/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "SUN",
            heightFt = 2,
            heightIn = 11,
            weight = 580,
            text = "KEP_DEX_ESPEON",
        },
    })
end
