local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local rapidash_gChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 4,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 3,
                        frequency = 1872,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 4,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 3,
                        frequency = 1896,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1904,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 3, 1, 3 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 1842,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        frequency = 1828,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 1842,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 1857,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1874,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 6,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 11,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 60,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("RAPIDASH_G", {
        chip = rapidash_gChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_RAPIDASH_G", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_RAPIDASH_G", "Its galloping is\nsupported by its\nIf released from\nits horn, it can\nbreak concrete")

    mod.content.pokemon:register("RAPIDASH_G", {
        id = "RAPIDASH_G",
        name = "RAPIDASH",
        dex = 154,

        types = {
            "PSYCHIC_TYPE",
            "FAIRY",
        },

        baseStats = {
            hp = 65,
            attack = 100,
            defense = 70,
            speed = 105,
            special = 80,
        },

        catchRate = 60,
        baseExp = 192,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "CONFUSION",
            "TAIL_WHIP",
            "STOMP",
            "FAIRY_WIND",
        },

        learnset = {
            { level = 7, move = "QUICK_ATTACK" },
            { level = 14, move = "FAIRY_WIND" },
            { level = 24, move = "STOMP" },
            { level = 31, move = "PSYBEAM" },
            { level = 37, move = "AGILITY" },
            { level = 46, move = "DAZZLE_GLEAM" },
            { level = 52, move = "TAKE_DOWN" },
            { level = 56, move = "PSYCHIC_M" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "PAY_DAY",
            "RAGE",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "PSYWAVE",
            "SUBSTITUTE",
        },

        icon = "QUADRUPED",
        palette = "KEP_RAPIDASH_G",
        cry = "RAPIDASH_G",

        spriteFront = mod.assets:path("assets/pokemon/generated/rapidash_g/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/rapidash_g/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "UNIQUEHORN",
            heightFt = 5,
            heightIn = 7,
            weight = 1760,
            text = "KEP_DEX_RAPIDASH_G",
        },
    })
end
