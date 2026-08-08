local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local slowking_gChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 0, 3, 0, 3 } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 1,
                        frequency = 1620,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 1,
                        frequency = 1588,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 1,
                        frequency = 1556,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1876,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1860,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 15,
                        fade = 2,
                        frequency = 1844,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1620,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 1620,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 15,
                        fade = 2,
                        frequency = 1620,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 3, 0, 2 } },
                    { squareNote = {
                        len = 10,
                        volume = 14,
                        fade = 1,
                        frequency = 1828,
                    } },
                    { squareNote = {
                        len = 12,
                        volume = 14,
                        fade = 2,
                        frequency = 1540,
                    } },
                    { squareNote = {
                        len = 14,
                        volume = 14,
                        fade = 1,
                        frequency = 1828,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 1,
                        frequency = 1572,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        frequency = 1540,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 2,
                        frequency = 1540,
                    } },
                    { squareNote = {
                        len = 2,
                        volume = 14,
                        fade = 2,
                        frequency = 1540,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 8,
                        fade = -2,
                        parameter = 97,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 80,
                    } },
                    { noiseNote = {
                        len = 6,
                        volume = 9,
                        fade = -2,
                        parameter = 97,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 81,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 79,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 81,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 9,
                        fade = -2,
                        parameter = 99,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 11,
                        fade = 2,
                        parameter = 115,
                    } },
                    { noiseNote = {
                        len = 1,
                        volume = 11,
                        fade = 2,
                        parameter = 115,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("SLOWKING_G", {
        chip = slowking_gChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_SLOWKING_G", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SLOWKING_G", "The DISTURBAN that\nbit SLOWKING has\nassumed control.\nMumbling eerie\nspells, it makes\nstrange potions")

    mod.content.pokemon:register("SLOWKING_G", {
        id = "SLOWKING_G",
        name = "SLOWKING",
        dex = 149,

        types = {
            "POISON",
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 95,
            attack = 65,
            defense = 80,
            speed = 30,
            special = 110,
        },

        catchRate = 70,
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
            { level = 44, move = "AMNESIA" },
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
        palette = "KEP_SLOWKING_G",
        cry = "SLOWKING_G",

        spriteFront = mod.assets:path("assets/pokemon/generated/slowking_g/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/slowking_g/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "HEXPERT",
            heightFt = 5,
            heightIn = 11,
            weight = 1750,
            text = "KEP_DEX_SLOWKING_G",
        },
    })
end
