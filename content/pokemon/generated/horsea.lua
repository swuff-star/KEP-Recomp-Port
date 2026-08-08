local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local horseaChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 2, 3 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 2,
                        frequency = 2009,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 5,
                        frequency = 2041,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 1,
                        frequency = 1993,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1993,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 0, 0, 1 } },
                    { squareNote = {
                        len = 3,
                        volume = 12,
                        fade = 2,
                        frequency = 1946,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1953,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 2010,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1946,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 2,
                        frequency = 1946,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("HORSEA", {
        chip = horseaChip.chip,
        pitch = 0,
        length = 16,
    })

    mod.content.palettes:register("KEP_HORSEA", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_HORSEA", "Spits black ink\nwhen threatened.\nIt lays thousands\nof eggs in spring\nbut many are\neaten by GOLDEEN")

    mod.content.pokemon:patch("HORSEA", {
        name = "HORSEA",
        dex = 177,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 30,
            attack = 40,
            defense = 70,
            speed = 60,
            special = 70,
        },

        catchRate = 225,
        baseExp = 83,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "BUBBLE",
        },

        learnset = {
            { level = 19, move = "SMOKESCREEN" },
            { level = 24, move = "LEER" },
            { level = 30, move = "WATER_GUN" },
            { level = 37, move = "AGILITY" },
            { level = 45, move = "HYDRO_PUMP" },
        },

        evolutions = {
            { method = "LEVEL", level = 32, species = "SEADRA" },
        },

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "RAGE",
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
        palette = "KEP_HORSEA",
        cry = "HORSEA",

        spriteFront = mod.assets:path("assets/pokemon/generated/horsea/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/horsea/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "DRAGON",
            heightFt = 1,
            heightIn = 4,
            weight = 180,
            text = "KEP_DEX_HORSEA",
        },
    })
end
