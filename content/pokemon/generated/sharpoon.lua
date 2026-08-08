local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local sharpoonChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 0,
                        frequency = 1936,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 1940,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 3,
                        frequency = 1520,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 4,
                        frequency = 1552,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 6,
                        fade = -4,
                        frequency = 1936,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 1940,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 0,
                        frequency = 1873,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 0,
                        frequency = 1875,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 9,
                        fade = 3,
                        frequency = 1473,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 9,
                        fade = 4,
                        frequency = 1489,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 4,
                        fade = -4,
                        frequency = 1873,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 3,
                        fade = 1,
                        frequency = 1878,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 0,
                        parameter = 74,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 0,
                        parameter = 74,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 0,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 7,
                        fade = -5,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 3,
                        parameter = 92,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("SHARPOON", {
        chip = sharpoonChip.chip,
        pitch = 0,
        length = 144,
    })

    mod.content.palettes:register("KEP_SHARPOON", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SHARPOON", "Also known as the\nSailor's Scourge,\nSHARPOON rams its\nproud horn into\nthe hulls of\napproaching ships")

    mod.content.pokemon:register("SHARPOON", {
        id = "SHARPOON",
        name = "SHARPOON",
        dex = 189,

        types = {
            "WATER",
            "STEEL",
        },

        baseStats = {
            hp = 80,
            attack = 115,
            defense = 100,
            speed = 60,
            special = 85,
        },

        catchRate = 45,
        baseExp = 204,
        growthRate = "SLOW",

        level1Moves = {
            "BITE",
            "LEER",
            "WATER_GUN",
        },

        learnset = {
            { level = 15, move = "SCREECH" },
            { level = 24, move = "HORN_ATTACK" },
            { level = 29, move = "BRUTAL_SWING" },
            { level = 34, move = "SMART_STRIKE" },
            { level = 38, move = "FURY_ATTACK" },
            { level = 42, move = "IRON_HEAD" },
            { level = 49, move = "HYDRO_PUMP" },
            { level = 55, move = "HORN_DRILL" },
        },

        evolutions = {},

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "HORN_DRILL",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "RAGE",
            "EARTHQUAKE",
            "FISSURE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "SURF",
        },

        icon = "WATER",
        palette = "KEP_SHARPOON",
        cry = "SHARPOON",

        spriteFront = mod.assets:path("assets/pokemon/generated/sharpoon/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/sharpoon/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "IRON HORN",
            heightFt = 11,
            heightIn = 2,
            weight = 4220,
            text = "KEP_DEX_SHARPOON",
        },
    })
end
