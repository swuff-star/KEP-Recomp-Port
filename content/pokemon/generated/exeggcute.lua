local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local exeggcuteChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1793,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1922,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 1,
                        frequency = 1858,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1857,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 13,
                        volume = 0,
                        fade = 0,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1793,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1922,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        frequency = 1857,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1857,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 1,
                        frequency = 1922,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1793,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 16,
                        volume = 0,
                        fade = 0,
                        parameter = 0,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 0,
                        fade = 0,
                        parameter = 0,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 1,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 11,
                        fade = 1,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 1,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 76,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("EXEGGCUTE", {
        chip = exeggcuteChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_EXEGGCUTE", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_EXEGGCUTE", "Genetically akin\nto plant seeds.\nIt's argued to be\nrelated to the\nplant that grows\non BULBASAUR")

    mod.content.pokemon:patch("EXEGGCUTE", {
        name = "EXEGGCUTE",
        dex = 190,

        types = {
            "GRASS",
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 60,
            attack = 40,
            defense = 80,
            speed = 40,
            special = 60,
        },

        catchRate = 90,
        baseExp = 98,
        growthRate = "SLOW",

        level1Moves = {
            "BARRAGE",
            "HYPNOSIS",
        },

        learnset = {
            { level = 25, move = "REFLECT" },
            { level = 28, move = "LEECH_SEED" },
            { level = 32, move = "STUN_SPORE" },
            { level = 37, move = "POISONPOWDER" },
            { level = 42, move = "SOLARBEAM" },
            { level = 48, move = "SLEEP_POWDER" },
        },

        evolutions = {
            { method = "ITEM", item = "LEAF_STONE", species = "EXEGGUTOR" },
        },

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
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
        },

        icon = "GRASS",
        palette = "KEP_EXEGGCUTE",
        cry = "EXEGGCUTE",

        spriteFront = mod.assets:path("assets/pokemon/generated/exeggcute/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/exeggcute/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "EGG",
            heightFt = 1,
            heightIn = 4,
            weight = 60,
            text = "KEP_DEX_EXEGGCUTE",
        },
    })
end
