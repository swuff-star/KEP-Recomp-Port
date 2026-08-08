local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local magnetonChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 6,
                        frequency = 1,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 6,
                        frequency = 2,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 6,
                        frequency = 1,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 6,
                        frequency = 2,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 1,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 6,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 2047,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 0, 1, 0 } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 2025,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 3,
                        frequency = 2023,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 12,
                        fade = 4,
                        frequency = 2019,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 2023,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 2025,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 2021,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 14,
                        volume = 1,
                        fade = -1,
                        parameter = 156,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 15,
                        fade = 7,
                        parameter = 172,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 156,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 140,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        parameter = 124,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("MAGNETON", {
        chip = magnetonChip.chip,
        pitch = 0,
        length = 192,
    })

    mod.content.palettes:register("KEP_MAGNETON", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_MAGNETON", "A linked cluster\nof MAGNEMITE. It\ndischarges high-\nvoltage magnetic\nrays that harm\nman-made devices")

    mod.content.pokemon:patch("MAGNETON", {
        name = "MAGNETON",
        dex = 120,

        types = {
            "ELECTRIC",
        },

        baseStats = {
            hp = 50,
            attack = 60,
            defense = 95,
            speed = 70,
            special = 120,
        },

        catchRate = 60,
        baseExp = 161,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "TACKLE",
            "THUNDERSHOCK",
            "SONICBOOM",
        },

        learnset = {
            { level = 6, move = "THUNDERSHOCK" },
            { level = 11, move = "SONICBOOM" },
            { level = 16, move = "SUPERSONIC" },
            { level = 24, move = "THUNDER_WAVE" },
            { level = 38, move = "SWIFT" },
            { level = 45, move = "SCREECH" },
        },

        evolutions = {
            { method = "ITEM", item = "THUNDER_STONE", species = "MAGNEZONE" },
        },

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
        palette = "KEP_MAGNETON",
        cry = "MAGNETON",

        spriteFront = mod.assets:path("assets/pokemon/generated/magneton/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/magneton/back.png"),
        frontSize = 6,

        dexEntry = {
            kind = "MAGNET",
            heightFt = 3,
            heightIn = 3,
            weight = 1320,
            text = "KEP_DEX_MAGNETON",
        },
    })
end
