local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local rapidashChip = ChipAsm.sfx({
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

    mod.content.cries:override("RAPIDASH", {
        chip = rapidashChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_RAPIDASH", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_RAPIDASH", "It dutifully obeys\na trainer it has\nbonded with. At\ntop speed, it can\nkeep pace with a\nbullet train")

    mod.content.pokemon:patch("RAPIDASH", {
        name = "RAPIDASH",
        dex = 153,

        types = {
            "FIRE",
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
            "EMBER",
            "TAIL_WHIP",
            "STOMP",
            "GROWL",
        },

        learnset = {
            { level = 7, move = "QUICK_ATTACK" },
            { level = 14, move = "GROWL" },
            { level = 24, move = "STOMP" },
            { level = 31, move = "FLAMETHROWER" },
            { level = 37, move = "AGILITY" },
            { level = 46, move = "FIRE_SPIN" },
            { level = 52, move = "TAKE_DOWN" },
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
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "FIRE_BLAST",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
        },

        icon = "QUADRUPED",
        palette = "KEP_RAPIDASH",
        cry = "RAPIDASH",

        spriteFront = mod.assets:path("assets/pokemon/generated/rapidash/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/rapidash/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "FIRE HORSE",
            heightFt = 5,
            heightIn = 7,
            weight = 2090,
            text = "KEP_DEX_RAPIDASH",
        },
    })
end
