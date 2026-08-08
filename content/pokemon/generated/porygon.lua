local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local porygonChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 7,
                        volume = 15,
                        fade = 4,
                        frequency = 2026,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 3,
                        frequency = 2010,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 4,
                        frequency = 2026,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 3,
                        frequency = 2034,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 2042,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 3, 1, 3 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 1980,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        frequency = 1966,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 3,
                        frequency = 1980,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 3,
                        frequency = 1995,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 2012,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 6,
                        parameter = 214,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 12,
                        fade = 6,
                        parameter = 230,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 11,
                        fade = 6,
                        parameter = 214,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        parameter = 198,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("PORYGON", {
        chip = porygonChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.palettes:register("KEP_PORYGON", {
        { 255, 255, 255 },
        { 247, 140, 90 },
        { 90, 41, 115 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PORYGON", "It was created in\n1995 by SILPH CO.\nCases of illegal\nprize PORYGON are\ncurrently under\ninvestigation")

    mod.content.pokemon:patch("PORYGON", {
        name = "PORYGON",
        dex = 222,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 65,
            attack = 60,
            defense = 70,
            speed = 40,
            special = 75,
        },

        catchRate = 45,
        baseExp = 130,
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
        },

        evolutions = {
            { method = "ITEM", item = "UP_GRADE", species = "PORYGON2" },
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
        palette = "KEP_PORYGON",
        cry = "PORYGON",

        spriteFront = mod.assets:path("assets/pokemon/generated/porygon/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/porygon/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "VIRTUAL",
            heightFt = 2,
            heightIn = 7,
            weight = 800,
            text = "KEP_DEX_PORYGON",
        },
    })
end
