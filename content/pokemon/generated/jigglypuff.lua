local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local jigglypuffChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 2047,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 127,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 63,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1791,
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
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 6,
                        fade = 2,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1760,
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
                        parameter = 49,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 32,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        parameter = 16,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("JIGGLYPUFF", {
        chip = jigglypuffChip.chip,
        pitch = 0,
        length = 53,
    })

    mod.content.palettes:register("KEP_JIGGLYPUFF", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_JIGGLYPUFF", "It uses its huge\neyes to draw in\nfoes before\nsinging them to\nsleep. It puffs\nup when angered")

    mod.content.pokemon:patch("JIGGLYPUFF", {
        name = "JIGGLYPUFF",
        dex = 67,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 115,
            attack = 45,
            defense = 20,
            speed = 20,
            special = 25,
        },

        catchRate = 170,
        baseExp = 76,
        growthRate = "FAST",

        level1Moves = {
            "SING",
            "BIDE",
            "POUND",
        },

        learnset = {
            { level = 9, move = "COUNTER" },
            { level = 14, move = "DISABLE" },
            { level = 19, move = "DEFENSE_CURL" },
            { level = 24, move = "DOUBLESLAP" },
            { level = 29, move = "REST" },
            { level = 34, move = "BODY_SLAM" },
            { level = 39, move = "TAKE_DOWN" },
            { level = 44, move = "DOUBLE_EDGE" },
        },

        evolutions = {
            { method = "ITEM", item = "MOON_STONE", species = "WIGGLYTUFF" },
        },

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
        palette = "KEP_JIGGLYPUFF",
        cry = "JIGGLYPUFF",

        spriteFront = mod.assets:path("assets/pokemon/generated/jigglypuff/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/jigglypuff/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "BALLOON",
            heightFt = 1,
            heightIn = 8,
            weight = 120,
            text = "KEP_DEX_JIGGLYPUFF",
        },
    })
end
