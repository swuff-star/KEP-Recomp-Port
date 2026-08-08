local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local slowbro_gChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 4,
                        volume = 15,
                        fade = 4,
                        frequency = 1601,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 13,
                        fade = 6,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 15,
                        fade = 4,
                        frequency = 1817,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1818,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 4,
                        frequency = 1408,
                    } },
                    { squareNote = {
                        len = 15,
                        volume = 14,
                        fade = 6,
                        frequency = 1760,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 5,
                        frequency = 1752,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1756,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 6,
                        volume = 12,
                        fade = 4,
                        parameter = 70,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 10,
                        fade = 5,
                        parameter = 68,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 69,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        parameter = 68,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("SLOWBRO_G", {
        chip = slowbro_gChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_SLOWBRO_G", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SLOWBRO_G", "The DISTURBAN that\nbit SLOWBRO has\nmade it poisonous.\nDISTURBAN's tongue\ncan be squeezed\nto spit poison")

    mod.content.pokemon:register("SLOWBRO_G", {
        id = "SLOWBRO_G",
        name = "SLOWBRO",
        dex = 147,

        types = {
            "POISON",
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 95,
            attack = 100,
            defense = 95,
            speed = 30,
            special = 70,
        },

        catchRate = 75,
        baseExp = 164,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "CONFUSION",
            "DISABLE",
            "HEADBUTT",
        },

        learnset = {
            { level = 10, move = "BIDE" },
            { level = 18, move = "DISABLE" },
            { level = 22, move = "HEADBUTT" },
            { level = 27, move = "GROWL" },
            { level = 33, move = "ACID" },
            { level = 37, move = "WITHDRAW" },
            { level = 44, move = "AMNESIA" },
            { level = 49, move = "SLUDGE" },
            { level = 55, move = "PSYCHIC_M" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BUBBLEBEAM",
            "WATER_GUN",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "PAY_DAY",
            "SUBMISSION",
            "COUNTER",
            "SEISMIC_TOSS",
            "RAGE",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "FIRE_BLAST",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "SURF",
            "STRENGTH",
            "FLASH",
        },

        icon = "MON",
        palette = "KEP_SLOWBRO_G",
        cry = "SLOWBRO_G",

        spriteFront = mod.assets:path("assets/pokemon/generated/slowbro_g/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/slowbro_g/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "HERMITCRAB",
            heightFt = 5,
            heightIn = 3,
            weight = 1550,
            text = "KEP_DEX_SLOWBRO_G",
        },
    })
end
