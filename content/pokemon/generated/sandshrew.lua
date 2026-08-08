local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local sandshrewChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 3,
                        frequency = 1848,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 5,
                        frequency = 1976,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1912,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 2, 0, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 3,
                        frequency = 1832,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 5,
                        frequency = 1960,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 1896,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 9,
                        fade = 4,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        parameter = 60,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("SANDSHREW", {
        chip = sandshrewChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_SANDSHREW", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SANDSHREW", "It lives inside\ndeep underground\nburrows. It curls\nitself up into a\nball to protect\nagainst attacks")

    mod.content.pokemon:patch("SANDSHREW", {
        name = "SANDSHREW",
        dex = 69,

        types = {
            "GROUND",
        },

        baseStats = {
            hp = 50,
            attack = 75,
            defense = 85,
            speed = 40,
            special = 30,
        },

        catchRate = 255,
        baseExp = 93,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
        },

        learnset = {
            { level = 10, move = "SAND_ATTACK" },
            { level = 17, move = "SLASH" },
            { level = 24, move = "POISON_STING" },
            { level = 31, move = "SWIFT" },
            { level = 35, move = "EARTHQUAKE" },
            { level = 38, move = "FURY_SWIPES" },
        },

        evolutions = {
            { method = "LEVEL", level = 22, species = "SANDSLASH" },
        },

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "SUBMISSION",
            "SEISMIC_TOSS",
            "RAGE",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "CUT",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_SANDSHREW",
        cry = "SANDSHREW",

        spriteFront = mod.assets:path("assets/pokemon/generated/sandshrew/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/sandshrew/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "MOUSE",
            heightFt = 2,
            heightIn = 0,
            weight = 260,
            text = "KEP_DEX_SANDSHREW",
        },
    })
end
