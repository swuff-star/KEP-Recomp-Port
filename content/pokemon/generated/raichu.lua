local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local raichuChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 142,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        frequency = 145,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 4,
                        frequency = 142,
                    } },
                    { dutyPattern = { 2, 2, 1, 1 } },
                    { squareNote = {
                        len = 11,
                        volume = 15,
                        fade = 6,
                        frequency = 198,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 14,
                        fade = 3,
                        frequency = 197,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 2,
                        frequency = 198,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 3,
                        volume = 0,
                        fade = 0,
                        frequency = 238,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 7,
                        frequency = 1935,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 6,
                        frequency = 1936,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 7,
                        fade = 4,
                        frequency = 1935,
                    } },
                    { dutyPattern = { 1, 1, 3, 3 } },
                    { squareNote = {
                        len = 11,
                        volume = 7,
                        fade = 6,
                        frequency = 1988,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 8,
                        fade = 3,
                        frequency = 1991,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 1989,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 3,
                        volume = 15,
                        fade = 2,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 14,
                        fade = 4,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 12,
                        fade = 5,
                        parameter = 41,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 4,
                        parameter = 43,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 6,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 7,
                        volume = 13,
                        fade = 4,
                        parameter = 43,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        parameter = 41,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("RAICHU", {
        chip = raichuChip.chip,
        pitch = 0,
        length = 8,
    })

    mod.content.palettes:register("KEP_RAICHU", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_RAICHU", "A THUNDERBOLT from\nRAICHU contains\nsuch high voltage\nthat a TRAMPEL's\nthick skin can't\nwithstand it")

    mod.content.pokemon:patch("RAICHU", {
        name = "RAICHU",
        dex = 11,

        types = {
            "ELECTRIC",
        },

        baseStats = {
            hp = 60,
            attack = 90,
            defense = 55,
            speed = 100,
            special = 90,
        },

        catchRate = 75,
        baseExp = 122,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "THUNDERSHOCK",
            "GROWL",
            "THUNDER_WAVE",
        },

        learnset = {},

        evolutions = {
            { method = "TRADE", species = "GOROCHU" },
        },

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "PAY_DAY",
            "SUBMISSION",
            "SEISMIC_TOSS",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "THUNDER_WAVE",
            "SUBSTITUTE",
            "FLY",
            "SURF",
            "FLASH",
        },

        icon = {
            image = mod.assets:path("assets/icons/generated/pikachu.png"),
            frames = 2,
        },
        palette = "KEP_RAICHU",
        cry = "RAICHU",

        spriteFront = mod.assets:path("assets/pokemon/generated/raichu/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/raichu/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "MOUSE",
            heightFt = 2,
            heightIn = 7,
            weight = 660,
            text = "KEP_DEX_RAICHU",
        },
    })
end
