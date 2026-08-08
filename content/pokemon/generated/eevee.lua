local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local eeveeChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 7,
                        frequency = 1992,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 1996,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 5,
                        frequency = 2008,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 2024,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 8,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 40,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 7,
                        frequency = 1929,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 11,
                        fade = 6,
                        frequency = 1930,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1945,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1961,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 3,
                        frequency = 1993,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 2026,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        parameter = 196,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        parameter = 212,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 196,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 7,
                        parameter = 212,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 14,
                        fade = 2,
                        parameter = 196,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 180,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("EEVEE", {
        chip = eeveeChip.chip,
        pitch = 0,
        length = 96,
    })

    mod.content.palettes:register("KEP_EEVEE", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_EEVEE", "A special POKéMON\nthat can evolve\nin multiple ways,\ndue to a unique\ngenetic code that\nit possesses")

    mod.content.pokemon:patch("EEVEE", {
        name = "EEVEE",
        dex = 14,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 55,
            attack = 55,
            defense = 50,
            speed = 55,
            special = 65,
        },

        catchRate = 45,
        baseExp = 92,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "TAIL_WHIP",
        },

        learnset = {
            { level = 8, move = "SAND_ATTACK" },
            { level = 16, move = "GROWL" },
            { level = 23, move = "QUICK_ATTACK" },
            { level = 30, move = "BITE" },
            { level = 36, move = "FOCUS_ENERGY" },
            { level = 42, move = "TAKE_DOWN" },
        },

        evolutions = {
            { method = "ITEM", item = "FIRE_STONE", species = "FLAREON" },
            { method = "ITEM", item = "THUNDER_STONE", species = "JOLTEON" },
            { method = "ITEM", item = "WATER_STONE", species = "VAPOREON" },
            { method = "ITEM", item = "HEART_STONE", species = "ESPEON" },
            { method = "ITEM", item = "POISON_STONE", species = "UMBREON" },
            { method = "ITEM", item = "LEAF_STONE", species = "LEAFEON" },
            { method = "ITEM", item = "ICE_STONE", species = "GLACEON" },
            { method = "ITEM", item = "MOON_STONE", species = "SYLVEON" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/cat.png"),
            frames = 2,
        },
        palette = "KEP_EEVEE",
        cry = "EEVEE",

        spriteFront = mod.assets:path("assets/pokemon/generated/eevee/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/eevee/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "EVOLUTION",
            heightFt = 1,
            heightIn = 0,
            weight = 140,
            text = "KEP_DEX_EEVEE",
        },
    })
end
