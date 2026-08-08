local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local electabuzzChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 2, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 3,
                        frequency = 726,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 6,
                        fade = 2,
                        frequency = 693,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 5,
                        fade = 2,
                        frequency = 724,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 6,
                        fade = 3,
                        frequency = 661,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 8,
                        fade = 2,
                        frequency = 692,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 4,
                        fade = 2,
                        frequency = 662,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 4,
                        parameter = 27,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 2,
                        parameter = 43,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 6,
                        parameter = 27,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        parameter = 43,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        parameter = 59,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("ELECTABUZZ", {
        chip = electabuzzChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_ELECTABUZZ", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ELECTABUZZ", "Occasionally seen\nin power plants,\nfeeding on strong\nelectricity. The\ncolor red appears\nto enrage it")

    mod.content.pokemon:patch("ELECTABUZZ", {
        name = "ELECTABUZZ",
        dex = 215,

        types = {
            "ELECTRIC",
        },

        baseStats = {
            hp = 65,
            attack = 83,
            defense = 57,
            speed = 105,
            special = 85,
        },

        catchRate = 45,
        baseExp = 156,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "QUICK_ATTACK",
            "LEER",
        },

        learnset = {
            { level = 34, move = "THUNDERSHOCK" },
            { level = 37, move = "SCREECH" },
            { level = 42, move = "THUNDERPUNCH" },
            { level = 49, move = "LIGHT_SCREEN" },
            { level = 54, move = "THUNDER" },
        },

        evolutions = {
            { method = "ITEM", item = "THUNDER_STONE", species = "ELECTIVIRE" },
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
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "METRONOME",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "SUBSTITUTE",
            "STRENGTH",
            "FLASH",
        },

        icon = "MON",
        palette = "KEP_ELECTABUZZ",
        cry = "ELECTABUZZ",

        spriteFront = mod.assets:path("assets/pokemon/generated/electabuzz/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/electabuzz/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "ELECTRIC",
            heightFt = 3,
            heightIn = 7,
            weight = 660,
            text = "KEP_DEX_ELECTABUZZ",
        },
    })
end
