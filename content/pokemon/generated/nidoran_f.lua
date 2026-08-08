local ChipAsm = require("src.audio.ChipAsm")

return function(mod)
    local nidoran_fChip = ChipAsm.sfx({
        channels = {
            {
                hw = 1,
                program = {
                    { dutyPattern = { 2, 2, 0, 0 } },
                    { squareNote = {
                        len = 5,
                        volume = 15,
                        fade = 3,
                        frequency = 1536,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 5,
                        frequency = 1888,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 14,
                        fade = 2,
                        frequency = 1824,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 13,
                        fade = 1,
                        frequency = 1808,
                    } },
                    { ret = true },
                },
            },
            {
                hw = 2,
                program = {
                    { dutyPattern = { 1, 1, 2, 2 } },
                    { squareNote = {
                        len = 6,
                        volume = 11,
                        fade = 3,
                        frequency = 1777,
                    } },
                    { squareNote = {
                        len = 8,
                        volume = 12,
                        fade = 5,
                        frequency = 1874,
                    } },
                    { squareNote = {
                        len = 4,
                        volume = 10,
                        fade = 2,
                        frequency = 1809,
                    } },
                    { squareNote = {
                        len = 9,
                        volume = 11,
                        fade = 1,
                        frequency = 1537,
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
                        fade = 2,
                        parameter = 60,
                    } },
                    { noiseNote = {
                        len = 13,
                        volume = 9,
                        fade = 4,
                        parameter = 44,
                    } },
                    { noiseNote = {
                        len = 4,
                        volume = 8,
                        fade = 2,
                        parameter = 28,
                    } },
                    { noiseNote = {
                        len = 9,
                        volume = 7,
                        fade = 1,
                        parameter = 44,
                    } },
                    { ret = true },
                },
            },
        },
    })

    mod.content.cries:override("NIDORAN_F", {
        chip = nidoran_fChip.chip,
        pitch = 0,
        length = 128,
    })

    mod.content.palettes:register("KEP_NIDORAN_F", {
        { 255, 255, 255 },
        { 132, 148, 255 },
        { 0, 8, 206 },
        { 24, 24, 24 },
    })

    mod.content.text:register("KEP_DEX_NIDORAN_F", "Breeds in spring\nevery year, laying\ntwo eggs at the\nend of summer. The\nbabies are only\n4 inches long")

    mod.content.pokemon:patch("NIDORAN_F", {
        name = "NIDORAN♀",
        dex = 48,

        types = {
            "POISON",
        },

        baseStats = {
            hp = 55,
            attack = 47,
            defense = 52,
            speed = 41,
            special = 40,
        },

        catchRate = 235,
        baseExp = 59,
        growthRate = "MEDIUM_SLOW",

        level1Moves = {
            "GROWL",
            "TACKLE",
        },

        learnset = {
            { level = 8, move = "SCRATCH" },
            { level = 12, move = "DOUBLE_KICK" },
            { level = 17, move = "POISON_STING" },
            { level = 23, move = "TAIL_WHIP" },
            { level = 30, move = "BITE" },
            { level = 38, move = "FURY_SWIPES" },
            { level = 46, move = "TAKE_DOWN" },
        },

        evolutions = {
            { method = "LEVEL", level = 16, species = "NIDORINA" },
        },

        tmhm = {
            "TOXIC",
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
        palette = "KEP_NIDORAN_F",
        cry = "NIDORAN_F",

        spriteFront = mod.assets:path("assets/pokemon/generated/nidoran_f/front.png"),
        spriteBack = mod.assets:path("assets/pokemon/generated/nidoran_f/back.png"),
        frontSize = 5,

        dexEntry = {
            kind = "POISON PIN",
            heightFt = 1,
            heightIn = 4,
            weight = 150,
            text = "KEP_DEX_NIDORAN_F",
        },
    })
end
