local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local nidorinoChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 3,
                        frequency = 1860,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 5,
                        frequency = 1988,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1924,
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
                        frequency = 1844,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 5,
                        frequency = 1972,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 1908,
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
                        parameter = 72,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 9,
                        fade = 4,
                        parameter = 88,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        parameter = 72,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("NIDORINO", {
        chip = nidorinoChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_NIDORINO", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_NIDORINO", "Quick-tempered and\naggressive, its\nhorn can pierce\nthrough diamond\nwhen it swings it\naround wildly")

    mod.content.pokemon:patch("NIDORINO", {
        name = "NIDORINO",
        dex = 52,

        types = {
            "POISON",
        },

        baseStats = {
            hp = 61,
            attack = 72,
            defense = 57,
            speed = 65,
            special = 55,
        },

        catchRate = 120,
        baseExp = 118,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "LEER",
            "TACKLE",
            "HORN_ATTACK",
        },

        learnset = {
            { level = 8, move = "HORN_ATTACK" },
            { level = 12, move = "DOUBLE_KICK" },
            { level = 19, move = "POISON_STING" },
            { level = 27, move = "FOCUS_ENERGY" },
            { level = 36, move = "FURY_ATTACK" },
            { level = 46, move = "HORN_DRILL" },
        },

        evolutions = {
            { method = "ITEM", item = "MOON_STONE", species = "NIDOREIGN" },
            { method = "ITEM", item = "POISON_STONE", species = "NIDOKING" },
            { method = "LEVEL", level = 36, species = "NIDOKING" },
        },

        tmhm = {
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
        },

        icon = "MON",
        palette = "KEP_NIDORINO",
        cry = "NIDORINO",

        spriteFront = mod.assets:path("assets/pokemon/generated/nidorino/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/nidorino/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "POISON PIN",
            heightFt = 2,
            heightIn = 11,
            weight = 430,
            text = "KEP_DEX_NIDORINO",
        },
    })
end
