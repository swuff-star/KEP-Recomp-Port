local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local pinsirChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        frequency = 1936,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 5,
                        frequency = 1984,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 2008,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 11,
                        volume = 12,
                        fade = 4,
                        frequency = 1905,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 6,
                        frequency = 1954,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1975,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 76,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 12,
                        fade = 4,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        parameter = 44,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("PINSIR", {
        chip = pinsirChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_PINSIR", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PINSIR", "Once it grips its\nprey, it will not\nlet go until it\nis torn apart. It\nappears to like\nthe color green")

    mod.content.pokemon:patch("PINSIR", {
        name = "PINSIR",
        dex = 199,

        types = {
            "BUG",
        },

        baseStats = {
            hp = 65,
            attack = 125,
            defense = 100,
            speed = 85,
            special = 55,
        },

        catchRate = 45,
        baseExp = 200,
        growthRate = "SLOW",

        level1Moves = {
            "VICEGRIP",
        },

        learnset = {
            { level = 21, move = "BIND" },
            { level = 25, move = "SEISMIC_TOSS" },
            { level = 30, move = "GUILLOTINE" },
            { level = 36, move = "FOCUS_ENERGY" },
            { level = 43, move = "HARDEN" },
            { level = 49, move = "SLASH" },
            { level = 54, move = "SWORDS_DANCE" },
        },

        evolutions = {
            { method = "ITEM", item = "METAL_COAT", species = "TRICULES" },
            { method = "LEVEL", level = 42, species = "TRICULES" },
        },

        tmhm = {
            "SWORDS_DANCE",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "SUBMISSION",
            "SEISMIC_TOSS",
            "RAGE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "REST",
            "SUBSTITUTE",
            "CUT",
            "STRENGTH",
        },

        icon = "BUG",
        palette = "KEP_PINSIR",
        cry = "PINSIR",

        spriteFront = mod.assets:path("assets/pokemon/generated/pinsir/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/pinsir/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "STAGBEETLE",
            heightFt = 4,
            heightIn = 11,
            weight = 1210,
            text = "KEP_DEX_PINSIR",
        },
    })
end
