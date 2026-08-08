local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local magnetiteChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 6,
                        frequency = 146,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 6,
                        frequency = 147,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 6,
                        frequency = 146,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 145,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 147,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 146,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 6,
                        frequency = 145,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 144,
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
                        frequency = 122,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 3,
                        frequency = 120,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 12,
                        fade = 4,
                        frequency = 116,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 120,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 122,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 118,
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
                        parameter = 45,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 15,
                        fade = 7,
                        parameter = 61,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 45,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 29,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        parameter = 13,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("MAGNETITE", {
        chip = magnetiteChip.chip,
        pitch = 0,
        length = 144,
    })

    mod.content.palettes:register("KEP_MAGNETITE", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MAGNETITE", "Occasionally, it\nattracts so much\nmetal to itself\nthat it loses its\nability to stay\nlevitating")

    mod.content.pokemon:register("MAGNETITE", {
        id = "MAGNETITE",
        name = "MAGNETITE",
        dex = 119,

        types = {
            "ELECTRIC",
        },

        baseStats = {
            hp = 30,
            attack = 40,
            defense = 75,
            speed = 50,
            special = 100,
        },

        catchRate = 90,
        baseExp = 118,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "THUNDERSHOCK",
        },

        learnset = {
            { level = 6, move = "THUNDERSHOCK" },
            { level = 11, move = "SONICBOOM" },
            { level = 16, move = "SUPERSONIC" },
            { level = 24, move = "THUNDER_WAVE" },
            { level = 36, move = "SWIFT" },
            { level = 42, move = "SCREECH" },
        },

        evolutions = {
            { method = "LEVEL", level = 30, species = "MAGNETON" },
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
        palette = "KEP_MAGNETITE",
        cry = "MAGNETITE",

        spriteFront = mod.assets:path("assets/pokemon/generated/magnetite/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/magnetite/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "MAGNET",
            heightFt = 2,
            heightIn = 4,
            weight = 400,
            text = "KEP_DEX_MAGNETITE",
        },
    })
end
