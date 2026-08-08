local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local jolteonChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 7,
                        frequency = 1917,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 1921,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 5,
                        frequency = 1933,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 1949,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 1981,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 2013,
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
                        frequency = 1854,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 11,
                        fade = 6,
                        frequency = 1855,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1870,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1886,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 3,
                        frequency = 1918,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1951,
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
                        parameter = 121,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        parameter = 137,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 121,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 7,
                        parameter = 137,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 14,
                        fade = 2,
                        parameter = 121,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 105,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("JOLTEON", {
        chip = jolteonChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_JOLTEON", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_JOLTEON", "When angered or\nstartled, its fur\nstands upright,\nthen uses its\nneedle-like body\nto puncture foes")

    mod.content.pokemon:patch("JOLTEON", {
        name = "JOLTEON",
        dex = 16,

        types = {
            "ELECTRIC",
        },

        baseStats = {
            hp = 65,
            attack = 65,
            defense = 60,
            speed = 130,
            special = 110,
        },

        catchRate = 45,
        baseExp = 197,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "TACKLE",
            "SAND_ATTACK",
            "QUICK_ATTACK",
            "THUNDERSHOCK",
        },

        learnset = {
            { level = 8, move = "SAND_ATTACK" },
            { level = 16, move = "THUNDERSHOCK" },
            { level = 23, move = "QUICK_ATTACK" },
            { level = 30, move = "DOUBLE_KICK" },
            { level = 36, move = "PIN_MISSILE" },
            { level = 42, move = "THUNDER_WAVE" },
            { level = 47, move = "AGILITY" },
            { level = 52, move = "THUNDER" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
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
        palette = "KEP_JOLTEON",
        cry = "JOLTEON",

        spriteFront = mod.assets:path("assets/pokemon/generated/jolteon/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/jolteon/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "LIGHTNING",
            heightFt = 2,
            heightIn = 7,
            weight = 540,
            text = "KEP_DEX_JOLTEON",
        },
    })
end
