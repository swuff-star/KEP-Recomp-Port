local ChipAsm = require("src.audio.ChipAsm")

return function(mod)

    local kleavorChip = ChipAsm.sfx({
    channels = {
                {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },

                    { squareNote = {
                        len = 15,
                        volume = 13,
                        fade = 7,
                        frequency = 1408,
                    } },

                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 6,
                        frequency = 1440,
                    } },

                    { squareNote = {
                        len = 15,
                        volume = 13,
                        fade = 2,
                        frequency = 1344,
                    } },

                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },

                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 7,
                        frequency = 1363,
                    } },

                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 6,
                        frequency = 1394,
                    } },

                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 2,
                        frequency = 1297,
                    } },

                    { ret = true },
                },
            },

            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 13,
                        volume = 15,
                        fade = 6,
                        parameter = 76,
                    } },

                    { noiseNote = {
                        len = 4,
                        volume = 14,
                        fade = 6,
                        parameter = 60,
                    } },

                    { noiseNote = {
                        len = 15,
                        volume = 15,
                        fade = 2,
                        parameter = 76,
                    } },

                    { ret = true },
                },
            },
        },
    })


    mod.content.cries:register("KLEAVOR", {
        chip = kleavorChip.chip,
        pitch = 0,
        length = 255,
    })

    mod.content.text:register(
        "_KleavorDexEntry",

        "Capable of cutting\n"
        .. "down a fully-grown\n"
        .. "tree in one slice,\n"
        .. "thanks to the two\n"
        .. "sharp stone axes\n"
        .. "that it wields"
    )


    mod.content.pokemon:register("KLEAVOR", {
        id = "KLEAVOR",
        name = "KLEAVOR",

        dex = 153,

        types = {
            "BUG",
            "ROCK",
        },

        baseStats = {
            hp = 70,
            attack = 135,
            defense = 95,
            speed = 85,
            special = 45,
        },

        catchRate = 45,
        baseExp = 204,

        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "QUICK_ATTACK",
            "ROCK_THROW",
        },

        learnset = {
            { level = 17, move = "LEER" },
            { level = 20, move = "FOCUS_ENERGY" },
            { level = 24, move = "DOUBLE_TEAM" },
            { level = 29, move = "SLASH" },
            { level = 35, move = "SWORDS_DANCE" },
            { level = 42, move = "AGILITY" },
            { level = 50, move = "ROCK_SLIDE" },
        },

        evolutions = {},

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
            "ROCK_SLIDE",
            "SUBSTITUTE",
            "CUT",
        },

        spriteFront = mod.assets:path("assets/kleavor_front.png"),

        spriteBack = mod.assets:path("assets/kleavor_back.png"),

        frontSize = 7,

        dexEntry = {
            kind = "AXE",
            heightFt = 5,
            heightIn = 11,
            weight = 1960,
            text = "_KleavorDexEntry",
        },
    })
end