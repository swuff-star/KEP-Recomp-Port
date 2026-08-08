local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local balumbaChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1536,
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
                        frequency = 1761,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1761,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 6,
                        fade = 2,
                        frequency = 1665,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1505,
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
                        parameter = 50,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 33,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        parameter = 17,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("BALUMBA", {
        chip = balumbaChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_BALUMBA", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_BALUMBA", "Often mistaken\nfor an ordinary\nballoon. If its\ntail is grabbed,\nit will let out a\nshrill screech")

    mod.content.pokemon:register("BALUMBA", {
        id = "BALUMBA",
        name = "BALUMBA",
        dex = 162,

        types = {
            "FAIRY",
            "FLYING",
        },

        baseStats = {
            hp = 90,
            attack = 50,
            defense = 30,
            speed = 125,
            special = 100,
        },

        catchRate = 45,
        baseExp = 137,
        growthRate = "FAST",

        level1Moves = {
            "FAIRY_WIND",
            "GROWL",
            "DRAININGKISS",
        },

        learnset = {
            { level = 16, move = "DISARMING_VOICE" },
            { level = 25, move = "SWEET_KISS" },
            { level = 31, move = "CONFUSE_RAY" },
            { level = 37, move = "CHARM" },
            { level = 43, move = "DAZZLE_GLEAM" },
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
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SELFDESTRUCT",
            "SWIFT",
            "SKULL_BASH",
            "DREAM_EATER",
            "REST",
            "PSYWAVE",
            "EXPLOSION",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "FLY",
            "FLASH",
        },

        icon = "BALL",
        palette = "KEP_BALUMBA",
        cry = "BALUMBA",

        spriteFront = mod.assets:path("assets/pokemon/generated/balumba/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/balumba/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "BALLOON",
            heightFt = 1,
            heightIn = 4,
            weight = 10,
            text = "KEP_DEX_BALUMBA",
        },
    })
end
