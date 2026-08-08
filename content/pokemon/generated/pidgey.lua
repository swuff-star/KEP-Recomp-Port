local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local pidgeyChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 2015,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 95,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 31,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1759,
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
                        frequency = 1984,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1984,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 6,
                        fade = 2,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1728,
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
                        parameter = 17,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 0,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        parameter = 240,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("PIDGEY", {
        chip = pidgeyChip.chip,
        pitch = 0,
        length = 4,
    })

    mod.content.palettes:register("KEP_PIDGEY", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PIDGEY", "Does not like to\nfight. It prefers\nto hide in tall\ngrass, feeding on\nbugs like CATERPIE\nand GENTLARVA")

    mod.content.pokemon:patch("PIDGEY", {
        name = "PIDGEY",
        dex = 26,

        types = {
            "NORMAL",
            "FLYING",
        },

        baseStats = {
            hp = 40,
            attack = 45,
            defense = 40,
            speed = 56,
            special = 35,
        },

        catchRate = 255,
        baseExp = 55,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "GUST",
        },

        learnset = {
            { level = 5, move = "SAND_ATTACK" },
            { level = 12, move = "QUICK_ATTACK" },
            { level = 19, move = "WHIRLWIND" },
            { level = 28, move = "WING_ATTACK" },
            { level = 36, move = "AGILITY" },
            { level = 44, move = "MIRROR_MOVE" },
        },

        evolutions = {
            { method = "LEVEL", level = 18, species = "PIDGEOTTO" },
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
        palette = "KEP_PIDGEY",
        cry = "PIDGEY",

        spriteFront = mod.assets:path("assets/pokemon/generated/pidgey/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/pidgey/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "TINY BIRD",
            heightFt = 1,
            heightIn = 0,
            weight = 40,
            text = "KEP_DEX_PIDGEY",
        },
    })
end
