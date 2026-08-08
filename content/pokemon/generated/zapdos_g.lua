local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local zapdos_gChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 1, 1, 0, 0 } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 5,
                        frequency = 1919,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1951,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 2,
                        frequency = 1983,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 2015,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 2047,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 2015,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1983,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1951,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 3, 3 } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 5,
                        frequency = 1840,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1873,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1904,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1936,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1969,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1936,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1904,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1872,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 3,
                        parameter = 75,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        parameter = 43,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        parameter = 59,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        parameter = 43,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("ZAPDOS_G", {
        chip = zapdos_gChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_ZAPDOS_G", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_ZAPDOS_G", "As it runs, its\nfeathers make a\ncrackling sound.\nOne kick from its\nmighty legs can\ndemolish a truck")

    mod.content.pokemon:register("ZAPDOS_G", {
        id = "ZAPDOS_G",
        name = "ZAPDOS",
        dex = 245,

        types = {
            "FIGHTING",
            "FLYING",
        },

        baseStats = {
            hp = 90,
            attack = 125,
            defense = 90,
            speed = 100,
            special = 85,
        },

        catchRate = 3,
        baseExp = 216,
        growthRate = "SLOW",

        level1Moves = {
            "PECK",
            "FOCUS_ENERGY",
        },

        learnset = {
            { level = 45, move = "DOUBLE_KICK" },
            { level = 50, move = "LIGHT_SCREEN" },
            { level = 55, move = "LOW_KICK" },
            { level = 60, move = "AGILITY" },
            { level = 65, move = "JUMP_KICK" },
            { level = 70, move = "DRILL_PECK" },
            { level = 75, move = "ROLLING_KICK" },
            { level = 80, move = "HI_JUMP_KICK" },
        },

        evolutions = {},

        tmhm = {
            "WHIRLWIND",
            "MEGA_KICK",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "COUNTER",
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

        icon = "BIRD",
        palette = "KEP_ZAPDOS_G",
        cry = "ZAPDOS_G",

        spriteFront = mod.assets:path("assets/pokemon/generated/zapdos_g/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/zapdos_g/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "STRONGLEGS",
            heightFt = 5,
            heightIn = 3,
            weight = 1280,
            text = "KEP_DEX_ZAPDOS_G",
        },
    })
end
