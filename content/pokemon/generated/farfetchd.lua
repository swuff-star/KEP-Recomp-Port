local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local farfetchdChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 2, 1 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 7,
                        frequency = 1885,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 7,
                        frequency = 1853,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 14,
                        fade = 7,
                        frequency = 1821,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 14,
                        fade = 7,
                        frequency = 1789,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 1,
                        frequency = 1757,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 7,
                        frequency = 29,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 10,
                        fade = 7,
                        frequency = 13,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 9,
                        fade = 1,
                        frequency = 2045,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 3, 2, 1 } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 7,
                        frequency = 1887,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 14,
                        fade = 7,
                        frequency = 1855,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 7,
                        frequency = 1823,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 7,
                        frequency = 1791,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 1,
                        frequency = 1759,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 7,
                        frequency = 31,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 7,
                        frequency = 15,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 8,
                        fade = 1,
                        frequency = 2047,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 5,
                        volume = 7,
                        fade = 4,
                        parameter = 254,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 7,
                        fade = 4,
                        parameter = 237,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 7,
                        fade = 1,
                        parameter = 253,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("FARFETCHD", {
        chip = farfetchdChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_FARFETCHD", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_FARFETCHD", "The FARFETCH'D\npopulation has\ndeclined due to\nbeing hunted for\nits tasty meat\nand leek")

    mod.content.pokemon:patch("FARFETCHD", {
        name = "FARFETCH'D",
        dex = 113,

        types = {
            "NORMAL",
            "FLYING",
        },

        baseStats = {
            hp = 52,
            attack = 65,
            defense = 55,
            speed = 60,
            special = 58,
        },

        catchRate = 45,
        baseExp = 94,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "PECK",
            "SAND_ATTACK",
        },

        learnset = {
            { level = 7, move = "LEER" },
            { level = 15, move = "FURY_ATTACK" },
            { level = 23, move = "SWORDS_DANCE" },
            { level = 31, move = "AGILITY" },
            { level = 39, move = "SLASH" },
        },

        evolutions = {
            { method = "LEVEL", level = 24, species = "LUXWAN" },
        },

        tmhm = {
            "RAZOR_WIND",
            "SWORDS_DANCE",
            "WHIRLWIND",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
            "FLY",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/smallbird.png"),
            frames = 2,
        },
        palette = "KEP_FARFETCHD",
        cry = "FARFETCHD",

        spriteFront = mod.assets:path("assets/pokemon/generated/farfetchd/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/farfetchd/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "WILD DUCK",
            heightFt = 2,
            heightIn = 7,
            weight = 330,
            text = "KEP_DEX_FARFETCHD",
        },
    })
end
