local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local vulpiiiChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 2016,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 96,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 32,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1760,
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
                        frequency = 1985,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1985,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 6,
                        fade = 2,
                        frequency = 1889,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1729,
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
                        parameter = 18,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 1,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        parameter = 241,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("VULPIII", {
        chip = vulpiiiChip.chip,
        pitch = 0,
        length = 96,
    })

    mod.content.palettes:register("KEP_VULPIII", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_VULPIII", "While young, it\nhas three soft,\ngorgeous tails.\nMore tails form\nthe older it\nbecomes")

    mod.content.pokemon:register("VULPIII", {
        id = "VULPIII",
        name = "VULPIII",
        dex = 74,

        types = {
            "FIRE",
        },

        baseStats = {
            hp = 28,
            attack = 31,
            defense = 30,
            speed = 60,
            special = 60,
        },

        catchRate = 255,
        baseExp = 53,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "EMBER",
            "TAIL_WHIP",
        },

        learnset = {
            { level = 7, move = "QUICK_ATTACK" },
            { level = 14, move = "ROAR" },
            { level = 19, move = "DOUBLE_TEAM" },
            { level = 25, move = "CONFUSE_RAY" },
            { level = 31, move = "FLAMETHROWER" },
            { level = 38, move = "FIRE_SPIN" },
        },

        evolutions = {
            { method = "LEVEL", level = 15, species = "VULPIX" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "DIG",
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
        palette = "KEP_VULPIII",
        cry = "VULPIII",

        spriteFront = mod.assets:path("assets/pokemon/generated/vulpiii/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/vulpiii/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "FOX",
            heightFt = 1,
            heightIn = 4,
            weight = 120,
            text = "KEP_DEX_VULPIII",
        },
    })
end
