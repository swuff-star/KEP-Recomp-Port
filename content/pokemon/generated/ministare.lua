local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local ministareChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 2,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1728,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1712,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 5,
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1664,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 7,
                        frequency = 1985,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        frequency = 1984,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1665,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1650,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1633,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1602,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 14,
                        fade = 4,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        parameter = 124,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 7,
                        parameter = 156,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 157,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("MINISTARE", {
        chip = ministareChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_MINISTARE", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MINISTARE", "Often climbs atop\nbranches to feast\non foliage. When\nunder attack, it\nstuns foes with an\nunnerving GLARE")

    mod.content.pokemon:register("MINISTARE", {
        id = "MINISTARE",
        name = "MINISTARE",
        dex = 237,

        types = {
            "DRAGON",
        },

        baseStats = {
            hp = 72,
            attack = 53,
            defense = 46,
            speed = 98,
            special = 81,
        },

        catchRate = 45,
        baseExp = 144,
        growthRate = "SLOW",

        level1Moves = {
            "SCRATCH",
            "TAIL_WHIP",
            "LEER",
        },

        learnset = {
            { level = 10, move = "LEER" },
            { level = 20, move = "BITE" },
            { level = 35, move = "GLARE" },
            { level = 45, move = "DRAGON_RAGE" },
            { level = 55, move = "SLASH" },
        },

        evolutions = {
            { method = "LEVEL", level = 55, species = "IGUANARCH" },
        },

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "RAGE",
            "DRAGON_RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "CUT",
            "SURF",
            "STRENGTH",
        },

        icon = "MON",
        palette = "KEP_MINISTARE",
        cry = "MINISTARE",

        spriteFront = mod.assets:path("assets/pokemon/generated/ministare/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/ministare/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "IGUANA",
            heightFt = 4,
            heightIn = 7,
            weight = 550,
            text = "KEP_DEX_MINISTARE",
        },
    })
end
