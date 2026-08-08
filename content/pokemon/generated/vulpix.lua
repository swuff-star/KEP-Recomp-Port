local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local vulpixChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 1743,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 6,
                        frequency = 1747,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 1759,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 5,
                        frequency = 1759,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 4,
                        frequency = 1751,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 13,
                        fade = 3,
                        frequency = 1727,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1711,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1679,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 7,
                        frequency = 1680,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 9,
                        fade = 6,
                        frequency = 1681,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 7,
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 5,
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 9,
                        fade = 4,
                        frequency = 1686,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 10,
                        fade = 3,
                        frequency = 1664,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1649,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 1616,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 16,
                        volume = 14,
                        fade = 4,
                        parameter = 139,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 7,
                        parameter = 155,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 7,
                        parameter = 139,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 11,
                        fade = 7,
                        parameter = 155,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        parameter = 171,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("VULPIX", {
        chip = vulpixChip.chip,
        pitch = 0,
        length = 16,
    })

    mod.content.palettes:register("KEP_VULPIX", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_VULPIX", "three tails split\ninto six. This\nPOKéMON is often\nthought to be\nrelated to foxes")

    mod.content.pokemon:patch("VULPIX", {
        name = "VULPIX",
        dex = 75,

        types = {
            "FIRE",
        },

        baseStats = {
            hp = 38,
            attack = 41,
            defense = 40,
            speed = 65,
            special = 65,
        },

        catchRate = 190,
        baseExp = 63,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "EMBER",
            "TAIL_WHIP",
        },

        learnset = {
            { level = 7, move = "QUICK_ATTACK" },
            { level = 14, move = "ROAR" },
            { level = 21, move = "DOUBLE_TEAM" },
            { level = 28, move = "CONFUSE_RAY" },
            { level = 35, move = "FLAMETHROWER" },
            { level = 42, move = "FIRE_SPIN" },
        },

        evolutions = {
            { method = "ITEM", item = "FIRE_STONE", species = "NINETALES" },
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
        palette = "KEP_VULPIX",
        cry = "VULPIX",

        spriteFront = mod.assets:path("assets/pokemon/generated/vulpix/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/vulpix/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "FOX",
            heightFt = 2,
            heightIn = 0,
            weight = 220,
            text = "KEP_DEX_VULPIX",
        },
    })
end
