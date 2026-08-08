local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local tangelaChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 13,
                        volume = 15,
                        fade = 2,
                        frequency = 1088,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 3,
                        frequency = 1184,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 2,
                        frequency = 1168,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1152,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 2, 3, 2 } },
                    { squareNote = {
                        len = 12,
                        volume = 13,
                        fade = 2,
                        frequency = 1080,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 6,
                        frequency = 1176,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1160,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1144,
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
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        parameter = 92,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 92,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("TANGELA", {
        chip = tangelaChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_TANGELA", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_TANGELA", "Researchers have\ntried to reveal\nTANGELA's true\nform, but all\nfail due to its\nresistance")

    mod.content.pokemon:patch("TANGELA", {
        name = "TANGELA",
        dex = 171,

        types = {
            "GRASS",
        },

        baseStats = {
            hp = 65,
            attack = 55,
            defense = 115,
            speed = 60,
            special = 100,
        },

        catchRate = 45,
        baseExp = 166,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "CONSTRICT",
            "BIND",
        },

        learnset = {
            { level = 13, move = "BIND" },
            { level = 19, move = "ABSORB" },
            { level = 24, move = "VINE_WHIP" },
            { level = 28, move = "POISONPOWDER" },
            { level = 31, move = "STUN_SPORE" },
            { level = 34, move = "SLEEP_POWDER" },
            { level = 40, move = "SLAM" },
            { level = 46, move = "GROWTH" },
            { level = 52, move = "NIGHT_SHADE" },
        },

        evolutions = {
            { method = "LEVEL", level = 44, species = "TANGROWTH" },
        },

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
        },

        icon = "GRASS",
        palette = "KEP_TANGELA",
        cry = "TANGELA",

        spriteFront = mod.assets:path("assets/pokemon/generated/tangela/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/tangela/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "VINE",
            heightFt = 3,
            heightIn = 3,
            weight = 770,
            text = "KEP_DEX_TANGELA",
        },
    })
end
