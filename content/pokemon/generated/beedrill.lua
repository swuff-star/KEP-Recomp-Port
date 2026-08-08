local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local beedrillChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 3, 0, 3 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 6,
                        frequency = 1568,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 3,
                        frequency = 1564,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 2,
                        frequency = 1584,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1600,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 2,
                        frequency = 1616,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1632,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 1, 2, 1 } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 6,
                        frequency = 1297,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 3,
                        frequency = 1293,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 2,
                        frequency = 1313,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 2,
                        frequency = 1329,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 2,
                        frequency = 1345,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1361,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 11,
                        volume = 14,
                        fade = 6,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 13,
                        fade = 6,
                        parameter = 204,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        parameter = 172,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 3,
                        parameter = 188,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 3,
                        parameter = 172,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 188,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("BEEDRILL", {
        chip = beedrillChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_BEEDRILL", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_BEEDRILL", "Often appears in\nswarms. It buzzes\naround at high\nspeeds, attacking\nwith its three\nvenomous stingers")

    mod.content.pokemon:patch("BEEDRILL", {
        name = "BEEDRILL",
        dex = 39,

        types = {
            "BUG",
            "POISON",
        },

        baseStats = {
            hp = 65,
            attack = 80,
            defense = 40,
            speed = 75,
            special = 45,
        },

        catchRate = 45,
        baseExp = 159,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "FURY_ATTACK",
            "POISON_STING",
            "STRING_SHOT",
            "HARDEN",
        },

        learnset = {
            { level = 10, move = "FURY_ATTACK" },
            { level = 16, move = "FOCUS_ENERGY" },
            { level = 20, move = "TWINEEDLE" },
            { level = 25, move = "RAGE" },
            { level = 30, move = "PIN_MISSILE" },
            { level = 35, move = "AGILITY" },
            { level = 40, move = "SWORDS_DANCE" },
            { level = 45, move = "TAKE_DOWN" },
            { level = 50, move = "TOXIC" },
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
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
        },

        icon = "BUG",
        palette = "KEP_BEEDRILL",
        cry = "BEEDRILL",

        spriteFront = mod.assets:path("assets/pokemon/generated/beedrill/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/beedrill/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "POISON BEE",
            heightFt = 3,
            heightIn = 3,
            weight = 650,
            text = "KEP_DEX_BEEDRILL",
        },
    })
end
