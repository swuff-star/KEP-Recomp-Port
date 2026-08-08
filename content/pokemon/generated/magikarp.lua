local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local magikarpChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 0, 3, 3 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 1408,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 7,
                        frequency = 1416,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 1280,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1248,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 15,
                        volume = 13,
                        fade = 7,
                        frequency = 1281,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 7,
                        frequency = 1289,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 11,
                        fade = 4,
                        frequency = 1153,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1121,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 15,
                        volume = 15,
                        fade = 7,
                        parameter = 252,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 15,
                        fade = 6,
                        parameter = 236,
                    } },
                    { noiseNote = {
                        len = 10,
                        volume = 14,
                        fade = 4,
                        parameter = 252,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        parameter = 236,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("MAGIKARP", {
        chip = magikarpChip.chip,
        pitch = 0,
        length = 0,
    })

    mod.content.palettes:register("KEP_MAGIKARP", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MAGIKARP", "Virtually hopeless\nin both power\nand speed. Recent\nstudies have found\ndragon cells in\nits body, however")

    mod.content.pokemon:patch("MAGIKARP", {
        name = "MAGIKARP",
        dex = 89,

        types = {
            "WATER",
        },

        baseStats = {
            hp = 20,
            attack = 10,
            defense = 55,
            speed = 80,
            special = 20,
        },

        catchRate = 255,
        baseExp = 20,
        growthRate = "SLOW",

        level1Moves = {
            "SPLASH",
        },

        learnset = {
            { level = 15, move = "TACKLE" },
        },

        evolutions = {
            { method = "LEVEL", level = 20, species = "GYARADOS" },
        },

        tmhm = {
            "DRAGON_RAGE",
        },

        icon = "WATER",
        palette = "KEP_MAGIKARP",
        cry = "MAGIKARP",

        spriteFront = mod.assets:path("assets/pokemon/generated/magikarp/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/magikarp/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "FISH",
            heightFt = 2,
            heightIn = 11,
            weight = 220,
            text = "KEP_DEX_MAGIKARP",
        },
    })
end
