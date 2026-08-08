local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local machopChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 4,
                        frequency = 1839,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 13,
                        fade = 6,
                        frequency = 15,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 4,
                        frequency = 7,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 8,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 4,
                        frequency = 1646,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 14,
                        fade = 6,
                        frequency = 1998,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 5,
                        frequency = 1990,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1994,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 4,
                        parameter = 52,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 10,
                        fade = 5,
                        parameter = 50,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 51,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        parameter = 50,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("MACHOP", {
        chip = machopChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_MACHOP", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MACHOP", "Its whole body is\nmusclebound. Even\nthough it's the\nsize of a child,\nit can throw up\nto 100 adults")

    mod.content.pokemon:patch("MACHOP", {
        name = "MACHOP",
        dex = 140,

        types = {
            "FIGHTING",
        },

        baseStats = {
            hp = 70,
            attack = 80,
            defense = 50,
            speed = 35,
            special = 35,
        },

        catchRate = 180,
        baseExp = 88,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "KARATE_CHOP",
            "UPPERCUT",
        },

        learnset = {
            { level = 15, move = "COUNTER" },
            { level = 20, move = "LOW_KICK" },
            { level = 25, move = "LEER" },
            { level = 32, move = "FOCUS_ENERGY" },
            { level = 39, move = "SEISMIC_TOSS" },
            { level = 46, move = "SUBMISSION" },
            { level = 53, move = "MEGA_PUNCH" },
            { level = 60, move = "MEGA_KICK" },
        },

        evolutions = {
            { method = "LEVEL", level = 28, species = "MACHOKE" },
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
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "METRONOME",
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_MACHOP",
        cry = "MACHOP",

        spriteFront = mod.assets:path("assets/pokemon/generated/machop/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/machop/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "SUPERPOWER",
            heightFt = 2,
            heightIn = 7,
            weight = 430,
            text = "KEP_DEX_MACHOP",
        },
    })
end
