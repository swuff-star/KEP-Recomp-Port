local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local magnemiteChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 6,
                        frequency = 97,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 6,
                        frequency = 98,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 6,
                        frequency = 97,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 96,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 98,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 97,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 6,
                        frequency = 96,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 95,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 73,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 3,
                        frequency = 71,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 12,
                        fade = 4,
                        frequency = 67,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 71,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 73,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 69,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 14,
                        volume = 1,
                        fade = -1,
                        parameter = 252,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 15,
                        fade = 7,
                        parameter = 12,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 252,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 236,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        parameter = 220,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("MAGNEMITE", {
        chip = magnemiteChip.chip,
        pitch = 0,
        length = 96,
    })

    mod.content.palettes:register("KEP_MAGNEMITE", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MAGNEMITE", "Uses anti-gravity\nto stay suspended.\nThe magnets on\nits sides radiate\nstrange electro-\nmagnetic waves")

    mod.content.pokemon:patch("MAGNEMITE", {
        name = "MAGNEMITE",
        dex = 118,

        types = {
            "ELECTRIC",
        },

        baseStats = {
            hp = 25,
            attack = 35,
            defense = 70,
            speed = 45,
            special = 95,
        },

        catchRate = 190,
        baseExp = 89,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
        },

        learnset = {
            { level = 6, move = "THUNDERSHOCK" },
            { level = 11, move = "SONICBOOM" },
            { level = 16, move = "SUPERSONIC" },
            { level = 21, move = "THUNDER_WAVE" },
            { level = 33, move = "SWIFT" },
            { level = 39, move = "SCREECH" },
        },

        evolutions = {
            { method = "LEVEL", level = 20, species = "MAGNETITE" },
        },

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "REST",
            "THUNDER_WAVE",
            "SUBSTITUTE",
            "FLASH",
        },

        icon = "BALL",
        palette = "KEP_MAGNEMITE",
        cry = "MAGNEMITE",

        spriteFront = mod.assets:path("assets/pokemon/generated/magnemite/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/magnemite/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "MAGNET",
            heightFt = 1,
            heightIn = 0,
            weight = 130,
            text = "KEP_DEX_MAGNEMITE",
        },
    })
end
