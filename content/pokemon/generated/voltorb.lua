local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local voltorbChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 2, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 3,
                        frequency = 820,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 6,
                        fade = 2,
                        frequency = 787,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 5,
                        fade = 2,
                        frequency = 818,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 6,
                        fade = 3,
                        frequency = 755,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 8,
                        fade = 2,
                        frequency = 786,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 4,
                        fade = 2,
                        frequency = 756,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 4,
                        parameter = 121,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 2,
                        parameter = 137,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 6,
                        parameter = 121,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 153,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        parameter = 137,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        parameter = 153,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("VOLTORB", {
        chip = voltorbChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_VOLTORB", {
        { 255, 255, 255 },
        { 255, 140, 0 },
        { 255, 0, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_VOLTORB", "Sometimes migrates\nto urban areas by\ntraveling on\npower lines. It\ntends to explode\nwithout warning")

    mod.content.pokemon:patch("VOLTORB", {
        name = "VOLTORB",
        dex = 129,

        types = {
            "ELECTRIC",
        },

        baseStats = {
            hp = 40,
            attack = 30,
            defense = 50,
            speed = 100,
            special = 55,
        },

        catchRate = 190,
        baseExp = 103,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "SCREECH",
        },

        learnset = {
            { level = 17, move = "SONICBOOM" },
            { level = 22, move = "SELFDESTRUCT" },
            { level = 29, move = "LIGHT_SCREEN" },
            { level = 36, move = "SWIFT" },
            { level = 43, move = "EXPLOSION" },
        },

        evolutions = {
            { method = "LEVEL", level = 30, species = "ELECTRODE" },
        },

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SELFDESTRUCT",
            "SWIFT",
            "REST",
            "THUNDER_WAVE",
            "EXPLOSION",
            "SUBSTITUTE",
            "FLASH",
        },

        icon = "BALL",
        palette = "KEP_VOLTORB",
        cry = "VOLTORB",

        spriteFront = mod.assets:path("assets/pokemon/generated/voltorb/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/voltorb/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "BALL",
            heightFt = 1,
            heightIn = 8,
            weight = 230,
            text = "KEP_DEX_VOLTORB",
        },
    })
end
