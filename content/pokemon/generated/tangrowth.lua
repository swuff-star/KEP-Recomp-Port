local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local tangrowthChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 2, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 1,
                        frequency = 1626,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 7,
                        frequency = 1850,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 1722,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1722,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 2,
                        frequency = 106,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 0,
                        frequency = 100,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 2,
                        frequency = 90,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 58,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 58,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 2,
                        frequency = 58,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 3, 0, 2 } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 1,
                        frequency = 202,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 1,
                        frequency = 2042,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 1,
                        frequency = 250,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1354,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 1,
                        frequency = 26,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 14,
                        fade = 1,
                        frequency = 42,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 15,
                        fade = 2,
                        frequency = 58,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        frequency = 74,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        frequency = 74,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 14,
                        fade = 2,
                        frequency = 74,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 8,
                        fade = -1,
                        parameter = 216,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -1,
                        parameter = 201,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 8,
                        fade = -1,
                        parameter = 248,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 8,
                        fade = -1,
                        parameter = 37,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 13,
                        fade = 0,
                        parameter = 245,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 14,
                        fade = 7,
                        parameter = 246,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 14,
                        fade = -4,
                        parameter = 247,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        parameter = 249,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 13,
                        fade = 2,
                        parameter = 249,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("TANGROWTH", {
        chip = tangrowthChip.chip,
        pitch = 0,
        length = 168,
    })

    mod.content.palettes:register("KEP_TANGROWTH", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_TANGROWTH", "It ensnares prey\nby extending its\narms, which are\nmade of vines.\nThey regenerate\nquickly if cut")

    mod.content.pokemon:register("TANGROWTH", {
        id = "TANGROWTH",
        name = "TANGROWTH",
        dex = 172,

        types = {
            "GRASS",
        },

        baseStats = {
            hp = 100,
            attack = 100,
            defense = 125,
            speed = 50,
            special = 110,
        },

        catchRate = 30,
        baseExp = 211,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "CONSTRICT",
            "BIND",
            "ABSORB",
        },

        learnset = {
            { level = 13, move = "BIND" },
            { level = 19, move = "ABSORB" },
            { level = 24, move = "VINE_WHIP" },
            { level = 28, move = "POISONPOWDER" },
            { level = 31, move = "STUN_SPORE" },
            { level = 34, move = "SLEEP_POWDER" },
            { level = 40, move = "SLAM" },
            { level = 50, move = "GROWTH" },
            { level = 56, move = "NIGHT_SHADE" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "EARTHQUAKE",
            "FISSURE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "CUT",
        },

        icon = "GRASS",
        palette = "KEP_TANGROWTH",
        cry = "TANGROWTH",

        spriteFront = mod.assets:path("assets/pokemon/generated/tangrowth/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/tangrowth/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "VINE",
            heightFt = 6,
            heightIn = 7,
            weight = 2840,
            text = "KEP_DEX_TANGROWTH",
        },
    })
end
