local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local venonatChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 7,
                        frequency = 1924,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 1928,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 13,
                        fade = 5,
                        frequency = 1940,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 1956,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 1988,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 2020,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 2, 2 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 7,
                        frequency = 1861,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 11,
                        fade = 6,
                        frequency = 1862,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1877,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1893,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 3,
                        frequency = 1925,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1958,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        parameter = 128,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        parameter = 144,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 128,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 7,
                        parameter = 144,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 14,
                        fade = 2,
                        parameter = 128,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 112,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("VENONAT", {
        chip = venonatChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_VENONAT", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_VENONAT", "Its eyes serve as\nradars, emitting\nbright beams of\nlight. This lets\nVENONAT remain\nactive at night")

    mod.content.pokemon:patch("VENONAT", {
        name = "VENONAT",
        dex = 94,

        types = {
            "BUG",
            "POISON",
        },

        baseStats = {
            hp = 60,
            attack = 55,
            defense = 50,
            speed = 45,
            special = 40,
        },

        catchRate = 190,
        baseExp = 75,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "DISABLE",
        },

        learnset = {
            { level = 11, move = "SUPERSONIC" },
            { level = 19, move = "CONFUSION" },
            { level = 22, move = "POISONPOWDER" },
            { level = 27, move = "LEECH_LIFE" },
            { level = 30, move = "STUN_SPORE" },
            { level = 35, move = "PSYBEAM" },
            { level = 38, move = "SLEEP_POWDER" },
            { level = 43, move = "PSYCHIC_M" },
        },

        evolutions = {
            { method = "LEVEL", level = 31, species = "VENOMOTH" },
        },

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "RAGE",
            "MEGA_DRAIN",
            "SOLARBEAM",
            "PSYCHIC_M",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "REST",
            "PSYWAVE",
            "SUBSTITUTE",
            "FLASH",
        },

        icon = "BUG",
        palette = "KEP_VENONAT",
        cry = "VENONAT",

        spriteFront = mod.assets:path("assets/pokemon/generated/venonat/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/venonat/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "INSECT",
            heightFt = 3,
            heightIn = 3,
            weight = 660,
            text = "KEP_DEX_VENONAT",
        },
    })
end
