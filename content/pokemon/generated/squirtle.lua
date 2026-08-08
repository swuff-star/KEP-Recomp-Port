local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local squirtleChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 1893,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 0,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        frequency = 1904,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1664,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1668,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 2, 0, 2 } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 0,
                        frequency = 1827,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 10,
                        fade = 0,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 4,
                        frequency = 1842,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 2,
                        frequency = 1601,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        frequency = 1608,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        parameter = 172,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 6,
                        parameter = 156,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 5,
                        parameter = 170,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 11,
                        fade = 2,
                        parameter = 187,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 172,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("SQUIRTLE", {
        chip = squirtleChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_SQUIRTLE", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SQUIRTLE", "After retracting\nits long neck\ninto its shell,\nit squirts out\nwater with\nvigorous force")

    mod.content.pokemon:patch("SQUIRTLE", {
        name = "SQUIRTLE",
        dex = 7,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 44,
            attack = 48,
            defense = 65,
            speed = 43,
            special = 50,
        },

        catchRate = 45,
        baseExp = 66,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "TAIL_WHIP",
        },

        learnset = {
            { level = 8, move = "BUBBLE" },
            { level = 15, move = "WATER_GUN" },
            { level = 18, move = "BITE" },
            { level = 21, move = "WITHDRAW" },
            { level = 25, move = "BUBBLEBEAM" },
            { level = 28, move = "TAKE_DOWN" },
            { level = 31, move = "BODY_SLAM" },
            { level = 35, move = "SKULL_BASH" },
            { level = 39, move = "MEGA_PUNCH" },
            { level = 43, move = "HYDRO_PUMP" },
            { level = 47, move = "DOUBLE_EDGE" },
            { level = 52, move = "MEGA_KICK" },
        },

        evolutions = {
            { method = "LEVEL", level = 16, species = "WARTORTLE" },
        },

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
        },

        icon = "WATER",
        palette = "KEP_SQUIRTLE",
        cry = "SQUIRTLE",

        spriteFront = mod.assets:path("assets/pokemon/generated/squirtle/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/squirtle/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "TINYTURTLE",
            heightFt = 1,
            heightIn = 8,
            weight = 200,
            text = "KEP_DEX_SQUIRTLE",
        },
    })
end
