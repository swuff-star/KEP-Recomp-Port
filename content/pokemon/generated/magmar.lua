local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local magmarChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 1951,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 6,
                        frequency = 1955,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 6,
                        frequency = 1951,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 3,
                        frequency = 1823,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 3,
                        frequency = 1827,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1823,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1807,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 7,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        frequency = 1794,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 6,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 12,
                        fade = 3,
                        frequency = 1664,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 3,
                        frequency = 1666,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 2,
                        frequency = 1665,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1648,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 8,
                        volume = 13,
                        fade = 6,
                        parameter = 91,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 6,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 4,
                        parameter = 91,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 4,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 3,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 91,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("MAGMAR", {
        chip = magmarChip.chip,
        pitch = 0,
        length = 48,
    })

    mod.content.palettes:register("KEP_MAGMAR", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MAGMAR", "This rare species\nhas been sighted\nin volcanic areas.\nThe temperature of\nits body can reach\n2,200 degrees F")

    mod.content.pokemon:patch("MAGMAR", {
        name = "MAGMAR",
        dex = 217,

        types = {
            "FIRE",
        },

        baseStats = {
            hp = 65,
            attack = 95,
            defense = 57,
            speed = 93,
            special = 85,
        },

        catchRate = 45,
        baseExp = 167,
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

        evolutions = {
            { method = "ITEM", item = "FIRE_STONE", species = "MAGMORTAR" },
        },

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
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_MAGMAR",
        cry = "MAGMAR",

        spriteFront = mod.assets:path("assets/pokemon/generated/magmar/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/magmar/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "SPITFIRE",
            heightFt = 4,
            heightIn = 3,
            weight = 980,
            text = "KEP_DEX_MAGMAR",
        },
    })
end
