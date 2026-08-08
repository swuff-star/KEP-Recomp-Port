local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local spearowChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 0, 2, 1 } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 7,
                        frequency = 1664,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 15,
                        fade = 7,
                        frequency = 1632,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 14,
                        fade = 7,
                        frequency = 1600,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 14,
                        fade = 7,
                        frequency = 1568,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 1,
                        frequency = 1536,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 7,
                        frequency = 1856,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 10,
                        fade = 7,
                        frequency = 1840,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 9,
                        fade = 1,
                        frequency = 1824,
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
                        frequency = 1666,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 14,
                        fade = 7,
                        frequency = 1634,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 7,
                        frequency = 1602,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 13,
                        fade = 7,
                        frequency = 1570,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 1,
                        frequency = 1538,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 7,
                        frequency = 1858,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 7,
                        frequency = 1842,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 8,
                        fade = 1,
                        frequency = 1826,
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
                        parameter = 33,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 7,
                        fade = 4,
                        parameter = 16,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 7,
                        fade = 1,
                        parameter = 32,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("SPEAROW", {
        chip = spearowChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_SPEAROW", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SPEAROW", "More aggressive\nthan PIDGEY. It\nbusily flits about\nin tall grass,\nsearching for\ninsects to eat")

    mod.content.pokemon:patch("SPEAROW", {
        name = "SPEAROW",
        dex = 46,

        types = {
            "NORMAL",
            "FLYING",
        },

        baseStats = {
            hp = 40,
            attack = 60,
            defense = 30,
            speed = 70,
            special = 31,
        },

        catchRate = 255,
        baseExp = 58,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "PECK",
            "GROWL",
        },

        learnset = {
            { level = 5, move = "RAGE" },
            { level = 9, move = "LEER" },
            { level = 15, move = "FURY_ATTACK" },
            { level = 22, move = "MIRROR_MOVE" },
            { level = 29, move = "DRILL_PECK" },
            { level = 36, move = "AGILITY" },
            { level = 43, move = "TAKE_DOWN" },
            { level = 50, move = "WHIRLWIND" },
        },

        evolutions = {
            { method = "LEVEL", level = 20, species = "FEAROW" },
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
        palette = "KEP_SPEAROW",
        cry = "SPEAROW",

        spriteFront = mod.assets:path("assets/pokemon/generated/spearow/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/spearow/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "TINY BIRD",
            heightFt = 1,
            heightIn = 0,
            weight = 40,
            text = "KEP_DEX_SPEAROW",
        },
    })
end
