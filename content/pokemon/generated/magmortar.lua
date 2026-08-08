local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local magmortarChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 4,
                        frequency = 933,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 14,
                        fade = 4,
                        frequency = 933,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 5,
                        frequency = 981,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 5,
                        frequency = 981,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 1,
                        frequency = 1005,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 1,
                        frequency = 1005,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 4,
                        frequency = 902,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 12,
                        fade = 4,
                        frequency = 902,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 6,
                        frequency = 951,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 6,
                        frequency = 951,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 1,
                        frequency = 972,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 10,
                        fade = 1,
                        frequency = 972,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 97,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 12,
                        fade = 4,
                        parameter = 81,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 65,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("MAGMORTAR", {
        chip = magmortarChip.chip,
        pitch = 0,
        length = 193,
    })

    mod.content.palettes:register("KEP_MAGMORTAR", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MAGMORTAR", "Blasts fireballs\nof over 3,600\ndegrees Fahrenheit\nout of its arms.\nIt avoids this\nwhen hunting prey")

    mod.content.pokemon:register("MAGMORTAR", {
        id = "MAGMORTAR",
        name = "MAGMORTAR",
        dex = 218,

        types = {
            "FIRE",
        },

        baseStats = {
            hp = 75,
            attack = 95,
            defense = 67,
            speed = 83,
            special = 95,
        },

        catchRate = 30,
        baseExp = 199,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "EMBER",
        },

        learnset = {
            { level = 36, move = "LEER" },
            { level = 39, move = "CONFUSE_RAY" },
            { level = 43, move = "FIRE_PUNCH" },
            { level = 48, move = "SMOKESCREEN" },
            { level = 52, move = "SMOG" },
            { level = 55, move = "FLAMETHROWER" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "EARTHQUAKE",
            "FISSURE",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "METRONOME",
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "PSYWAVE",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_MAGMORTAR",
        cry = "MAGMORTAR",

        spriteFront = mod.assets:path("assets/pokemon/generated/magmortar/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/magmortar/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "BLAST",
            heightFt = 5,
            heightIn = 3,
            weight = 1500,
            text = "KEP_DEX_MAGMORTAR",
        },
    })
end
