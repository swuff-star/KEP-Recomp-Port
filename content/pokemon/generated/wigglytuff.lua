local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local wigglytuffChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1896,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 2024,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 1960,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1640,
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
                        volume = 11,
                        fade = 1,
                        frequency = 1865,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1865,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 6,
                        fade = 2,
                        frequency = 1769,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1609,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 154,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 137,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        parameter = 121,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("WIGGLYTUFF", {
        chip = wigglytuffChip.chip,
        pitch = 0,
        length = 96,
    })

    mod.content.palettes:register("KEP_WIGGLYTUFF", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_WIGGLYTUFF", "WIGGLYTUFF's dense\nand supple fur is\nsold as a luxury\nitem to a large\nnumber of rich,\nforeign buyers")

    mod.content.pokemon:patch("WIGGLYTUFF", {
        name = "WIGGLYTUFF",
        dex = 68,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 140,
            attack = 70,
            defense = 45,
            speed = 45,
            special = 50,
        },

        catchRate = 50,
        baseExp = 109,
        growthRate = "FAST",

        level1Moves = {
            "SING",
            "DISABLE",
            "DEFENSE_CURL",
            "DOUBLESLAP",
        },

        learnset = {},

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "SOLARBEAM",
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "STRENGTH",
            "FLASH",
        },

        icon = "FAIRY",
        palette = "KEP_WIGGLYTUFF",
        cry = "WIGGLYTUFF",

        spriteFront = mod.assets:path("assets/pokemon/generated/wigglytuff/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/wigglytuff/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "BALLOON",
            heightFt = 3,
            heightIn = 3,
            weight = 260,
            text = "KEP_DEX_WIGGLYTUFF",
        },
    })
end
