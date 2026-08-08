local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local porygon2Chip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { duty = 1 },
                    { squareNote = {
                        len = 10,
                        volume = 6,
                        fade = 0,
                        frequency = 1884,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 0,
                        frequency = 1892,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 0,
                        frequency = 1899,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 0,
                        frequency = 1904,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 1,
                        frequency = 1899,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 0, 1 } },
                    { squareNote = {
                        len = 10,
                        volume = 6,
                        fade = 0,
                        frequency = 1995,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 0,
                        frequency = 2003,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 0,
                        frequency = 2010,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 14,
                        fade = 0,
                        frequency = 2015,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 1,
                        frequency = 2010,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 5,
                        volume = 2,
                        fade = -1,
                        parameter = 115,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 3,
                        fade = -1,
                        parameter = 116,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 4,
                        fade = -1,
                        parameter = 117,
                    } },
                    { noiseNote = {
                        len = 3,
                        volume = 5,
                        fade = -1,
                        parameter = 116,
                    } },
                    { noiseNote = {
                        len = 8,
                        volume = 4,
                        fade = 1,
                        parameter = 115,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("PORYGON2", {
        chip = porygon2Chip.chip,
        pitch = 0,
        length = 160,
    })

    mod.content.palettes:register("KEP_PORYGON2", {
        { 255, 255, 255 },
        { 247, 140, 90 },
        { 90, 41, 115 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PORYGON2", "It was upgraded to\nfunction in space.\nPORYGON2 possesses\nAI, which allows\nit to learn and\ndevelop itself")

    mod.content.pokemon:register("PORYGON2", {
        id = "PORYGON2",
        name = "PORYGON2",
        dex = 223,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 85,
            attack = 80,
            defense = 90,
            speed = 60,
            special = 95,
        },

        catchRate = 45,
        baseExp = 180,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "SHARPEN",
            "CONVERSION",
        },

        learnset = {
            { level = 23, move = "PSYBEAM" },
            { level = 28, move = "RECOVER" },
            { level = 35, move = "AGILITY" },
            { level = 42, move = "TRI_ATTACK" },
            { level = 45, move = "DEFENSE_CURL" },
        },

        evolutions = {
            { method = "ITEM", item = "DUBIOUS_DISC", species = "PORYGONZ" },
        },

        tmhm = {
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "PSYCHIC_M",
            "TELEPORT",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "PSYWAVE",
            "TRI_ATTACK",
            "SUBSTITUTE",
            "FLASH",
        },

        icon = "BALL",
        palette = "KEP_PORYGON2",
        cry = "PORYGON2",

        spriteFront = mod.assets:path("assets/pokemon/generated/porygon2/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/porygon2/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "VIRTUAL",
            heightFt = 2,
            heightIn = 0,
            weight = 720,
            text = "KEP_DEX_PORYGON2",
        },
    })
end
