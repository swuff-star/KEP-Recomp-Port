local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local magnezoneChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 1, 3, 2 } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1968,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        frequency = 1712,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1968,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        frequency = 1712,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1968,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        frequency = 1712,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 1,
                        frequency = 1968,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        frequency = 1712,
                    } },
                    { duty = 0 },
                    { squareNote = {
                        len = 10,
                        volume = 7,
                        fade = 0,
                        frequency = 496,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 7,
                        fade = 0,
                        frequency = 448,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1712,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1712,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1712,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 12,
                        fade = 2,
                        frequency = 1712,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 3, 0, 2 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 400,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 0,
                        frequency = 400,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 432,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 0,
                        frequency = 544,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 15,
                        fade = 0,
                        frequency = 496,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 448,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 448,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 448,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 2,
                        frequency = 448,
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
                        parameter = 253,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 13,
                        fade = 0,
                        parameter = 248,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 12,
                        fade = 0,
                        parameter = 249,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 9,
                        fade = 0,
                        parameter = 202,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 9,
                        fade = 0,
                        parameter = 204,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        parameter = 235,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 2,
                        parameter = 235,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("MAGNEZONE", {
        chip = magnezoneChip.chip,
        pitch = 0,
        length = 213,
    })

    mod.content.palettes:register("KEP_MAGNEZONE", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MAGNEZONE", "Constantly emits\nstrong magnetism\nfrom its three\nunits. Its antenna\nreceives strange\nradio waves")

    mod.content.pokemon:register("MAGNEZONE", {
        id = "MAGNEZONE",
        name = "MAGNEZONE",
        dex = 121,

        types = {
            "ELECTRIC",
            "STEEL",
        },

        baseStats = {
            hp = 70,
            attack = 70,
            defense = 115,
            speed = 60,
            special = 130,
        },

        catchRate = 30,
        baseExp = 211,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "THUNDERSHOCK",
            "SONICBOOM",
        },

        learnset = {
            { level = 31, move = "METAL_SOUND" },
            { level = 41, move = "MAGNET_BOMB" },
            { level = 50, move = "IRON_HEAD" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
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
        palette = "KEP_MAGNEZONE",
        cry = "MAGNEZONE",

        spriteFront = mod.assets:path("assets/pokemon/generated/magnezone/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/magnezone/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "MAGNETAREA",
            heightFt = 3,
            heightIn = 11,
            weight = 3970,
            text = "KEP_DEX_MAGNEZONE",
        },
    })
end
