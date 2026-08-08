local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local pidgeotChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        frequency = 1953,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 5,
                        frequency = 2001,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 2025,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 11,
                        volume = 12,
                        fade = 4,
                        frequency = 1922,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 6,
                        frequency = 1971,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1992,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 93,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 12,
                        fade = 4,
                        parameter = 77,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 61,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("PIDGEOT", {
        chip = pidgeotChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_PIDGEOT", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PIDGEOT", "Flies at speeds of\nup to Mach-2. It\nspreads its broad,\ngorgeous wings\nwidely for\nintimidation")

    mod.content.pokemon:patch("PIDGEOT", {
        name = "PIDGEOT",
        dex = 28,

        types = {
            "NORMAL",
            "FLYING",
        },

        baseStats = {
            hp = 83,
            attack = 80,
            defense = 75,
            speed = 91,
            special = 70,
        },

        catchRate = 45,
        baseExp = 172,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "GUST",
            "SAND_ATTACK",
            "QUICK_ATTACK",
        },

        learnset = {
            { level = 5, move = "SAND_ATTACK" },
            { level = 12, move = "QUICK_ATTACK" },
            { level = 21, move = "WHIRLWIND" },
            { level = 31, move = "WING_ATTACK" },
            { level = 44, move = "AGILITY" },
            { level = 54, move = "MIRROR_MOVE" },
        },

        evolutions = {},

        tmhm = {
            "RAZOR_WIND",
            "WHIRLWIND",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKY_ATTACK",
            "REST",
            "SUBSTITUTE",
            "FLY",
        },

        icon = "BIRD",
        palette = "KEP_PIDGEOT",
        cry = "PIDGEOT",

        spriteFront = mod.assets:path("assets/pokemon/generated/pidgeot/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/pidgeot/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "BIRD",
            heightFt = 4,
            heightIn = 11,
            weight = 870,
            text = "KEP_DEX_PIDGEOT",
        },
    })
end
