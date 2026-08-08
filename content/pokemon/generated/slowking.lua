local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local slowkingChip = ChipAsm.sfx({
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

    mod.content.cries:register("SLOWKING", {
        chip = slowkingChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_SLOWKING", {
        { 255, 255, 255 },
        { 255, 123, 148 },
        { 255, 0, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SLOWKING", "DISTURBAN's venom\nstimulated its\nbrain, making it\nincredibly smart.\nIt still remains\nforgetful, though")

    mod.content.pokemon:register("SLOWKING", {
        id = "SLOWKING",
        name = "SLOWKING",
        dex = 148,

        types = {
            "WATER",
            "PSYCHIC_TYPE",
        },

        baseStats = {
            hp = 95,
            attack = 75,
            defense = 80,
            speed = 30,
            special = 100,
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
            { level = 33, move = "WATER_GUN" },
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
        palette = "KEP_SLOWKING",
        cry = "SLOWKING",

        spriteFront = mod.assets:path("assets/pokemon/generated/slowking/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/slowking/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "ROYAL",
            heightFt = 6,
            heightIn = 7,
            weight = 1750,
            text = "KEP_DEX_SLOWKING",
        },
    })
end
