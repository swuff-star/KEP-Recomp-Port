local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local umbreonChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 7,
                        frequency = 1623,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 1627,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 5,
                        frequency = 1639,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 1655,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 1687,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1719,
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
                        frequency = 1560,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 11,
                        fade = 6,
                        frequency = 1561,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1576,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1592,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 3,
                        frequency = 1624,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1657,
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
                        parameter = 83,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        parameter = 99,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 83,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 7,
                        parameter = 99,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 14,
                        fade = 2,
                        parameter = 83,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 67,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("UMBREON", {
        chip = umbreonChip.chip,
        pitch = 0,
        length = 112,
    })

    mod.content.palettes:register("KEP_UMBREON", {
        { 255, 255, 255 },
        { 247, 140, 90 },
        { 90, 41, 115 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_UMBREON", "When this POKéMON\nbecomes angry, its\npores secrete a\npoisonous sweat,\nwhich it sprays at\nits foe's eyes")

    mod.content.pokemon:register("UMBREON", {
        id = "UMBREON",
        name = "UMBREON",
        dex = 19,

        types = {
            "DARK",
        },

        baseStats = {
            hp = 95,
            attack = 65,
            defense = 110,
            speed = 65,
            special = 130,
        },

        catchRate = 45,
        baseExp = 196,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "SAND_ATTACK",
            "QUICK_ATTACK",
            "BRUTAL_SWING",
        },

        learnset = {
            { level = 8, move = "SAND_ATTACK" },
            { level = 16, move = "BRUTAL_SWING" },
            { level = 23, move = "QUICK_ATTACK" },
            { level = 30, move = "FEINT_ATTACK" },
            { level = 36, move = "FAKE_TEARS" },
            { level = 42, move = "TAKE_DOWN" },
            { level = 52, move = "FALSE_SURRENDER" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
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
        palette = "KEP_UMBREON",
        cry = "UMBREON",

        spriteFront = mod.assets:path("assets/pokemon/generated/umbreon/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/umbreon/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "MOONLIGHT",
            heightFt = 3,
            heightIn = 3,
            weight = 600,
            text = "KEP_DEX_UMBREON",
        },
    })
end
