local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local pidgeottoChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        frequency = 1976,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 5,
                        frequency = 2024,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 0,
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
                        frequency = 1945,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 6,
                        frequency = 1994,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 2015,
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
                        parameter = 116,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 12,
                        fade = 4,
                        parameter = 100,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 84,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("PIDGEOTTO", {
        chip = pidgeottoChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_PIDGEOTTO", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PIDGEOTTO", "Dives from heights\nof 900 yards to\ncatch prey. Its\ndeveloped talons\nlet it easily\ncarry EXEGGCUTE")

    mod.content.pokemon:patch("PIDGEOTTO", {
        name = "PIDGEOTTO",
        dex = 27,

        types = {
            "NORMAL",
            "FLYING",
        },

        baseStats = {
            hp = 63,
            attack = 60,
            defense = 55,
            speed = 71,
            special = 50,
        },

        catchRate = 120,
        baseExp = 113,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "GUST",
            "SAND_ATTACK",
        },

        learnset = {
            { level = 5, move = "SAND_ATTACK" },
            { level = 12, move = "QUICK_ATTACK" },
            { level = 21, move = "WHIRLWIND" },
            { level = 31, move = "WING_ATTACK" },
            { level = 40, move = "AGILITY" },
            { level = 49, move = "MIRROR_MOVE" },
        },

        evolutions = {
            { method = "LEVEL", level = 36, species = "PIDGEOT" },
        },

        tmhm = {
            "RAZOR_WIND",
            "WHIRLWIND",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
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

        icon = {
            image = mod.assets:path("assets/icons/generated/smallbird.png"),
            frames = 2,
        },
        palette = "KEP_PIDGEOTTO",
        cry = "PIDGEOTTO",

        spriteFront = mod.assets:path("assets/pokemon/generated/pidgeotto/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/pidgeotto/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "BIRD",
            heightFt = 3,
            heightIn = 7,
            weight = 660,
            text = "KEP_DEX_PIDGEOTTO",
        },
    })
end
