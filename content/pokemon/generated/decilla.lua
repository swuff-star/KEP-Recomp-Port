local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local decillaChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 2,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1728,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1712,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 5,
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1664,
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
                        volume = 12,
                        fade = 7,
                        frequency = 1985,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        frequency = 1984,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1665,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1650,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1633,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1602,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 14,
                        fade = 4,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 7,
                        parameter = 156,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 157,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("DECILLA", {
        chip = decillaChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_DECILLA", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_DECILLA", "Its DNA was found\npreserved within\namber. It was a\ncowardly POKéMON,\noften crying for\nits parents")

    mod.content.pokemon:register("DECILLA", {
        id = "DECILLA",
        name = "DECILLA",
        dex = 230,

        types = {
            "ROCK",
        },

        baseStats = {
            hp = 61,
            attack = 90,
            defense = 70,
            speed = 15,
            special = 40,
        },

        catchRate = 45,
        baseExp = 119,
        growthRate = "SLOW",

        level1Moves = {
            "SUBSTITUTE",
            "GROWL",
            "TACKLE",
        },

        learnset = {
            { level = 35, move = "SCREECH" },
            { level = 38, move = "ROCK_THROW" },
            { level = 40, move = "ROAR" },
            { level = 43, move = "ROCK_SLIDE" },
        },

        evolutions = {
            { method = "LEVEL", level = 40, species = "GAWARHED" },
        },

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "DRAGON_RAGE",
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
        },

        icon = "MON",
        palette = "KEP_DECILLA",
        cry = "DECILLA",

        spriteFront = mod.assets:path("assets/pokemon/generated/decilla/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/decilla/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "SHRIEKING",
            heightFt = 3,
            heightIn = 7,
            weight = 1400,
            text = "KEP_DEX_DECILLA",
        },
    })
end
