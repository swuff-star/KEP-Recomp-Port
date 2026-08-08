local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local sandy_shocksChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 8,
                        volume = 13,
                        fade = 6,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 6,
                        frequency = 1,
                    } },
                    { squareNote = {
                        len = 10,
                        volume = 13,
                        fade = 6,
                        frequency = 0,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 6,
                        frequency = 2047,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
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
                        len = 7,
                        volume = 11,
                        fade = 6,
                        frequency = 2047,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 2046,
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
                        frequency = 2024,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 3,
                        frequency = 2022,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 12,
                        fade = 4,
                        frequency = 2018,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 4,
                        frequency = 2022,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 3,
                        frequency = 2024,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        frequency = 2020,
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
                        parameter = 155,
                    } },
                    { noiseNote = {
                        len = 14,
                        volume = 15,
                        fade = 7,
                        parameter = 171,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 155,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 12,
                        fade = 4,
                        parameter = 139,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 11,
                        fade = 3,
                        parameter = 123,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("SANDY_SHOCKS", {
        chip = sandy_shocksChip.chip,
        pitch = 0,
        length = 221,
    })

    mod.content.palettes:register("KEP_SANDY_SHOCKS", {
        { 255, 255, 255 },
        { 148, 148, 156 },
        { 82, 82, 82 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_SANDY_SHOCKS", "Shares many traits\nwith an ancient\nMAGNETON described\nin a mysterious\nbook, but little\nelse is known")

    mod.content.pokemon:register("SANDY_SHOCKS", {
        id = "SANDY_SHOCKS",
        name = "SANDY SHOX",
        dex = 235,

        types = {
            "ELECTRIC",
            "GROUND",
        },

        baseStats = {
            hp = 85,
            attack = 81,
            defense = 97,
            speed = 101,
            special = 121,
        },

        catchRate = 30,
        baseExp = 210,
        growthRate = "SLIGHTLY_SLOW",

        level1Moves = {
            "TACKLE",
            "SONICBOOM",
            "THUNDERSHOCK",
            "MAGNET_BOMB",
        },

        learnset = {
            { level = 56, move = "SUPERSONIC" },
            { level = 63, move = "SCREECH" },
            { level = 70, move = "EARTHQUAKE" },
        },

        evolutions = {},

        tmhm = {
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "HYPER_BEAM",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "EARTHQUAKE",
            "FISSURE",
            "DIG",
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
        palette = "KEP_SANDY_SHOCKS",
        cry = "SANDY_SHOCKS",

        spriteFront = mod.assets:path("assets/pokemon/generated/sandy_shocks/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/sandy_shocks/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "PARADOX",
            heightFt = 7,
            heightIn = 7,
            weight = 1320,
            text = "KEP_DEX_SANDY_SHOCKS",
        },
    })
end
