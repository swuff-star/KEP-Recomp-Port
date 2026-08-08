local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local gorotoraChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 7,
                        frequency = 1984,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 6,
                        frequency = 1988,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 6,
                        frequency = 1984,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 3,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 3,
                        frequency = 1859,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1864,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1872,
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
                        volume = 0,
                        fade = 0,
                        frequency = 32,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 7,
                        frequency = 1889,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 8,
                        fade = 6,
                        frequency = 1891,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 7,
                        fade = 6,
                        frequency = 1889,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 8,
                        fade = 3,
                        frequency = 1762,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 7,
                        fade = 3,
                        frequency = 1761,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 8,
                        fade = 2,
                        frequency = 1772,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 1784,
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
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        parameter = 90,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 7,
                        parameter = 90,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 5,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 2,
                        parameter = 93,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 76,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("GOROTORA", {
        chip = gorotoraChip.chip,
        pitch = 0,
        length = 16,
    })

    mod.content.palettes:register("KEP_GOROTORA", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_GOROTORA", "It is said that\nonly the bravest\nPOKéMON trainers\ncan tame it. Its\ngrowls sound like\nrolling thunder")

    mod.content.pokemon:register("GOROTORA", {
        id = "GOROTORA",
        name = "GOROTORA",
        dex = 45,

        types = {
            "ELECTRIC",
        },

        baseStats = {
            hp = 90,
            attack = 105,
            defense = 85,
            speed = 80,
            special = 95,
        },

        catchRate = 60,
        baseExp = 197,
        growthRate = "SLOW",

        level1Moves = {
            "THUNDERSHOCK",
            "TACKLE",
            "LEER",
        },

        learnset = {
            { level = 6, move = "LEER" },
            { level = 11, move = "ROAR" },
            { level = 23, move = "QUICK_ATTACK" },
            { level = 30, move = "BITE" },
            { level = 40, move = "THUNDER" },
            { level = 48, move = "AGILITY" },
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
            "EARTHQUAKE",
            "FISSURE",
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
        palette = "KEP_GOROTORA",
        cry = "GOROTORA",

        spriteFront = mod.assets:path("assets/pokemon/generated/gorotora/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/gorotora/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "SHOCK CAT",
            heightFt = 5,
            heightIn = 11,
            weight = 3870,
            text = "KEP_DEX_GOROTORA",
        },
    })
end
