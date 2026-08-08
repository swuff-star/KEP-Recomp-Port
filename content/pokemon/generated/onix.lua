local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local onixChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 0, 3, 3 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 1535,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 7,
                        frequency = 1543,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 1407,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1375,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 15,
                        volume = 13,
                        fade = 7,
                        frequency = 1408,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 7,
                        frequency = 1416,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 11,
                        fade = 4,
                        frequency = 1280,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1248,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 15,
                        volume = 15,
                        fade = 7,
                        parameter = 123,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 15,
                        fade = 6,
                        parameter = 107,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 14,
                        fade = 4,
                        parameter = 123,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        parameter = 107,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("ONIX", {
        chip = onixChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_ONIX", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ONIX", "It usually lives\nunderground. It\nsearches for prey\nwhile boring its\nway through the\nearth at 50mph")

    mod.content.pokemon:patch("ONIX", {
        name = "ONIX",
        dex = 127,

        types = {
            "ROCK",
            "GROUND",
        },

        baseStats = {
            hp = 35,
            attack = 45,
            defense = 160,
            speed = 70,
            special = 30,
        },

        catchRate = 45,
        baseExp = 108,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "SCREECH",
        },

        learnset = {
            { level = 15, move = "BIND" },
            { level = 19, move = "ROCK_THROW" },
            { level = 25, move = "RAGE" },
            { level = 33, move = "SLAM" },
            { level = 43, move = "HARDEN" },
            { level = 50, move = "FISSURE" },
        },

        evolutions = {
            { method = "ITEM", item = "METAL_COAT", species = "STEELIX" },
            { method = "LEVEL", level = 38, species = "STEELIX" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SELFDESTRUCT",
            "SKULL_BASH",
            "REST",
            "EXPLOSION",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "SNAKE",
        palette = "KEP_ONIX",
        cry = "ONIX",

        spriteFront = mod.assets:path("assets/pokemon/generated/onix/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/onix/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "ROCK SNAKE",
            heightFt = 28,
            heightIn = 10,
            weight = 4630,
            text = "KEP_DEX_ONIX",
        },
    })
end
