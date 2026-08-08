local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local metapodChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 6,
                        frequency = 173,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 6,
                        frequency = 174,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 6,
                        frequency = 173,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 172,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 174,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 173,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 6,
                        frequency = 172,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 171,
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
                        frequency = 149,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 3,
                        frequency = 147,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 12,
                        fade = 4,
                        frequency = 143,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 147,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 149,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 145,
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
                        parameter = 72,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 15,
                        fade = 7,
                        parameter = 88,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 72,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 56,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        parameter = 40,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("METAPOD", {
        chip = metapodChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_METAPOD", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_METAPOD", "Although encased\nin a sturdy shell,\nthe body inside is\nweak and soft. It\ncannot withstand\na harsh attack")

    mod.content.pokemon:patch("METAPOD", {
        name = "METAPOD",
        dex = 35,

        types = {
            "BUG",
        },

        baseStats = {
            hp = 50,
            attack = 20,
            defense = 55,
            speed = 30,
            special = 25,
        },

        catchRate = 120,
        baseExp = 72,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "HARDEN",
        },

        learnset = {
            { level = 7, move = "HARDEN" },
            { level = 8, move = "HARDEN" },
            { level = 9, move = "HARDEN" },
        },

        evolutions = {
            { method = "LEVEL", level = 10, species = "BUTTERFREE" },
        },

        tmhm = {},

        icon = "BUG",
        palette = "KEP_METAPOD",
        cry = "METAPOD",

        spriteFront = mod.assets:path("assets/pokemon/generated/metapod/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/metapod/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "COCOON",
            heightFt = 2,
            heightIn = 4,
            weight = 220,
            text = "KEP_DEX_METAPOD",
        },
    })
end
