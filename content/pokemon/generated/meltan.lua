local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local meltanChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 1, 3, 2 } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1951,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1950,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 0,
                        frequency = 1949,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1952,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1953,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 0,
                        frequency = 1954,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 3, 0, 2 } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1952,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1951,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 2,
                        fade = 0,
                        frequency = 1950,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1954,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 1956,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 4,
                        fade = 0,
                        frequency = 1958,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 5,
                        volume = 8,
                        fade = 0,
                        parameter = 243,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 8,
                        fade = 0,
                        parameter = 242,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 3,
                        fade = 0,
                        parameter = 241,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 8,
                        fade = 0,
                        parameter = 243,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 8,
                        fade = 0,
                        parameter = 242,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 8,
                        fade = 7,
                        parameter = 242,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("MELTAN", {
        chip = meltanChip.chip,
        pitch = 0,
        length = 95,
    })

    mod.content.palettes:register("KEP_MELTAN", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MELTAN", "Typically living\nin a group, this\nPOKéMON absorbs\nparticles of iron\nthat it finds\nin the subsoil")

    mod.content.pokemon:register("MELTAN", {
        id = "MELTAN",
        name = "MELTAN",
        dex = 250,

        types = {
            "STEEL",
        },

        baseStats = {
            hp = 46,
            attack = 65,
            defense = 55,
            speed = 34,
            special = 35,
        },

        catchRate = 45,
        baseExp = 131,
        growthRate = "SLOW",

        level1Moves = {
            "THUNDERSHOCK",
            "HARDEN",
        },

        learnset = {
            { level = 8, move = "TAIL_WHIP" },
            { level = 16, move = "HEADBUTT" },
            { level = 24, move = "THUNDER_WAVE" },
            { level = 32, move = "ACID_ARMOR" },
            { level = 40, move = "IRON_HEAD" },
        },

        evolutions = {
            { method = "ITEM", item = "CANDY_JAR", species = "MELMETAL" },
        },

        tmhm = {
            "TOXIC",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "REST",
            "THUNDER_WAVE",
            "SUBSTITUTE",
        },

        icon = "BALL",
        palette = "KEP_MELTAN",
        cry = "MELTAN",

        spriteFront = mod.assets:path("assets/pokemon/generated/meltan/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/meltan/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "HEX NUT",
            heightFt = 0,
            heightIn = 8,
            weight = 180,
            text = "KEP_DEX_MELTAN",
        },
    })
end
