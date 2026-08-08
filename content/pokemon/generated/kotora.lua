local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local kotoraChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 1707,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        frequency = 1699,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 7,
                        frequency = 1683,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 4,
                        frequency = 1667,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 13,
                        fade = 3,
                        frequency = 1635,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1603,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1571,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 7,
                        frequency = 1447,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 6,
                        frequency = 1445,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 9,
                        fade = 7,
                        frequency = 1428,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 4,
                        frequency = 1412,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 10,
                        fade = 3,
                        frequency = 1381,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 3,
                        frequency = 1350,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1317,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 13,
                        volume = 14,
                        fade = 4,
                        parameter = 239,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 7,
                        parameter = 255,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        parameter = 239,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        parameter = 255,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("KOTORA", {
        chip = kotoraChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_KOTORA", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_KOTORA", "As it builds up\nelectricity in\nits fur, touching\nit is risky. It's\na very popular\npet regardless")

    mod.content.pokemon:register("KOTORA", {
        id = "KOTORA",
        name = "KOTORA",
        dex = 43,

        types = {
            "ELECTRIC",
        },

        baseStats = {
            hp = 50,
            attack = 65,
            defense = 45,
            speed = 40,
            special = 55,
        },

        catchRate = 180,
        baseExp = 88,
        growthRate = "SLOW",

        level1Moves = {
            "THUNDERSHOCK",
            "TACKLE",
        },

        learnset = {
            { level = 6, move = "LEER" },
            { level = 11, move = "ROAR" },
            { level = 17, move = "QUICK_ATTACK" },
            { level = 28, move = "BITE" },
            { level = 34, move = "THUNDER" },
            { level = 43, move = "AGILITY" },
        },

        evolutions = {
            { method = "LEVEL", level = 16, species = "GAOTORA" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "SUBSTITUTE",
            "FLASH",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/cat.png"),
            frames = 2,
        },
        palette = "KEP_KOTORA",
        cry = "KOTORA",

        spriteFront = mod.assets:path("assets/pokemon/generated/kotora/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/kotora/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "SHOCK CAT",
            heightFt = 2,
            heightIn = 0,
            weight = 620,
            text = "KEP_DEX_KOTORA",
        },
    })
end
