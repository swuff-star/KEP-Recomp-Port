local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local sandslashChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 3,
                        frequency = 23,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 5,
                        frequency = 151,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 87,
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
                        frequency = 7,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 5,
                        frequency = 135,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 71,
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
                        parameter = 27,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 9,
                        fade = 4,
                        parameter = 43,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        parameter = 27,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("SANDSLASH", {
        chip = sandslashChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_SANDSLASH", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SANDSLASH", "Adept at attacking\nwith the spines\non its back and\nits sharp claws\nwhile quickly\nscurrying about")

    mod.content.pokemon:patch("SANDSLASH", {
        name = "SANDSLASH",
        dex = 70,

        types = {
            "GROUND",
        },

        baseStats = {
            hp = 75,
            attack = 100,
            defense = 110,
            speed = 65,
            special = 55,
        },

        catchRate = 90,
        baseExp = 163,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "SCRATCH",
            "SAND_ATTACK",
        },

        learnset = {
            { level = 10, move = "SAND_ATTACK" },
            { level = 17, move = "SLASH" },
            { level = 27, move = "POISON_STING" },
            { level = 36, move = "SWIFT" },
            { level = 42, move = "EARTHQUAKE" },
            { level = 47, move = "FURY_SWIPES" },
        },

        evolutions = {},

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
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
        palette = "KEP_SANDSLASH",
        cry = "SANDSLASH",

        spriteFront = mod.assets:path("assets/pokemon/generated/sandslash/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/sandslash/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "MOUSE",
            heightFt = 3,
            heightIn = 3,
            weight = 650,
            text = "KEP_DEX_SANDSLASH",
        },
    })
end
