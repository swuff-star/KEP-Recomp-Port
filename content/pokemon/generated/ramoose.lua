local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local ramooseChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 3,
                        frequency = 1984,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 7,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 3,
                        frequency = 1872,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 2,
                        frequency = 1840,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1824,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 1857,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 11,
                        fade = 7,
                        frequency = 1729,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 11,
                        fade = 3,
                        frequency = 1746,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 2,
                        frequency = 1729,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 2,
                        frequency = 1714,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1697,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 3,
                        parameter = 156,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 13,
                        fade = 6,
                        parameter = 140,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 12,
                        fade = 6,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 11,
                        fade = 3,
                        parameter = 140,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 10,
                        fade = 2,
                        parameter = 156,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        parameter = 172,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("RAMOOSE", {
        chip = ramooseChip.chip,
        pitch = 0,
        length = 165,
    })

    mod.content.palettes:register("KEP_RAMOOSE", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_RAMOOSE", "It wildly swings\nits huge antlers\nto deter threats.\nHowever, these\nantlers are highly\nprized by hunters")

    mod.content.pokemon:register("RAMOOSE", {
        id = "RAMOOSE",
        name = "RAMOOSE",
        dex = 173,

        types = {
            "NORMAL",
            "GRASS",
        },

        baseStats = {
            hp = 85,
            attack = 110,
            defense = 85,
            speed = 60,
            special = 90,
        },

        catchRate = 45,
        baseExp = 165,
        growthRate = "SLOW",

        level1Moves = {
            "TACKLE",
        },

        learnset = {
            { level = 14, move = "SAND_ATTACK" },
            { level = 16, move = "JUMP_KICK" },
            { level = 18, move = "CONFUSION" },
            { level = 22, move = "RAZOR_LEAF" },
            { level = 26, move = "SUPERSONIC" },
            { level = 33, move = "QUICK_ATTACK" },
            { level = 37, move = "LEER" },
            { level = 41, move = "AGILITY" },
            { level = 45, move = "THRASH" },
            { level = 50, move = "GROWTH" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "SUBSTITUTE",
            "STRENGTH",
            "FLASH",
        },

        icon = "QUADRUPED",
        palette = "KEP_RAMOOSE",
        cry = "RAMOOSE",

        spriteFront = mod.assets:path("assets/pokemon/generated/ramoose/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/ramoose/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "BIG HORN",
            heightFt = 4,
            heightIn = 11,
            weight = 1230,
            text = "KEP_DEX_RAMOOSE",
        },
    })
end
