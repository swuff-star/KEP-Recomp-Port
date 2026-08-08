local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local nidoran_mChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 3, 3, 1, 1 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 3,
                        frequency = 1816,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 14,
                        fade = 5,
                        frequency = 1944,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 9,
                        fade = 1,
                        frequency = 1880,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 2, 2, 0, 0 } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 3,
                        frequency = 1800,
                    } },
                    { squareNote = {
                        len = 16,
                        volume = 12,
                        fade = 5,
                        frequency = 1928,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        frequency = 1864,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 4,
                program = {
                    { noiseNote = {
                        len = 4,
                        volume = 10,
                        fade = 1,
                        parameter = 28,
                    } },
                    { noiseNote = {
                        len = 15,
                        volume = 9,
                        fade = 4,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 8,
                        fade = 1,
                        parameter = 28,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("NIDORAN_M", {
        chip = nidoran_mChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_NIDORAN_M", {
        { 255, 255, 255 },
        { 206, 123, 255 },
        { 156, 0, 181 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_NIDORAN_M", "When listening to\ndistant sounds, it\nflaps its ears\nlike wings. Its\nhorn secretes a\npowerful venom")

    mod.content.pokemon:patch("NIDORAN_M", {
        name = "NIDORAN♂",
        dex = 51,

        types = {
            "POISON",
        },

        baseStats = {
            hp = 46,
            attack = 57,
            defense = 40,
            speed = 50,
            special = 40,
        },

        catchRate = 235,
        baseExp = 60,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "LEER",
            "TACKLE",
        },

        learnset = {
            { level = 8, move = "HORN_ATTACK" },
            { level = 12, move = "DOUBLE_KICK" },
            { level = 17, move = "POISON_STING" },
            { level = 23, move = "FOCUS_ENERGY" },
            { level = 30, move = "FURY_ATTACK" },
            { level = 38, move = "HORN_DRILL" },
        },

        evolutions = {
            { method = "LEVEL", level = 16, species = "NIDORINO" },
        },

        tmhm = {
            "TOXIC",
            "HORN_DRILL",
            "BODY_SLAM",
            "TAKE_DOWN",
            "DOUBLE_EDGE",
            "BLIZZARD",
            "RAGE",
            "THUNDERBOLT",
            "THUNDER",
            "MIMIC",
            "DOUBLE_TEAM",
            "REFLECT",
            "BIDE",
            "SKULL_BASH",
            "REST",
            "SUBSTITUTE",
        },

        icon = "MON",
        palette = "KEP_NIDORAN_M",
        cry = "NIDORAN_M",

        spriteFront = mod.assets:path("assets/pokemon/generated/nidoran_m/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/nidoran_m/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "POISON PIN",
            heightFt = 1,
            heightIn = 8,
            weight = 200,
            text = "KEP_DEX_NIDORAN_M",
        },
    })
end
