local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local kabutoChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 59,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 6,
                        frequency = 91,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        frequency = 2043,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 7,
                        frequency = 14,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 45,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1996,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 14,
                        volume = 15,
                        fade = 6,
                        parameter = 7,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 6,
                        parameter = 247,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        parameter = 7,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("KABUTO", {
        chip = kabutoChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_KABUTO", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_KABUTO", "Said to be the\nancestor of hermit\ncrabs and turtles,\nit had a tough\nshell, but was a\nslow swimmer")

    mod.content.pokemon:patch("KABUTO", {
        name = "KABUTO",
        dex = 227,

        types = {
            "ROCK",
            "WATER",
        },

        baseStats = {
            hp = 30,
            attack = 80,
            defense = 90,
            speed = 55,
            special = 45,
        },

        catchRate = 45,
        baseExp = 119,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "HARDEN",
        },

        learnset = {
            { level = 21, move = "ROCK_THROW" },
            { level = 34, move = "ABSORB" },
            { level = 39, move = "SLASH" },
            { level = 44, move = "LEER" },
            { level = 49, move = "HYDRO_PUMP" },
        },

        evolutions = {
            { method = "LEVEL", level = 40, species = "KABUTOPS" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "REST",
            "SUBSTITUTE",
            "SURF",
        },

        icon = "HELIX",
        palette = "KEP_KABUTO",
        cry = "KABUTO",

        spriteFront = mod.assets:path("assets/pokemon/generated/kabuto/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/kabuto/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "SHELLFISH",
            heightFt = 1,
            heightIn = 8,
            weight = 250,
            text = "KEP_DEX_KABUTO",
        },
    })
end
