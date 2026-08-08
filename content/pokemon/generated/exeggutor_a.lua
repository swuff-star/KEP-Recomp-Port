local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local exeggutor_aChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 0, 2, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1616,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1632,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1554,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 12,
                        fade = 1,
                        frequency = 1570,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1552,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 1,
                        frequency = 1568,
                    } },
                    { dutyPattern = { 2, 0, 2, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1616,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1632,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1554,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 12,
                        fade = 1,
                        frequency = 1570,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1552,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 1,
                        frequency = 1568,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 0,
                        fade = 0,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1617,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 1,
                        frequency = 1633,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1556,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1572,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1553,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 13,
                        fade = 1,
                        frequency = 1569,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 2,
                        frequency = 1556,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1572,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1553,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1569,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        parameter = 28,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 11,
                        fade = 1,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 2,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 11,
                        fade = 1,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 10,
                        fade = 2,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 2,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 10,
                        fade = 1,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 12,
                        fade = 2,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 10,
                        fade = 1,
                        parameter = 60,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("EXEGGUTOR_A", {
        chip = exeggutor_aChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_EXEGGUTOR_A", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_EXEGGUTOR_A", "Strong sunlight\nawoke its hidden\ndraconic powers.\nHowever, as a\nresult, its PSI\nhas weakened")

    mod.content.pokemon:register("EXEGGUTOR_A", {
        id = "EXEGGUTOR_A",
        name = "EXEGGUTOR",
        dex = 192,

        types = {
            "GRASS",
            "DRAGON",
        },

        baseStats = {
            hp = 95,
            attack = 105,
            defense = 85,
            speed = 45,
            special = 125,
        },

        catchRate = 45,
        baseExp = 212,
        growthRate = "SLOW",

        level1Moves = {
            "HYPNOSIS",
            "BARRAGE",
        },

        learnset = {
            { level = 25, move = "REFLECT" },
            { level = 28, move = "LEECH_SEED" },
            { level = 32, move = "STUN_SPORE" },
            { level = 37, move = "POISONPOWDER" },
            { level = 42, move = "SOLARBEAM" },
            { level = 48, move = "SLEEP_POWDER" },
        },

        evolutions = {},

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "DRAGON_RAGE",
            "EARTHQUAKE",
            "FISSURE",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SELFDESTRUCT",
            "EGG_BOMB",
            "REST",
            "PSYWAVE",
            "EXPLOSION",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "GRASS",
        palette = "KEP_EXEGGUTOR_A",
        cry = "EXEGGUTOR_A",

        spriteFront = mod.assets:path("assets/pokemon/generated/exeggutor_a/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/exeggutor_a/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "COCONUT",
            heightFt = 35,
            heightIn = 9,
            weight = 9160,
            text = "KEP_DEX_EXEGGUTOR_A",
        },
    })
end
