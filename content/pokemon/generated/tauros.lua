local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local taurosChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 0,
                        frequency = 1814,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 0,
                        frequency = 1809,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 4,
                        frequency = 1825,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1809,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 11,
                        fade = 2,
                        frequency = 1585,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 1,
                        frequency = 1589,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 2, 0, 2 } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 0,
                        frequency = 1748,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 10,
                        fade = 0,
                        frequency = 1746,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 4,
                        frequency = 1763,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1746,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 8,
                        fade = 2,
                        frequency = 1522,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 6,
                        fade = 1,
                        frequency = 1529,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 7,
                        volume = 14,
                        fade = 6,
                        parameter = 93,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 13,
                        fade = 6,
                        parameter = 77,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 5,
                        parameter = 91,
                    } },
                    { noiseNote = {
                        len = 2,
                        volume = 11,
                        fade = 2,
                        parameter = 108,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 12,
                        fade = 2,
                        parameter = 93,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("TAUROS", {
        chip = taurosChip.chip,
        pitch = 0,
        length = 64,
    })

    mod.content.palettes:register("KEP_TAUROS", {
        { 255, 255, 255 },
        { 239, 148, 82 },
        { 140, 74, 41 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_TAUROS", "If provoked by an\nenemy, it charges\nfuriously while\nwhipping its body\nwith its three\nlong tails")

    mod.content.pokemon:patch("TAUROS", {
        name = "TAUROS",
        dex = 203,

        types = {
            "NORMAL",
        },

        baseStats = {
            hp = 75,
            attack = 100,
            defense = 95,
            speed = 110,
            special = 70,
        },

        catchRate = 45,
        baseExp = 211,
        growthRate = "SLOW",

        level1Moves = {
            "TACKLE",
            "TAIL_WHIP",
        },

        learnset = {
            { level = 21, move = "STOMP" },
            { level = 28, move = "LEER" },
            { level = 35, move = "BODY_SLAM" },
            { level = 44, move = "RAGE" },
            { level = 51, move = "TAKE_DOWN" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "EARTHQUAKE",
            "FISSURE",
            "MIMIC",
            "DOUBLE_TEAM",
            "BIDE",
            "FIRE_BLAST",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
            "STRENGTH",
        },

        icon = "QUADRUPED",
        palette = "KEP_TAUROS",
        cry = "TAUROS",

        spriteFront = mod.assets:path("assets/pokemon/generated/tauros/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/tauros/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "WILD BULL",
            heightFt = 4,
            heightIn = 7,
            weight = 1950,
            text = "KEP_DEX_TAUROS",
        },
    })
end
