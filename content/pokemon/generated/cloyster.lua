local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local cloysterChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 1, 1, 0, 0 } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 5,
                        frequency = 1775,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1807,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 2,
                        frequency = 1839,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1871,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1903,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1871,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1839,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1807,
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
                        frequency = 1696,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 13,
                        fade = 2,
                        frequency = 1729,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 11,
                        fade = 2,
                        frequency = 1792,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 2,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1728,
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
                        parameter = 187,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        parameter = 171,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 13,
                        fade = 4,
                        parameter = 171,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        parameter = 155,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        parameter = 171,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        parameter = 155,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("CLOYSTER", {
        chip = cloysterChip.chip,
        pitch = 0,
        length = 224,
    })

    mod.content.palettes:register("KEP_CLOYSTER", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_CLOYSTER", "Its hard shell is\nextremely durable.\nEven napalm bombs\nhave failed to\nreveal what's\ninside its shell")

    mod.content.pokemon:patch("CLOYSTER", {
        name = "CLOYSTER",
        dex = 183,

        types = {
            "WATER",
            "ICE",
        },

        baseStats = {
            hp = 50,
            attack = 95,
            defense = 180,
            speed = 70,
            special = 85,
        },

        catchRate = 60,
        baseExp = 203,
        growthRate = "SLOW",

        level1Moves = {
            "WITHDRAW",
            "SUPERSONIC",
            "CLAMP",
            "AURORA_BEAM",
        },

        learnset = {
            { level = 50, move = "SPIKE_CANNON" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "RAGE",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SELFDESTRUCT",
            "SWIFT",
            "REST",
            "EXPLOSION",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "SURF",
        },

        icon = "HELIX",
        palette = "KEP_CLOYSTER",
        cry = "CLOYSTER",

        spriteFront = mod.assets:path("assets/pokemon/generated/cloyster/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/cloyster/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "BIVALVE",
            heightFt = 4,
            heightIn = 11,
            weight = 2920,
            text = "KEP_DEX_CLOYSTER",
        },
    })
end
