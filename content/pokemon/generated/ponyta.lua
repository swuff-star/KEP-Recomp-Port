local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local ponytaChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 4,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 3,
                        frequency = 1840,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 4,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 3,
                        frequency = 1864,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1872,
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
                        frequency = 1810,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        frequency = 1796,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 1810,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1842,
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
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 6,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 11,
                        fade = 6,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 28,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("PONYTA", {
        chip = ponytaChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_PONYTA", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PONYTA", "With its light\nbody and powerful\nlegs, PONYTA can\nclear the SILPH\nCO. building in\na single leap")

    mod.content.pokemon:patch("PONYTA", {
        name = "PONYTA",
        dex = 152,

        types = {
            "FIRE",
        },

        baseStats = {
            hp = 50,
            attack = 85,
            defense = 55,
            speed = 90,
            special = 65,
        },

        catchRate = 190,
        baseExp = 152,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "EMBER",
            "TAIL_WHIP",
        },

        learnset = {
            { level = 7, move = "QUICK_ATTACK" },
            { level = 14, move = "GROWL" },
            { level = 24, move = "STOMP" },
            { level = 31, move = "FLAMETHROWER" },
            { level = 37, move = "AGILITY" },
            { level = 43, move = "FIRE_SPIN" },
            { level = 47, move = "TAKE_DOWN" },
        },

        evolutions = {
            { method = "LEVEL", level = 40, species = "RAPIDASH" },
        },

        tmhm = {
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
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
        palette = "KEP_PONYTA",
        cry = "PONYTA",

        spriteFront = mod.assets:path("assets/pokemon/generated/ponyta/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/ponyta/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "FIRE HORSE",
            heightFt = 3,
            heightIn = 3,
            weight = 660,
            text = "KEP_DEX_PONYTA",
        },
    })
end
