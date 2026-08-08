local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local pikachuChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 7,
                        frequency = 174,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 14,
                        fade = 6,
                        frequency = 176,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1902,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1886,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 11,
                        fade = 5,
                        frequency = 1870,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1838,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 3, 0, 3, 0 } },
                    { squareNote = {
                        len = 4,
                        volume = 12,
                        fade = 7,
                        frequency = 111,
                    } },
                    { squareNote = {
                        len = 13,
                        volume = 11,
                        fade = 6,
                        frequency = 110,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 10,
                        fade = 5,
                        frequency = 1839,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 12,
                        fade = 4,
                        frequency = 1824,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 5,
                        frequency = 1807,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1776,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 14,
                        fade = 4,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 13,
                        fade = 6,
                        parameter = 26,
                    } },
                    { noiseNote = {
                        len = 5,
                        volume = 14,
                        fade = 4,
                        parameter = 42,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 11,
                        fade = 7,
                        parameter = 74,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 75,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("PIKACHU", {
        chip = pikachuChip.chip,
        pitch = 0,
        length = 1,
    })

    mod.content.palettes:register("KEP_PIKACHU", {
        { 255, 255, 255 },
        { 255, 255, 0 },
        { 231, 115, 0 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_PIKACHU", "Lives in forests,\nfeeding on nuts.\nIf provoked, it\nelectrocutes its\nattacker using\nTHUNDERSHOCK")

    mod.content.pokemon:patch("PIKACHU", {
        name = "PIKACHU",
        dex = 10,

        types = {
            "ELECTRIC",
        },

        baseStats = {
            hp = 35,
            attack = 55,
            defense = 30,
            speed = 90,
            special = 50,
        },

        catchRate = 190,
        baseExp = 82,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "THUNDERSHOCK",
            "GROWL",
        },

        learnset = {
            { level = 6, move = "TAIL_WHIP" },
            { level = 8, move = "THUNDER_WAVE" },
            { level = 11, move = "QUICK_ATTACK" },
            { level = 15, move = "DOUBLE_TEAM" },
            { level = 20, move = "SLAM" },
            { level = 26, move = "THUNDERBOLT" },
            { level = 33, move = "AGILITY" },
            { level = 41, move = "THUNDER" },
            { level = 50, move = "LIGHT_SCREEN" },
        },

        evolutions = {
            { method = "ITEM", item = "THUNDER_STONE", species = "RAICHU" },
        },

        tmhm = {
            "MEGA_PUNCH",
            "MEGA_KICK",
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
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
        palette = "KEP_PIKACHU",
        cry = "PIKACHU",

        spriteFront = mod.assets:path("assets/pokemon/generated/pikachu/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/pikachu/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "MOUSE",
            heightFt = 1,
            heightIn = 4,
            weight = 130,
            text = "KEP_DEX_PIKACHU",
        },
    })
end
