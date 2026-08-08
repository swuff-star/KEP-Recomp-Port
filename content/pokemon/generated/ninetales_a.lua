local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local ninetales_aChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 0, 0 } },
                    { squareNote = {
                        len = 16,
                        volume = 15,
                        fade = 7,
                        frequency = 1800,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 14,
                        fade = 6,
                        frequency = 1804,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 13,
                        fade = 7,
                        frequency = 1816,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 5,
                        frequency = 1816,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 12,
                        fade = 4,
                        frequency = 1808,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 13,
                        fade = 3,
                        frequency = 1784,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 13,
                        fade = 3,
                        frequency = 1768,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 12,
                        fade = 1,
                        frequency = 1736,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 0, 0, 1, 1 } },
                    { squareNote = {
                        len = 16,
                        volume = 11,
                        fade = 7,
                        frequency = 1737,
                    } },
                    { squareNote = {
                        len = 11,
                        volume = 9,
                        fade = 6,
                        frequency = 1738,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 10,
                        fade = 7,
                        frequency = 1753,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 10,
                        fade = 5,
                        frequency = 1753,
                    } },
                    { squareNote = {
                        len = 7,
                        volume = 9,
                        fade = 4,
                        frequency = 1743,
                    } },
                    { squareNote = {
                        len = 6,
                        volume = 10,
                        fade = 3,
                        frequency = 1721,
                    } },
                    { squareNote = {
                        len = 5,
                        volume = 9,
                        fade = 3,
                        frequency = 1706,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 1673,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 16,
                        volume = 14,
                        fade = 4,
                        parameter = 196,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 7,
                        parameter = 212,
                    } },
                    { noiseNote = {
                        len = 11,
                        volume = 12,
                        fade = 7,
                        parameter = 196,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 11,
                        fade = 7,
                        parameter = 212,
                    } },
                    { noiseNote = {
                        len = 16,
                        volume = 10,
                        fade = 2,
                        parameter = 228,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:register("NINETALES_A", {
        chip = ninetales_aChip.chip,
        pitch = 0,
        length = 96,
    })

    mod.content.palettes:register("KEP_NINETALES_A", {
        { 255, 255, 255 },
        { 132, 214, 255 },
        { 0, 140, 255 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_NINETALES_A", "Once thought to\nbe a deity, it\nappears to lost\nmountain climbers\nto guide them away\nfrom its home")

    mod.content.pokemon:register("NINETALES_A", {
        id = "NINETALES_A",
        name = "NINETALES",
        dex = 77,

        types = {
            "ICE",
            "FAIRY",
        },

        baseStats = {
            hp = 73,
            attack = 67,
            defense = 75,
            speed = 109,
            special = 100,
        },

        catchRate = 75,
        baseExp = 178,
        growthRate = "MEDIUM_FAST",

        level1Moves = {
            "FAIRY_WIND",
            "TAIL_WHIP",
            "QUICK_ATTACK",
            "POWDER_SNOW",
        },

        learnset = {
            { level = 7, move = "ROAR" },
            { level = 12, move = "CONFUSE_RAY" },
            { level = 23, move = "FEINT_ATTACK" },
            { level = 28, move = "AURORA_BEAM" },
            { level = 36, move = "ICE_BEAM" },
            { level = 38, move = "DAZZLE_GLEAM" },
            { level = 42, move = "BLIZZARD" },
            { level = 46, move = "CHARM" },
        },

        evolutions = {},

        tmhm = {
            "TOXIC",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "ICE_BEAM",
            "BLIZZARD",
            "HYPER_BEAM",
            "RAGE",
            "DIG",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SWIFT",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
        },

        icon = "QUADRUPED",
        palette = "KEP_NINETALES_A",
        cry = "NINETALES_A",

        spriteFront = mod.assets:path("assets/pokemon/generated/ninetales_a/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/ninetales_a/back.png"),
        frontSize = 7,

        dexEntry = {
            kind = "FOX",
            heightFt = 3,
            heightIn = 7,
            weight = 440,
            text = "KEP_DEX_NINETALES_A",
        },
    })
end
