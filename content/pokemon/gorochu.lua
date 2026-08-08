local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    
    local gorochuChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },

                    { squareNote = {
                        len = 15,
                        volume = 14,
                        fade = 0,
                        frequency = 1920,
                    } },

                    { squareNote = {
                        len = 15,
                        volume = 15,
                        fade = 0,
                        frequency = 1924,
                    } },

                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 3,
                        frequency = 1504,
                    } },

                    { squareNote = {
                        len = 15,
                        volume = 12,
                        fade = 4,
                        frequency = 1536,
                    } },

                    { squareNote = {
                        len = 10,
                        volume = 6,
                        fade = -4,
                        frequency = 1920,
                    } },

                    { squareNote = {
                        len = 8,
                        volume = 7,
                        fade = 1,
                        frequency = 1924,
                    } },

                    { ret = true },
                },
            },

            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },

                    { squareNote = {
                        len = 15,
                        volume = 10,
                        fade = 0,
                        frequency = 1857,
                    } },

                    { squareNote = {
                        len = 15,
                        volume = 11,
                        fade = 0,
                        frequency = 1859,
                    } },

                    { squareNote = {
                        len = 15,
                        volume = 9,
                        fade = 3,
                        frequency = 1457,
                    } },

                    { squareNote = {
                        len = 15,
                        volume = 9,
                        fade = 4,
                        frequency = 1473,
                    } },

                    { squareNote = {
                        len = 10,
                        volume = 4,
                        fade = -4,
                        frequency = 1857,
                    } },

                    { squareNote = {
                        len = 8,
                        volume = 3,
                        fade = 1,
                        frequency = 1862,
                    } },

                    { ret = true },
                },
            },

            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 2,
                        volume = 15,
                        fade = 2,
                        parameter = 76,
                    } },

                    { noiseNote = {
                        len = 6,
                        volume = 14,
                        fade = 0,
                        parameter = 58,
                    } },

                    { noiseNote = {
                        len = 15,
                        volume = 13,
                        fade = 0,
                        parameter = 58,
                    } },

                    { noiseNote = {
                        len = 8,
                        volume = 13,
                        fade = 0,
                        parameter = 44,
                    } },

                    { noiseNote = {
                        len = 6,
                        volume = 14,
                        fade = 6,
                        parameter = 76,
                    } },

                    { noiseNote = {
                        len = 12,
                        volume = 7,
                        fade = -5,
                        parameter = 76,
                    } },

                    { noiseNote = {
                        len = 15,
                        volume = 13,
                        fade = 3,
                        parameter = 76,
                    } },

                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("GOROCHU", {
        chip = gorochuChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.text:register("_GorochuDexEntry",
        "Energizes itself\n"
        .. "by drawing in\n"
        .. "lightning. It\n"
        .. "boasts incredible\n"
        .. "electrical and\n"
        .. "physical strength"
    )

    mod.content.pokemon:register("GOROCHU", {
        id = "GOROCHU",
        name = "GOROCHU",
        
        dex = 152,

        types = {
            "ELECTRIC",
        },

        baseStats = {
            hp = 70,
            attack = 100,
            defense = 65,
            speed = 110,
            special = 100,
        },

        catchRate = 45,
        baseExp = 193,

        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "THUNDERSHOCK",
            "GROWL",
            "THUNDER_WAVE",
        },

        learnset = {
            { level = 53, move = "SAND_ATTACK" },
            { level = 57, move = "FOCUS_ENERGY" },
            { level = 60, move = "LEER" },
            { level = 65, move = "HORN_DRILL" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "PAY_DAY",
            "SUBMISSION",
            "COUNTER",
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

        spriteFront = mod.assets:path("assets/gorochu_front.png"),
        spriteBack = mod.assets:path("assets/gorochu_back.png"),

        frontSize = 7,

        cry = "GOROCHU",

        dexEntry = {
            kind = "VOLTAGE",
            heightFt = 5,
            heightIn = 11,
            weight = 1960,
            text = "_GorochuDexEntry",
        },
    })
end