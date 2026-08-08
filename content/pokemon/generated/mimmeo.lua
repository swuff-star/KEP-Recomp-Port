local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local mimmeoChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 1,
                        frequency = 1872,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 2,
                        frequency = 2000,
                    } },
                    { squareNote = {
                        len = 3,
                        volume = 9,
                        fade = 2,
                        frequency = 1936,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 1,
                        frequency = 1616,
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
                        frequency = 1841,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1841,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 6,
                        fade = 2,
                        frequency = 1745,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1585,
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
                        parameter = 130,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 6,
                        fade = 1,
                        parameter = 113,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        parameter = 97,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("MIMMEO", {
        chip = mimmeoChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_MIMMEO", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MIMMEO", "A sudden mutation\nof DITTO, its\nmimicry skills\nhave improved. It\ncan copy anything\nin an instant")

    mod.content.pokemon:register("MIMMEO", {
        id = "MIMMEO",
        name = "MIMMEO",
        dex = 221,

        types = {
            "STEEL",
        },

        baseStats = {
            hp = 100,
            attack = 55,
            defense = 50,
            speed = 150,
            special = 50,
        },

        catchRate = 35,
        baseExp = 161,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TRANSFORM",
        },

        learnset = {
            { level = 30, move = "MIST" },
            { level = 40, move = "LIGHT_SCREEN" },
            { level = 50, move = "REFLECT" },
        },

        evolutions = {},

        tmhm = {},

        icon = "MON",
        palette = "KEP_MIMMEO",
        cry = "MIMMEO",

        spriteFront = mod.assets:path("assets/pokemon/generated/mimmeo/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/mimmeo/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "TRANSFORM",
            heightFt = 2,
            heightIn = 0,
            weight = 360,
            text = "KEP_DEX_MIMMEO",
        },
    })
end
