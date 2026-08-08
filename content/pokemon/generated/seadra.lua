local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local seadraChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 1, 2, 3 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 2,
                        frequency = 1916,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 5,
                        frequency = 1948,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 1,
                        frequency = 1900,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1900,
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
                        frequency = 1853,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 2,
                        frequency = 1860,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 1917,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1853,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 2,
                        frequency = 1853,
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

    mod.content.cries:override("SEADRA", {
        chip = seadraChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_SEADRA", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SEADRA", "A vicious POKéMON.\nSEADRA's sharp,\nvenomous spikes\nare so painful to\ntouch, they can\ncause fainting")

    mod.content.pokemon:patch("SEADRA", {
        name = "SEADRA",
        dex = 178,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 55,
            attack = 65,
            defense = 95,
            speed = 85,
            special = 95,
        },

        catchRate = 75,
        baseExp = 155,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "BUBBLE",
            "SMOKESCREEN",
        },

        learnset = {
            { level = 19, move = "SMOKESCREEN" },
            { level = 24, move = "LEER" },
            { level = 30, move = "WATER_GUN" },
            { level = 32, move = "PIN_MISSILE" },
            { level = 41, move = "AGILITY" },
            { level = 52, move = "HYDRO_PUMP" },
        },

        evolutions = {
            { method = "TRADE", species = "KINGDRA" },
        },

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
        palette = "KEP_SEADRA",
        cry = "SEADRA",

        spriteFront = mod.assets:path("assets/pokemon/generated/seadra/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/seadra/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "DRAGON",
            heightFt = 3,
            heightIn = 11,
            weight = 550,
            text = "KEP_DEX_SEADRA",
        },
    })
end
