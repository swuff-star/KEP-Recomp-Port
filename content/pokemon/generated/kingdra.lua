local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local kingdraChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 1, 0, 1 } },
                    { squareNote = {
                        len = 13,
                        volume = 15,
                        fade = 2,
                        frequency = 673,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 0,
                        frequency = 683,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 0,
                        frequency = 1707,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 0,
                        frequency = 1691,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1419,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 13,
                        volume = 11,
                        fade = 2,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 0,
                        parameter = 91,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 10,
                        fade = 0,
                        parameter = 86,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        parameter = 87,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("KINGDRA", {
        chip = kingdraChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_KINGDRA", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_KINGDRA", "Lives in caves on\nthe seafloor. A\nsimple yawn from\nthis POKéMON is\nenough to create\na huge whirlpool")

    mod.content.pokemon:register("KINGDRA", {
        id = "KINGDRA",
        name = "KINGDRA",
        dex = 179,

        types = {
            "WATER",
            "DRAGON",
        },

        baseStats = {
            hp = 75,
            attack = 95,
            defense = 95,
            speed = 85,
            special = 95,
        },

        catchRate = 45,
        baseExp = 207,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "BUBBLE",
            "SMOKESCREEN",
            "LEER",
        },

        learnset = {
            { level = 19, move = "SMOKESCREEN" },
            { level = 24, move = "LEER" },
            { level = 30, move = "WATER_GUN" },
            { level = 32, move = "PIN_MISSILE" },
            { level = 36, move = "QUICK_ATTACK" },
            { level = 41, move = "AGILITY" },
            { level = 52, move = "HYDRO_PUMP" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "RAGE",
            "DRAGON_RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "SURF",
        },

        icon = "WATER",
        palette = "KEP_KINGDRA",
        cry = "KINGDRA",

        spriteFront = mod.assets:path("assets/pokemon/generated/kingdra/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/kingdra/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "DRAGON",
            heightFt = 5,
            heightIn = 11,
            weight = 3350,
            text = "KEP_DEX_KINGDRA",
        },
    })
end
