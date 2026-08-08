local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local scytherChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 1920,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 6,
                        frequency = 1952,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 2,
                        frequency = 1856,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 7,
                        frequency = 1875,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 1906,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        frequency = 1809,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 14,
                        volume = 15,
                        fade = 6,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 6,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        parameter = 76,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("SCYTHER", {
        chip = scytherChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_SCYTHER", {
        { 255, 255, 255 },
        { 140, 255, 90 },
        { 8, 181, 49 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SCYTHER", "Few specimens have\never been caught.\nWhile capable of\nflight using its\nwings, it rarely\nseems to do this")

    mod.content.pokemon:patch("SCYTHER", {
        name = "SCYTHER",
        dex = 196,

        types = {
            "BUG",
            "FLYING",
        },

        baseStats = {
            hp = 70,
            attack = 110,
            defense = 80,
            speed = 105,
            special = 55,
        },

        catchRate = 45,
        baseExp = 187,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "QUICK_ATTACK",
        },

        learnset = {
            { level = 17, move = "LEER" },
            { level = 20, move = "FOCUS_ENERGY" },
            { level = 24, move = "DOUBLE_TEAM" },
            { level = 29, move = "SLASH" },
            { level = 32, move = "WING_ATTACK" },
            { level = 35, move = "SWORDS_DANCE" },
            { level = 42, move = "AGILITY" },
        },

        evolutions = {
            { method = "ITEM", item = "BLK_AUGURITE", species = "KLEAVOR" },
            { method = "ITEM", item = "METAL_COAT", species = "SCIZOR" },
            { method = "LEVEL", level = 41, species = "SCIZOR" },
        },

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "CUT",
        },

        icon = "BUG",
        palette = "KEP_SCYTHER",
        cry = "SCYTHER",

        spriteFront = mod.assets:path("assets/pokemon/generated/scyther/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/scyther/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "MANTIS",
            heightFt = 4,
            heightIn = 11,
            weight = 1230,
            text = "KEP_DEX_SCYTHER",
        },
    })
end
